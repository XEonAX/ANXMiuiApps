package com.xiaomi.metoknlp;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

/* compiled from: MetokApplication */
class g extends Handler {
    final /* synthetic */ MetokApplication X;

    public g(MetokApplication metokApplication, Looper looper) {
        this.X = metokApplication;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case BaiduSceneResult.SHOOTING /*101*/:
                this.X.run();
                return;
            case BaiduSceneResult.TAEKWONDO /*102*/:
                a.g().update();
                return;
            default:
                return;
        }
    }
}
