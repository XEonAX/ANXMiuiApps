package com.miui.screenrecorder.service;

import android.annotation.TargetApi;
import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.MediaStore.Video.Media;
import android.text.TextUtils;
import android.widget.Toast;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.StableScreenRecorder;
import com.miui.screenrecorder.activity.ScreenRecorderHomeActivity;
import com.miui.screenrecorder.compat.IntentCompat;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.miui.screenrecorder.controller.MiuiScreenRecorderController;
import com.miui.screenrecorder.controller.RecorderSwitchWindowManager;
import com.miui.screenrecorder.data.MiuiScreenRecorderGlobalData;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MediaFileUtils;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.MiStatKey;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.miui.screenrecorder.view.RecorderSwitchWindow.OnClickListener;
import com.miui.screenrecorder.view.RecorderThumbnailWindow;
import com.xiaomi.stat.MiStat.Param;
import com.xiaomi.stat.MiStatParams;
import java.lang.ref.WeakReference;
import java.util.Locale;

public class RecorderService extends Service {
    public static final int FREQUENTLY_RECORD_TOAST = 2;
    public static final int HIDE_HARD_KEY_WINDOW = 1;
    private static final String IS_START_IMMEDIATELY = "is_start_immediately";
    public static final int START_FAIL = 4;
    private static final String TAG = "RecorderService";
    private static final int UPDATE_VIDEO_INFO = 3;
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!"android.intent.action.BATTERY_CHANGED".equals(action)) {
                LogUtil.i(RecorderService.TAG, "Receive Broadcast action is " + action);
            }
            if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(action) && ScreenRecorderUtils.isBluetoothHeadsetConnected() && ScreenRecorderUtils.isUseInnerSound() && !ScreenRecorderUtils.isSupportA2dpInner()) {
                Toast.makeText(context, context.getString(R.string.warning_recording_when_a2dp_connect), 0).show();
                LogUtil.w(RecorderService.TAG, "recording: this device cannot innerrecord when bluetooth a2dp connected");
            }
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                if (MiuiScreenRecorderGlobalData.getInstance().getRecording() && RecorderService.this.mController.isStopWhileScreenLock()) {
                    RecorderService.this.stopRecorder();
                }
            } else if ("android.intent.action.BATTERY_CHANGED".equals(action)) {
                int level = intent.getIntExtra(Param.LEVEL, 0);
                RecorderService.this.mCurrentBattery = (level * 100) / intent.getIntExtra("scale", 100);
                if (RecorderService.this.mCurrentBattery <= 3 && MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                    RecorderService.this.stopRecorder();
                    RecorderService.this.mController.showWarning(3);
                }
            } else if ("android.intent.action.DEVICE_STORAGE_LOW".equals(action)) {
                if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                    LogUtil.i(RecorderService.TAG, "Now device storage is low, we stop recorder");
                    RecorderService.this.stopRecorder();
                    RecorderService.this.mController.showWarning(4);
                }
            } else if (ScreenRecorderConfig.TOUCH_MODE_CHANGE_BROADCAST.equals(action)) {
                if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                    RecorderService.this.mController.showTouch(intent.getBooleanExtra(ScreenRecorderConfig.IS_SHOW_TOUCH, false));
                }
            } else if (ScreenRecorderUtils.ACTION_SCREEN_RECORDER_TRACK_KEYEVENT.equals(action)) {
                if (MiuiScreenRecorderGlobalData.getInstance().getRecording() && RecorderService.this.mController.getIsShowHardKey()) {
                    int keycode = intent.getIntExtra("keycode", -1);
                    boolean isdown = intent.getBooleanExtra("isdown", false);
                    Message msg = new Message();
                    msg.what = 1;
                    RecorderService.this.mHandler.removeMessages(1);
                    if (isdown) {
                        RecorderService.this.mController.showKeyEventUI(keycode);
                    } else {
                        RecorderService.this.mHandler.sendMessageDelayed(msg, 500);
                    }
                }
            } else if (ScreenRecorderConfig.TOUCH_MODE_HARDKEY_BROADCAST.equals(action)) {
                if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                    RecorderService.this.mController.showHardKeyTouch(intent.getBooleanExtra(ScreenRecorderConfig.IS_SHOW_TOUCH, false));
                }
            } else if (ScreenRecorderConfig.RECORD_FAIL_BROADCAST.equals(action)) {
                RecorderService.this.stopRecorderWithoutThumbnail();
                MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_CREATE, MiStatKey.EVENT_RECORDER_FAIL);
                RecorderService.this.mController.showWarning(7);
            } else if (ScreenRecorderConfig.RECORD_SUCCESS_BROADCAST.equals(action)) {
                MiStatParams miStatParams = new MiStatParams();
                String filePath = intent.getStringExtra(ScreenRecorderConfig.FILE_PATH);
                if (TextUtils.isEmpty(filePath)) {
                    LogUtil.e(RecorderService.TAG, "filePath is null in RECORD_SUCCESS_BROADCAST!");
                    return;
                }
                String displayName = intent.getStringExtra(ScreenRecorderConfig.DISPLAY_NAME);
                long duration = intent.getLongExtra(ScreenRecorderConfig.DURATION, -1);
                if (duration >= 0) {
                    miStatParams.putLong(MiStatKey.PARAM_RECORD_DURATION, duration);
                }
                LogUtil.i(RecorderService.TAG, "STOP_RECORD_MSG filePath=" + filePath + " displayName=" + displayName + "duration " + duration);
                if (!TextUtils.isEmpty(displayName)) {
                    miStatParams.putString(MiStatKey.PARAM_TARGET_APP, displayName);
                    RecorderService.this.sendUpdateVideoMessage(filePath, displayName, duration);
                }
                MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_CREATE, MiStatKey.EVENT_RECORDER_SUCCESS, miStatParams);
                MediaFileUtils.saveToCloud(RecorderService.this.getApplicationContext(), filePath);
                if (intent.getBooleanExtra(ScreenRecorderConfig.IS_OVER_MAX_SIZE, false)) {
                    RecorderService.this.mController.showWarning(8);
                    RecorderService.this.stopRecorder();
                }
            } else if (IntentCompat.ACTION_USER_SWITCHED.equals(action)) {
                Toast.makeText(ScreenRecorderApplication.getContext(), ScreenRecorderApplication.getContext().getString(R.string.stop_by_second_space), 1).show();
                RecorderService.this.stopRecorderWithoutThumbnail();
                RecorderService.this.stopSelf();
            } else if ("android.intent.action.ACTION_SHUTDOWN".equals(action)) {
                LogUtil.i(RecorderService.TAG, "Will shut down, stop to record screen");
                RecorderService.this.stopRecorderWithoutThumbnail();
            }
        }
    };
    private Builder mBuilder;
    private CountDownTimer mClickTimer = new CountDownTimer(500, 500) {
        public void onTick(long millisUntilFinished) {
        }

        public void onFinish() {
            RecorderService.this.mIsSleep = false;
        }
    };
    private MiuiScreenRecorderController mController;
    private int mCurrentBattery = -1;
    private Handler mHandler;
    private boolean mIsSleep = false;
    private Locale mLocale;
    private NotificationManager mNotificationManager;
    OnClickListener mRecorderWindowListener = new OnClickListener() {
        public void onRightBtnClick() {
            if (!MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                MiuiScreenRecorderGlobalData.getInstance().setRecording(false);
                RecorderService.this.stopSelf();
                Toast.makeText(RecorderService.this.getApplicationContext(), RecorderService.this.getApplicationContext().getString(R.string.quit_recording), 0).show();
                if (ScreenRecorderConfig.getConfig().getIsGoHome()) {
                    Intent intent = new Intent(RecorderService.this.getApplicationContext(), ScreenRecorderHomeActivity.class);
                    intent.setFlags(335544320);
                    RecorderService.this.startActivity(intent);
                }
            }
        }

        public void onLeftBtnClick() {
            if (RecorderService.this.mIsSleep) {
                RecorderService.this.mHandler.removeMessages(2);
                RecorderService.this.mHandler.sendEmptyMessageDelayed(2, 300);
            } else if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                RecorderService.this.stopRecorder();
            } else {
                RecorderService.this.mController.preStart(RecorderService.this.mCurrentBattery);
            }
            RecorderService.this.mIsSleep = true;
            RecorderService.this.mClickTimer.cancel();
            RecorderService.this.mClickTimer.start();
        }
    };

    private static class ServiceHandler extends Handler {
        private WeakReference<RecorderService> mContextRef;

        /* synthetic */ ServiceHandler(RecorderService x0, AnonymousClass1 x1) {
            this(x0);
        }

        private ServiceHandler(RecorderService service) {
            this.mContextRef = new WeakReference(service);
        }

        public void handleMessage(Message msg) {
            if (this.mContextRef != null) {
                RecorderService service = (RecorderService) this.mContextRef.get();
                if (service != null) {
                    switch (msg.what) {
                        case 1:
                            service.mController.hideKeyCodeWindow();
                            break;
                        case 2:
                            service.mHandler.removeMessages(2);
                            Toast.makeText(service.getApplicationContext(), service.getApplicationContext().getString(R.string.frequently_click_toast), 0).show();
                            break;
                        case 3:
                            Bundle bundle = msg.getData();
                            if (bundle != null) {
                                service.updateVideoDetailThread(bundle.getString(ScreenRecorderConfig.DISPLAY_NAME), bundle.getLong(ScreenRecorderConfig.DURATION), bundle.getString(ScreenRecorderConfig.FILE_PATH));
                                break;
                            }
                            break;
                        case 4:
                            service.mHandler.removeMessages(4);
                            Toast.makeText(service.getApplicationContext(), service.getApplicationContext().getString(R.string.cannot_record), 0).show();
                            break;
                    }
                    super.handleMessage(msg);
                }
            }
        }
    }

    private static class UpdateVideoDetailTask extends AsyncTask<Void, Void, Boolean> {
        private WeakReference<RecorderService> mContextRef;
        private String mDisplayName;
        private long mDuration;
        private String mFilePath;

        /* synthetic */ UpdateVideoDetailTask(RecorderService x0, String x1, long x2, String x3, AnonymousClass1 x4) {
            this(x0, x1, x2, x3);
        }

        private UpdateVideoDetailTask(RecorderService contextRef, String displayName, long duration, String filePath) {
            this.mContextRef = new WeakReference(contextRef);
            this.mDisplayName = displayName;
            this.mDuration = duration;
            this.mFilePath = filePath;
        }

        protected Boolean doInBackground(Void... params) {
            try {
                if (this.mContextRef != null) {
                    RecorderService service = (RecorderService) this.mContextRef.get();
                    if (service != null) {
                        service.updateVideoDetail(this.mDisplayName, this.mDuration, this.mFilePath);
                    }
                }
            } catch (Exception e) {
                LogUtil.e(RecorderService.TAG, "Error when updating video detail, " + e);
            }
            return Boolean.valueOf(true);
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.mHandler = new ServiceHandler(this, null);
        MiuiScreenRecorderGlobalData.getInstance().setRecording(false);
        this.mLocale = ScreenRecorderUtils.getLocaleFromConfig(getResources().getConfiguration());
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.BATTERY_CHANGED");
        filter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        filter.addAction(ScreenRecorderConfig.TOUCH_MODE_CHANGE_BROADCAST);
        filter.addAction(ScreenRecorderUtils.ACTION_SCREEN_RECORDER_TRACK_KEYEVENT);
        filter.addAction(ScreenRecorderConfig.TOUCH_MODE_HARDKEY_BROADCAST);
        filter.addAction(ScreenRecorderConfig.RECORD_SUCCESS_BROADCAST);
        filter.addAction(ScreenRecorderConfig.RECORD_FAIL_BROADCAST);
        filter.addAction(IntentCompat.ACTION_USER_SWITCHED);
        filter.addAction("android.intent.action.ACTION_SHUTDOWN");
        filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        filter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        registerReceiver(this.mBroadcastReceiver, filter);
        runAsForeground();
        this.mController = new MiuiScreenRecorderController(this, StableScreenRecorder.getInstance(), this.mHandler);
        RecorderSwitchWindowManager.getInstance(getApplicationContext()).createRecorderSwitchWindow(this.mRecorderWindowListener);
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent == null) {
            LogUtil.w(TAG, "intent is null, failed to init RecorderService");
        } else if (intent.getBooleanExtra(IS_START_IMMEDIATELY, false) && !MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
            MiuiScreenRecorderGlobalData.getInstance().setRecording(true);
            RecorderSwitchWindowManager.getInstance(getApplicationContext()).notifyViewChanged(2, true);
            this.mController.preStart(this.mCurrentBattery);
        }
        return 2;
    }

    @TargetApi(3)
    private void updateVideoDetailThread(String displayName, long duration, String filePath) {
        new UpdateVideoDetailTask(this, displayName, duration, filePath, null).execute(new Void[0]);
    }

    private void updateVideoDetail(String displayName, long duration, String filePath) {
        if (!TextUtils.isEmpty(displayName)) {
            ContentResolver resolver = getContentResolver();
            Uri uri = Media.EXTERNAL_CONTENT_URI;
            ContentValues values = new ContentValues();
            values.put("_display_name", displayName);
            if ("hermes".equals(Build.DEVICE) && duration > 0) {
                values.put(ScreenRecorderConfig.DURATION, Long.valueOf(1000 * duration));
            }
            LogUtil.i(TAG, "updateVideoDetail duration=" + duration + "s  displayName=" + displayName + "　filePath=" + filePath + "  update result=" + resolver.update(uri, values, "_data=?", new String[]{filePath}));
        }
    }

    private void showThumbnailWindow(String filePath) {
        new RecorderThumbnailWindow(this, filePath).showWindow();
    }

    public void onDestroy() {
        RecorderSwitchWindowManager.getInstance(getApplicationContext()).removeRecorderSwitchWindow();
        stopRecorderWithoutThumbnail();
        this.mController.onDestroy();
        this.mHandler.removeMessages(2);
        this.mClickTimer.cancel();
        super.onDestroy();
        unregisterReceiver(this.mBroadcastReceiver);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Locale locale = ScreenRecorderUtils.getLocaleFromConfig(newConfig);
        if (!this.mLocale.equals(locale)) {
            this.mLocale = locale;
            if (this.mNotificationManager != null && this.mBuilder != null) {
                this.mBuilder.setContentTitle(getString(R.string.app_name)).setContentText(getString(R.string.app_notification_info));
                this.mNotificationManager.notify(110, this.mBuilder.build());
            }
        }
    }

    private void runAsForeground() {
        Builder builder;
        if (VERSION.SDK_INT >= 26) {
            builder = createNotificationBuilderAboveSDK26();
        } else {
            builder = createNotificationBuilderBelowSDK26();
        }
        startForeground(110, builder.build());
    }

    @TargetApi(26)
    private Builder createNotificationBuilderAboveSDK26() {
        String channelId = "110";
        NotificationChannel channel = new NotificationChannel(channelId, "screenrecorder", 3);
        channel.enableLights(true);
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        if (this.mNotificationManager != null) {
            this.mNotificationManager.createNotificationChannel(channel);
        }
        this.mBuilder = new Builder(this, channelId);
        this.mBuilder.setContentIntent(PendingIntent.getBroadcast(this, 0, new Intent(""), 0)).setContentTitle(getString(R.string.app_name)).setContentText(getString(R.string.app_notification_info)).setSmallIcon(R.drawable.notifi_small_icon).setOngoing(true).setWhen(0);
        return this.mBuilder;
    }

    private Builder createNotificationBuilderBelowSDK26() {
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        this.mBuilder = new Builder(getApplicationContext());
        this.mBuilder.setContentIntent(PendingIntent.getBroadcast(this, 0, new Intent(""), 0)).setContentTitle(getString(R.string.app_name)).setContentText(getString(R.string.app_notification_info)).setSmallIcon(R.drawable.notifi_small_icon).setDefaults(4).setOngoing(true).setWhen(0);
        return this.mBuilder;
    }

    private void stopRecorder() {
        stopRecorderWithoutThumbnail();
        String filePath = this.mController.getFilePath();
        if (!TextUtils.isEmpty(filePath)) {
            showThumbnailWindow(filePath);
        }
    }

    private void stopRecorderWithoutThumbnail() {
        if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
            MiuiScreenRecorderGlobalData.getInstance().setRecording(false);
            RecorderSwitchWindowManager.getInstance(getApplicationContext()).notifyViewChanged(1, false);
            this.mController.stopRecorder();
        }
    }

    private void sendUpdateVideoMessage(String newfilePath, String displayName, long duration) {
        Message msg = new Message();
        msg.what = 3;
        Bundle bundle = new Bundle();
        bundle.putString(ScreenRecorderConfig.DISPLAY_NAME, displayName);
        bundle.putLong(ScreenRecorderConfig.DURATION, duration);
        bundle.putString(ScreenRecorderConfig.FILE_PATH, newfilePath);
        msg.setData(bundle);
        this.mHandler.sendMessageDelayed(msg, 3000);
    }
}
