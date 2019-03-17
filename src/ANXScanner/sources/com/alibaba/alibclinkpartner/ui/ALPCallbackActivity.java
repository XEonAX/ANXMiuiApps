package com.alibaba.alibclinkpartner.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.d.e.a.g;
import com.alibaba.alibclinkpartner.d.e.a.i;
import com.alibaba.alibclinkpartner.d.e.a.l;
import com.alibaba.alibclinkpartner.d.e.a.m;
import com.alibaba.alibclinkpartner.d.e.c;
import com.alibaba.alibclinkpartner.e.a;
import com.alibaba.alibclinkpartner.j.e;

public class ALPCallbackActivity extends AppCompatActivity {
    private a a = null;

    private void a(String str, ALPCallbackActivity aLPCallbackActivity) {
        if (this.a.e != null && this.a.e.n) {
            d iVar = new i();
            iVar.b = b.a().b;
            iVar.c = TextUtils.isEmpty(this.a.e.l) ? aLPCallbackActivity.getComponentName().getClassName() : this.a.e.l;
            iVar.a = str;
            c.a(iVar);
        }
        if (this.a.e != null && this.a.e.g != null) {
            d mVar;
            if (!(this.a.e.p || this.a.e.q)) {
                g gVar = new g();
                gVar.d = "";
                gVar.c = true;
                gVar.a = b.a().b;
                gVar.e = this.a.e.e;
                gVar.b = this.a.e.g;
            }
            if (this.a.e.g.equals("taobao")) {
                mVar = new m();
                mVar.a = str;
                c.a(mVar);
            }
            if (this.a.e.d != null && this.a.e.n) {
                mVar = new l();
                mVar.b = this.a.e.g;
                mVar.a = this.a.e.d;
                c.a(mVar);
            }
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        finish();
        if (intent == null || intent.getStringExtra("pluginRules") == null) {
            String str = com.alipay.sdk.app.statistic.c.d;
            Bundle bundle = new Bundle();
            String str2 = "result";
            CharSequence stringExtra = (intent == null || intent.getStringExtra("result") == null) ? "" : intent.getStringExtra("result");
            bundle.putCharSequence(str2, stringExtra);
            b.f.a(str, i2, intent == null ? new Bundle() : intent.getExtras());
            return;
        }
        b.f.a(intent.getStringExtra("pluginRules"), i2, intent == null ? new Bundle() : intent.getExtras());
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.alibaba.alibclinkpartner.j.m.a(this, "activity_alibc_callback_actiity"));
        if (getIntent() == null) {
            finish();
        }
        this.a = (a) b.d.a(getIntent().toString());
        if (this.a == null || this.a.a == null) {
            finish();
            return;
        }
        Intent intent = new Intent();
        intent.setData(Uri.parse(this.a.a));
        if (this.a.b != null && this.a.b.size() > 0) {
            for (String str : this.a.b) {
                if (str != null) {
                    intent.setAction(str);
                }
            }
        }
        if (this.a.d != null && this.a.d.size() > 0) {
            for (String str2 : this.a.d) {
                if (str2 != null) {
                    intent.addCategory(str2);
                }
            }
        }
        try {
            startActivityForResult(intent, this.a.c);
            a(this.a.a, this);
        } catch (Throwable th) {
            e.a("ALPCallbackActivity", "onCreate", "跳转失败,错误信息为:\n" + th.toString());
            finish();
        }
    }
}
