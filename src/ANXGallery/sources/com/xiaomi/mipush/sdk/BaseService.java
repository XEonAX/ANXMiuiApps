package com.xiaomi.mipush.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.lang.ref.WeakReference;

public abstract class BaseService extends Service {
    private TimeoutHandler mHandler;

    public static class TimeoutHandler extends Handler {
        private WeakReference<BaseService> mWRService;

        public TimeoutHandler(WeakReference<BaseService> wrService) {
            this.mWRService = wrService;
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1001:
                    if (this.mWRService != null) {
                        BaseService service = (BaseService) this.mWRService.get();
                        if (service != null) {
                            MyLog.v("TimeoutHandler" + service.toString() + "  kill self");
                            if (service.hasJob()) {
                                MyLog.v("TimeoutHandler has job");
                                sendEmptyMessageDelayed(1001, 1000);
                                return;
                            }
                            service.stopSelf();
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        public void reSendTimeoutMessage() {
            if (hasMessages(1001)) {
                removeMessages(1001);
            }
            sendEmptyMessageDelayed(1001, 1000);
        }
    }

    protected abstract boolean hasJob();

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        if (this.mHandler == null) {
            this.mHandler = new TimeoutHandler(new WeakReference(this));
        }
        this.mHandler.reSendTimeoutMessage();
    }
}
