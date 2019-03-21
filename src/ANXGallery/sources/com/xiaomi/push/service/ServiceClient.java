package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.BuildSettings;
import java.util.ArrayList;
import java.util.List;

public class ServiceClient {
    private static ServiceClient sInstance;
    private static String sSession = null;
    private boolean isConnectingService = false;
    private Messenger mClientMessenger;
    private Context mContext;
    private boolean mIsMiuiPushServiceEnabled = false;
    private Messenger mMessenger;
    private List<Message> pendingMessages = new ArrayList();

    public static ServiceClient getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new ServiceClient(context);
        }
        return sInstance;
    }

    private ServiceClient(Context context) {
        this.mContext = context.getApplicationContext();
        this.mMessenger = new Messenger(new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
            }
        });
        if (serviceInstalled()) {
            MyLog.v("use miui push service");
            this.mIsMiuiPushServiceEnabled = true;
        }
    }

    private boolean serviceInstalled() {
        if (BuildSettings.IsTestBuild) {
            return false;
        }
        try {
            PackageInfo pkgInfo = this.mContext.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (pkgInfo == null || pkgInfo.versionCode < BaiduSceneResult.SPORTS_OTHER) {
                return false;
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean startServiceSafely(Intent intent) {
        try {
            if (MIUIUtils.isMIUI() || VERSION.SDK_INT < 26) {
                this.mContext.startService(intent);
            } else {
                bindServiceSafely(intent);
            }
            return true;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    private synchronized void bindServiceSafely(Intent intent) {
        if (this.isConnectingService) {
            Message message = parseToMessage(intent);
            if (this.pendingMessages.size() >= 50) {
                this.pendingMessages.remove(0);
            }
            this.pendingMessages.add(message);
        } else if (this.mClientMessenger == null) {
            Context context = this.mContext;
            ServiceConnection anonymousClass2 = new ServiceConnection() {
                public void onServiceConnected(ComponentName name, IBinder service) {
                    synchronized (ServiceClient.this) {
                        ServiceClient.this.mClientMessenger = new Messenger(service);
                        ServiceClient.this.isConnectingService = false;
                        for (Message msg : ServiceClient.this.pendingMessages) {
                            try {
                                ServiceClient.this.mClientMessenger.send(msg);
                            } catch (Throwable e) {
                                MyLog.e(e);
                            }
                        }
                        ServiceClient.this.pendingMessages.clear();
                    }
                }

                public void onServiceDisconnected(ComponentName name) {
                    ServiceClient.this.mClientMessenger = null;
                    ServiceClient.this.isConnectingService = false;
                }
            };
            Context context2 = this.mContext;
            context.bindService(intent, anonymousClass2, 1);
            this.isConnectingService = true;
            this.pendingMessages.clear();
            this.pendingMessages.add(parseToMessage(intent));
        } else {
            try {
                this.mClientMessenger.send(parseToMessage(intent));
            } catch (RemoteException e) {
                this.mClientMessenger = null;
                this.isConnectingService = false;
            }
        }
        return;
    }

    private Message parseToMessage(Intent intent) {
        Message message = Message.obtain();
        message.what = 17;
        message.obj = intent;
        return message;
    }
}
