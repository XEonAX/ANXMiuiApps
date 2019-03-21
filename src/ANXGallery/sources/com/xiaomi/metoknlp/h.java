package com.xiaomi.metoknlp;

import android.net.NetworkInfo;
import com.xiaomi.metoknlp.b.a;

/* compiled from: MetokApplication */
class h implements a {
    final /* synthetic */ MetokApplication X;

    h(MetokApplication metokApplication) {
        this.X = metokApplication;
    }

    public void a(NetworkInfo networkInfo) {
        this.X.updateConfig();
    }

    public void b(NetworkInfo networkInfo) {
    }
}
