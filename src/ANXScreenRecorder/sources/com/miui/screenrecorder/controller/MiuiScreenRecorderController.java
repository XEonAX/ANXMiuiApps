package com.miui.screenrecorder.controller;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.media.AudioSystem;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.Toast;
import com.miui.screenrecorder.BuildConfig;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorder;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.StableScreenRecorder;
import com.miui.screenrecorder.config.PhoneConfigInstance;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.miui.screenrecorder.data.KeyEvent;
import com.miui.screenrecorder.data.MiuiScreenRecorderGlobalData;
import com.miui.screenrecorder.tools.DisplayUtils;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MediaFileUtils;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.MiStatKey;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.miui.screenrecorder.view.ScreenRecordAlertDialog;
import com.miui.screenrecorder.view.ScreenRecorderHintWindow;

public class MiuiScreenRecorderController {
    public static final int BATTERY_ALERT_DIALOG = 1;
    public static final int BATTERY_NOT_ALLOWED = 5;
    private static final String EXTRA_MEDIA_PROJECTION = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION";
    public static final int LOW_BATTERY_ALERT = 3;
    public static final int LOW_MEMORY_ALERT = 4;
    public static final int MEMORY_ALERT_DIALOG = 2;
    public static final int MEMORY_NOT_ALLOWED = 6;
    public static final int RECORDING_FAILURE = 7;
    public static final int RECORDING_MAX_SIZE = 8;
    private static final String TAG = "ScreenRecorderController";
    private static final int TYPE_SCREEN_CAPTURE = 0;
    private ScreenRecordAlertDialog mAlertDialog;
    private Context mAppContext;
    private ScreenRecorderConfig mConfig;
    private ScreenRecorderHintWindow mHintWindow;
    private String mPath;
    private boolean mPreSystemTouches = false;
    private ScreenRecorder mScreenRecorder;
    private Handler mServiceHandler;

    public MiuiScreenRecorderController(Context context, ScreenRecorder screenRecorder, Handler handler) {
        this.mAppContext = context.getApplicationContext();
        this.mConfig = ScreenRecorderConfig.getConfig();
        this.mScreenRecorder = screenRecorder;
        this.mServiceHandler = handler;
    }

    public void preStart(int curBattery) {
        if (setScreenRecorderParams() && checkPreConditions(curBattery)) {
            if (ScreenRecorderUtils.isBluetoothHeadsetConnected() && ScreenRecorderUtils.isUseInnerSound() && !ScreenRecorderUtils.isSupportA2dpInner()) {
                Toast.makeText(this.mAppContext, this.mAppContext.getString(R.string.warning_recording_when_a2dp_connect), 0).show();
                LogUtil.w(TAG, "this device cannot innerrecord when bluetooth a2dp connected");
            }
            showHintAndStart(false);
        }
    }

