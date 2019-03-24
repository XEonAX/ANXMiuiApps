package com.xiaomi.metoknlp;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: MetokApplication */
class g extends Handler {
    final /* synthetic */ MetokApplication X;

    public g(MetokApplication metokApplication, Looper looper) {
        this.X = metokApplication;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 101:
                this.X.run();
                return;
            case 102:
                a.g().update();
                return;
            default:
                return;
        }
    }
}
