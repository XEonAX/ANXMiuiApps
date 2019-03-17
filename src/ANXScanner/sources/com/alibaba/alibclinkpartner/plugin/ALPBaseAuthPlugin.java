package com.alibaba.alibclinkpartner.plugin;

import android.os.Bundle;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.d.e.a.a;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alipay.sdk.app.statistic.c;

public abstract class ALPBaseAuthPlugin extends ALPBasePlugin {
    public ALPBaseAuthPlugin() {
        super(new String[]{c.d}, c.d, c.d);
    }

    private void a(int i) {
        d dVar = null;
        String str = b.a().b;
        switch (i) {
            case -2:
                dVar = new com.alibaba.alibclinkpartner.d.e.a.b(str);
                break;
            case -1:
                dVar = new com.alibaba.alibclinkpartner.d.e.a.c(str);
                break;
            case 0:
                dVar = new a(str);
                break;
        }
        if (dVar != null) {
            com.alibaba.alibclinkpartner.d.e.c.a(dVar);
        }
    }

    public boolean execute(int i, Bundle bundle) {
        a(i);
        if (i == -1) {
            onSuccess(bundle == null ? "" : bundle.getString("result"));
        } else {
            onError(i, bundle == null ? "" : bundle.getString("result"));
        }
        return false;
    }

    public abstract void onError(int i, String str);

    public abstract void onSuccess(String str);
}