    private void showHintAndStart(boolean isRefresh) {
        this.mPreSystemTouches = ScreenRecorderUtils.getShowTouchesOptions(this.mAppContext.getContentResolver());
        showTouch(this.mConfig.getIsShowTouch());
        showHardKeyTouch(this.mConfig.getIsShowHardKey());
        MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_CREATE, MiStatKey.EVENT_RECORDER_START);
        MiuiScreenRecorderGlobalData.getInstance().setRecording(true);
        RecorderSwitchWindowManager.getInstance(this.mAppContext).notifyViewChanged(2, isRefresh);
        if (TextUtils.isEmpty(this.mPath)) {
            this.mServiceHandler.sendEmptyMessage(4);
        } else {
            startRecord();
        }
    }

    private void startRecord() {
        MediaProjectionManager projectionManager = (MediaProjectionManager) this.mAppContext.getSystemService("media_projection");
        boolean isStartSuccess = false;
        if (projectionManager == null) {
            LogUtil.e(TAG, "start record fail, reason : projectionManager is null");
        } else {
            Intent intent = new Intent();
            try {
                int uid = this.mAppContext.getPackageManager().getApplicationInfo(BuildConfig.APPLICATION_ID, 0).uid;
                Class<?> smClazz = Class.forName("android.os.ServiceManager");
                IBinder binder = (IBinder) smClazz.getDeclaredMethod("getService", new Class[]{String.class}).invoke(smClazz.newInstance(), new Object[]{"media_projection"});
                Class<?> mpmsClazz = Class.forName("android.media.projection.IMediaProjectionManager$Stub");
                Object service = mpmsClazz.getDeclaredMethod("asInterface", new Class[]{IBinder.class}).invoke(mpmsClazz, new Object[]{binder});
                Object projection = service.getClass().getDeclaredMethod("createProjection", new Class[]{Integer.TYPE, String.class, Integer.TYPE, Boolean.TYPE}).invoke(service, new Object[]{Integer.valueOf(uid), BuildConfig.APPLICATION_ID, Integer.valueOf(0), Boolean.valueOf(false)});
                IBinder projectionBinder = (IBinder) Class.forName("android.media.projection.IMediaProjection$Stub$Proxy").getDeclaredMethod("asBinder", new Class[0]).invoke(projection, new Object[0]);
                Class.forName("android.content.Intent").getDeclaredMethod("putExtra", new Class[]{String.class, IBinder.class}).invoke(intent, new Object[]{EXTRA_MEDIA_PROJECTION, projectionBinder});
            } catch (Exception e) {
                LogUtil.e(TAG, "Error in startRecord", e);
            }
            MediaProjection mediaProjection = projectionManager.getMediaProjection(-1, intent);
            if (mediaProjection == null) {
                LogUtil.e(TAG, "MediaProjection is null.");
            } else {
                StableScreenRecorder.getInstance().start(mediaProjection);
                isStartSuccess = true;
            }
        }
        if (!isStartSuccess) {
            this.mServiceHandler.sendEmptyMessage(4);
        }
    }

    public void stopRecorder() {
        if (this.mScreenRecorder != null) {
            this.mScreenRecorder.stop();
        }
        ScreenRecorderUtils.writeShowTouchesOption(this.mAppContext.getContentResolver(), this.mPreSystemTouches);
        if (this.mHintWindow != null) {
            this.mHintWindow.hideView();
        }
        showHardKeyTouch(false);
    }

    public void onDestroy() {
        this.mScreenRecorder.onDestroy();
        if (this.mHintWindow != null) {
            this.mHintWindow.hideView();
        }
        showHardKeyTouch(false);
    }

    public String getFilePath() {
        return this.mPath;
    }

    private boolean checkPreConditions(int curBattery) {
        if (!ScreenRecorderUtils.checkBatteryEnough(curBattery, 3)) {
            LogUtil.w(TAG, "do not allow to start recording, reason = BATTERY_NOT_ALLOWED, current battery = " + curBattery);
            showWarning(5);
            return false;
        } else if (!ScreenRecorderUtils.checkMemoryEnough(ScreenRecorderUtils.MIN_MEMORY_ALLOW)) {
            LogUtil.w(TAG, "do not allow to start recording, reason = MEMORY_NOT_ALLOWED, min allow memory = " + ScreenRecorderUtils.MIN_MEMORY_ALLOW);
            showWarning(6);
            return false;
        } else if (!ScreenRecorderUtils.checkBatteryEnough(curBattery, 20)) {
            LogUtil.w(TAG, "do not allow to start recording, reason = MIN_BATTERY_REQUIRED, current battery = " + curBattery);
            showWarning(1);
            return false;
        } else if (ScreenRecorderUtils.checkMemoryEnough(ScreenRecorderUtils.MIN_MEMORY_REQUIRED)) {
            return true;
        } else {
            LogUtil.w(TAG, "do not allow to start recording, reason = MEMORY_ALERT_DIALOG, min memory = " + ScreenRecorderUtils.MIN_MEMORY_REQUIRED);
            showWarning(2);
            return false;
        }
    }

    private boolean setScreenRecorderParams() {
        this.mPath = MediaFileUtils.getSavePath();
        if (TextUtils.isEmpty(this.mPath)) {
            Toast.makeText(this.mAppContext, this.mAppContext.getString(R.string.cannot_record), 1).show();
            return false;
        }
        int orientation = this.mConfig.getOrientation();
        int bitrate = this.mConfig.getBitRate();
        int sound = this.mConfig.getSound();
        int frame = this.mConfig.getFrames();
        boolean isFixedFrame = this.mConfig.getIsFixedFrame();
        setResolution(orientation);
        this.mScreenRecorder.setFilePath(this.mPath);
        this.mScreenRecorder.setBitRate(bitrate);
        if (sound == Integer.parseInt(ScreenRecorderConfig.INNER_SOUND) && PhoneConfigInstance.INSTANCE.getInstance().getInnerStreamType() == 1) {
            sound = 3;
        }
        this.mScreenRecorder.setAudioSource(sound);
        this.mScreenRecorder.setFrameRate(frame);
        this.mScreenRecorder.setFixedFrame(isFixedFrame);
        LogUtil.d(TAG, "preStart, orientation " + orientation + ", bitrate = " + bitrate + ", sound " + "= " + sound + ", frame = " + frame + ", path = " + this.mPath);
        return true;
    }

    private void setResolution(int orientation) {
        if (orientation == 0) {
            int deviceOri = this.mAppContext.getResources().getConfiguration().orientation;
            LogUtil.d(TAG, "deviceOri " + deviceOri);
            if (deviceOri == 2) {
                orientation = 2;
            } else if (deviceOri == 1) {
                orientation = 1;
            }
        }
        String resolution = this.mConfig.getResolution();
        int pos = resolution.indexOf(ScreenRecorderConfig.RESOLUTION_SPLIT);
        if (pos > 0 && pos < resolution.length()) {
            int height = Integer.valueOf(resolution.substring(0, pos)).intValue();
            int width = Integer.valueOf(resolution.substring(pos + 1)).intValue();
            LogUtil.d(TAG, "setResolution, orientation = " + orientation + ", width = " + width + ", height = " + height);
            if (orientation == 2) {
                this.mScreenRecorder.setResolution(height, width);
            } else {
                this.mScreenRecorder.setResolution(width, height);
            }
        }
    }

    public boolean isStopWhileScreenLock() {
        return this.mConfig.getIsStopWhileLock();
    }

    public void showTouch(boolean isShowTouch) {
        ScreenRecorderUtils.writeShowTouchesOption(this.mAppContext.getContentResolver(), isShowTouch);
    }

    public void showHardKeyTouch(boolean isShow) {
        ScreenRecorderUtils.recorderKeyEvent(this.mAppContext, isShow);
    }

    public void showKeyEventUI(int keycode) {
        if (this.mHintWindow == null) {
            this.mHintWindow = ScreenRecorderHintWindow.getInstance(this.mAppContext);
        }
        String hintText = "";
        switch (keycode) {
            case 3:
                hintText = this.mAppContext.getString(R.string.hint_home);
                break;
            case 4:
                hintText = this.mAppContext.getString(R.string.hint_back);
                break;
            case 24:
                hintText = this.mAppContext.getString(R.string.hint_volume_up);
                break;
            case 25:
                hintText = this.mAppContext.getString(R.string.hint_volume_down);
                break;
            case KeyEvent.KEYCODE_POWER /*26*/:
                hintText = this.mAppContext.getString(R.string.hint_power);
                break;
            case KeyEvent.KEYCODE_MENU /*82*/:
            case KeyEvent.KEYCODE_APP_SWITCH /*187*/:
                hintText = this.mAppContext.getString(R.string.hint_menu);
                break;
        }
        if (!TextUtils.isEmpty(hintText)) {
            this.mHintWindow.showView(hintText);
        }
    }

    public void hideKeyCodeWindow() {
        if (this.mHintWindow != null) {
            this.mHintWindow.hideView();
        }
    }

    private void warningQuit(int type) {
        if (type == 2) {
            Intent intent = new Intent("miui.intent.action.GARBAGE_CLEANUP");
            if (ScreenRecorderUtils.isIntentAvailable(this.mAppContext.getApplicationContext(), intent)) {
                intent.setFlags(268435456);
                this.mAppContext.startActivity(intent);
            }
        }
    }

    public boolean getIsShowHardKey() {
        return this.mConfig != null && this.mConfig.getIsShowHardKey();
    }

    private void dialogDismiss() {
        if (this.mAlertDialog != null) {
            this.mAlertDialog.dismiss();
            this.mAlertDialog = null;
        }
    }

    public void showAlertDialog(String title, String message, String positiveBtnText, String negativeBtnText, String neutralBtnText, OnClickListener listener) {
        if (this.mAlertDialog == null) {
            int dialogTheme = 5;
            if (DisplayUtils.isNightMode(ScreenRecorderApplication.getContext())) {
                dialogTheme = 4;
            }
            this.mAlertDialog = new ScreenRecordAlertDialog(this.mAppContext, dialogTheme);
            this.mAlertDialog.getWindow().setType(2003);
            this.mAlertDialog.setCanceledOnTouchOutside(false);
            this.mAlertDialog.setCancelable(true);
        }
        this.mAlertDialog.setTitle(title);
        this.mAlertDialog.setMessage(message);
        this.mAlertDialog.setButton(-1, positiveBtnText, listener);
        this.mAlertDialog.setButton(-2, negativeBtnText, listener);
        this.mAlertDialog.setButton(-3, neutralBtnText, listener);
        this.mAlertDialog.show();
    }

    public void showWarning(final int type) {
        if (type == 1 || type == 2 || type == 3 || type == 4 || type == 5 || type == 6 || type == 7 || type == 8) {
            String title = null;
            String message = null;
            String positiveBtnText = null;
            String negativeBtnText = null;
            String neutralBtnText = null;
            if (type == 1) {
                title = this.mAppContext.getString(R.string.low_battery_title);
                message = this.mAppContext.getString(R.string.low_battery);
                negativeBtnText = this.mAppContext.getString(R.string.button_back);
                positiveBtnText = this.mAppContext.getString(R.string.button_goon_recorder);
            } else if (type == 2) {
                title = this.mAppContext.getString(R.string.low_memory_title);
                message = this.mAppContext.getString(R.string.low_memory);
                if (ScreenRecorderUtils.isGarbageCleanupAvailable(this.mAppContext)) {
                    negativeBtnText = this.mAppContext.getString(R.string.button_clear_storage);
                    positiveBtnText = this.mAppContext.getString(R.string.button_goon_recorder);
                } else {
                    negativeBtnText = this.mAppContext.getString(R.string.button_back);
                    positiveBtnText = this.mAppContext.getString(R.string.button_goon_recorder);
                }
            } else if (type == 3) {
                title = this.mAppContext.getString(R.string.auto_stop_title);
                message = this.mAppContext.getString(R.string.low_battery_warning);
                neutralBtnText = this.mAppContext.getString(R.string.button_confirm);
            } else if (type == 4) {
                title = this.mAppContext.getString(R.string.auto_stop_title);
                message = this.mAppContext.getString(R.string.low_momery_warning);
                neutralBtnText = this.mAppContext.getString(R.string.button_confirm);
            } else if (type == 5) {
                title = this.mAppContext.getString(R.string.low_battery_title);
                message = this.mAppContext.getString(R.string.battery_not_allowed);
                neutralBtnText = this.mAppContext.getString(R.string.button_confirm);
            } else if (type == 6) {
                title = this.mAppContext.getString(R.string.low_memory_title);
                message = this.mAppContext.getString(R.string.memory_not_allowed);
                neutralBtnText = this.mAppContext.getString(R.string.button_confirm);
            } else if (type == 7) {
                message = this.mAppContext.getString(R.string.recording_failure);
                neutralBtnText = this.mAppContext.getString(R.string.button_confirm);
            } else if (type == 8) {
                message = this.mAppContext.getString(R.string.recording_max_size);
                neutralBtnText = this.mAppContext.getString(R.string.button_confirm);
            }
            showAlertDialog(title, message, positiveBtnText, negativeBtnText, neutralBtnText, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    switch (which) {
                        case AudioSystem.INVALID_OPERATION /*-3*/:
                            MiuiScreenRecorderController.this.dialogDismiss();
                            return;
                        case -2:
                            if (type == 1 || type == 2) {
                                MiuiScreenRecorderController.this.dialogDismiss();
                                MiuiScreenRecorderController.this.warningQuit(type);
                                return;
                            }
                            return;
                        case -1:
                            if (type == 1 || type == 2) {
                                MiuiScreenRecorderController.this.dialogDismiss();
                                if (type != 1 || ScreenRecorderUtils.checkMemoryEnough(ScreenRecorderUtils.MIN_MEMORY_REQUIRED)) {
                                    MiuiScreenRecorderController.this.showHintAndStart(true);
                                    return;
                                } else {
                                    MiuiScreenRecorderController.this.showWarning(2);
                                    return;
                                }
                            }
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    }
}
