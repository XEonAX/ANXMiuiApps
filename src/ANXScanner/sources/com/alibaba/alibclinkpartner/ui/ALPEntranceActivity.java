package com.alibaba.alibclinkpartner.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.d.e.a.h;
import com.alibaba.alibclinkpartner.d.e.c;
import com.alibaba.alibclinkpartner.j.e;

public class ALPEntranceActivity extends Activity {
    private boolean a(Intent intent) {
        return intent != null;
    }

    private void b(Intent intent) {
        if (intent != null) {
            try {
                startActivity(intent);
            } catch (Throwable th) {
                e.a("ALPEntranceActivity", "startNewActivity", "startActivityError t=" + th.toString());
            }
        }
    }

    private void c(Intent intent) {
        if (b.a() != null) {
            d hVar = new h();
            hVar.d = b.a().b;
            hVar.b = getPackageName();
            hVar.e = intent.getStringExtra("sourceVC");
            Intent intent2 = (Intent) intent.getParcelableExtra("linkIntent");
            if (intent2 != null) {
                hVar.c = intent2.getDataString();
            }
            hVar.a = intent.getStringExtra("sourcePackageName");
            c.a(hVar);
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finish();
        Intent intent = getIntent();
        if (a(intent)) {
            c(intent);
            String stringExtra = intent.getStringExtra("pluginRules");
            if (stringExtra != null && stringExtra.equals("forward")) {
                b((Intent) intent.getParcelableExtra("linkIntent"));
                return;
            } else if (stringExtra != null) {
                b.f.a(stringExtra, intent.getExtras().getInt("resultCode", 0), intent.getExtras());
                return;
            } else {
                e.a("ALPEntranceActivity", "onCreate", " module is null");
                return;
            }
        }
        e.a("ALPEntranceActivity", "onCreate", " check intent fail,param miss");
    }
}
