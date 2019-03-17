package com.alibaba.baichuan.trade.biz.auth;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import java.util.Set;

public class AlibcAuthActivity extends Activity implements OnClickListener {
    static int a;
    private boolean b = false;

    private class a implements AlibcAuthListener {
        com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a a;

        private a() {
            this.a = (com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a) AlibcAuth.a.get(Integer.valueOf(AlibcAuthActivity.a));
        }

        public void onCancel() {
            this.a.e.onCancel();
            AlibcAuth.a.remove(Integer.valueOf(AlibcAuthActivity.a));
            AlibcAuthActivity.this.finish();
        }

        public void onError(String str, String str2) {
            if (TextUtils.equals("FAIL_SYS_ACCESS_TOKEN_STOP_SERVICE", str)) {
                this.a.e.onError(str, str2);
                AlibcAuth.a.remove(Integer.valueOf(AlibcAuthActivity.a));
                return;
            }
            AlibcAuthActivity.this.b = true;
            AlibcAuthActivity.this.a();
            onReTry();
        }

        public void onReTry() {
            this.a.e.onReTry();
        }

        public void onSuccess() {
            this.a.e.onSuccess();
            AlibcAuth.a.remove(Integer.valueOf(AlibcAuthActivity.a));
            AlibcAuthActivity.this.finish();
        }
    }

    private class b implements AlibcAuthListener {
        com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a a;

        private b() {
            this.a = (com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a) AlibcAuth.a.get(Integer.valueOf(AlibcAuthActivity.a));
        }

        public void onCancel() {
            this.a.e.onCancel();
            AlibcAuth.a.remove(Integer.valueOf(AlibcAuthActivity.a));
            AlibcAuthActivity.this.finish();
        }

        public void onError(String str, String str2) {
            AlibcAuthActivity.this.b = true;
            AlibcAuthActivity.this.a();
            onReTry();
        }

        public void onReTry() {
            this.a.e.onReTry();
        }

        public void onSuccess() {
            AlibcAuthActivity.this.b = false;
            AlibcAuthActivity.this.a();
        }
    }

    private void a() {
        if (!isFinishing()) {
            com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a aVar = (com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a) AlibcAuth.a.get(Integer.valueOf(a));
            String charSequence = getApplicationInfo().loadLabel(getPackageManager()).toString();
            TextView textView = (TextView) findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_title"));
            TextView textView2 = (TextView) findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_desc"));
            TextView textView3 = (TextView) findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_btn_grant"));
            findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_rl")).setVisibility(0);
            c();
            if (this.b) {
                textView.setText("淘宝授权失败");
                textView2.setText("请确认网络环境后再试试？");
                textView3.setText("重试");
            } else {
                String str;
                textView.setText(charSequence + "将获取");
                CharSequence stringBuffer = new StringBuffer();
                Object a;
                if (aVar.a != null) {
                    for (String str2 : b.b(aVar.a)) {
                        a = b.a(str2);
                        stringBuffer.append(TextUtils.isEmpty(a) ? "访问您淘宝账号信息的权限(" + str2 + ")" : a + "\n");
                    }
                } else if (aVar.c != null) {
                    for (String str22 : aVar.c) {
                        a = b.a(str22);
                        stringBuffer.append(TextUtils.isEmpty(a) ? "访问您淘宝账号信息的权限(" + str22 + ")" : a + "\n");
                    }
                }
                stringBuffer.delete(stringBuffer.lastIndexOf("\n"), stringBuffer.length());
                if (TextUtils.isEmpty(stringBuffer)) {
                    str22 = "访问您淘宝账号信息的权限";
                } else {
                    CharSequence charSequence2 = stringBuffer;
                }
                textView2.setText(str22);
                textView3.setText("确认授权");
            }
            textView3.setOnClickListener(this);
            findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_btn_cancel")).setOnClickListener(this);
            findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_btn_close")).setOnClickListener(this);
        }
    }

    private void b() {
        findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "com_alibc_auth_progressbar")).setVisibility(0);
    }

    private void c() {
        findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "com_alibc_auth_progressbar")).setVisibility(8);
    }

    /* JADX WARNING: Missing block: B:39:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onClick(View view) {
        int id = view.getId();
        com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a aVar;
        if (id == ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_btn_cancel") || id == ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_btn_close")) {
            synchronized (this) {
                aVar = (com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a) AlibcAuth.a.get(Integer.valueOf(a));
                if (aVar != null) {
                    aVar.e.onCancel();
                    AlibcAuth.a.remove(Integer.valueOf(a));
                }
                finish();
            }
        } else if (id == ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_btn_grant")) {
            synchronized (this) {
                aVar = (com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a) AlibcAuth.a.get(Integer.valueOf(a));
                if (aVar == null) {
                    finish();
                    return;
                }
                b();
                findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "open_auth_rl")).setVisibility(8);
                if (TextUtils.isEmpty(aVar.a)) {
                    AlibcAuth.a(aVar.c, new a(), false);
                } else {
                    Set b = b.b(aVar.a);
                    if (b == null || b.size() <= 0) {
                        AlibcAuth.a(aVar.a, new b(), false, false);
                    } else {
                        AlibcAuth.a(b, new a(), false);
                    }
                }
            }
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(ResourceUtils.getIdentifier(this, "layout", "com_alibc_auth_actiivty"));
        try {
            a = getIntent().getExtras().getInt("authId");
            com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a aVar = (com.alibaba.baichuan.trade.biz.auth.AlibcAuth.a) AlibcAuth.a.get(Integer.valueOf(a));
            if (aVar.c == null) {
                AlibcAuth.a(aVar.a, new b(), false, false);
            } else {
                a();
            }
        } catch (Exception e) {
        }
    }
}
