package com.alibaba.baichuan.android.trade.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageBusManager;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageListner;
import com.alibaba.baichuan.trade.common.utils.ResourceUtils;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewProxy;

public class AlibcWebViewActivity extends Activity {
    private static AlibcTradeContext a = null;
    private static com.alibaba.baichuan.android.trade.usertracker.monitor.a b = null;
    private WebView c;
    private TextView d;
    private View e;
    private View f;
    private View g;
    private a h;

    public class a extends AlibcMessageListner {
        protected a() {
            super(1201, true);
        }

        public void onMessageEvent(int i, Object obj) {
            if (obj != null && (obj instanceof String)) {
                AlibcWebViewActivity.this.d.setText((String) obj);
            }
        }
    }

    public static AlibcTradeContext a() {
        return a;
    }

    public static void a(com.alibaba.baichuan.android.trade.usertracker.monitor.a aVar) {
        b = aVar;
    }

    public static void a(AlibcTradeContext alibcTradeContext) {
        a = alibcTradeContext;
    }

    private void b() {
        CharSequence stringExtra = getIntent().getStringExtra("bc_webview_activity_title");
        if (TextUtils.isEmpty(stringExtra)) {
            this.h = new a();
            AlibcMessageBusManager.getInstance().registerListener(this.h);
            return;
        }
        this.d.setText(stringExtra);
    }

    private void c() {
        requestWindowFeature(1);
        LinearLayout linearLayout = (LinearLayout) getLayoutInflater().inflate(ResourceUtils.getRLayout(this, "com_taobao_nb_sdk_web_view_activity"), null);
        this.c = new WebView(this);
        e();
        linearLayout.addView(this.c, new LayoutParams(-1, -1));
        setContentView(linearLayout);
        this.d = (TextView) findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "com_taobao_nb_sdk_web_view_title_bar_title"));
        this.f = findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "com_taobao_nb_sdk_web_view_title_bar_close_button"));
        this.g = findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "com_taobao_nb_sdk_web_view_title_bar_back_button"));
        this.e = findViewById(ResourceUtils.getIdentifier(this, AlibcConstants.ID, "com_taobao_tae_sdk_web_view_title_bar"));
        d();
    }

    private void d() {
        if (this.f != null) {
            this.f.setOnClickListener(new a(this));
        }
        if (this.g != null) {
            this.g.setOnClickListener(new b(this));
        }
    }

    private void e() {
        AlibcTradeContext a = a();
        if (a != null) {
            a.setActivity(this);
            a.setWebview(this.c);
            AlibcTradeContextManager.setContext(a);
        }
        AlibcWebViewProxy.initAlibcWebViewProxy(this, this.c, null, null, true);
    }

    private void f() {
        Object stringExtra = getIntent().getStringExtra("url");
        if (!TextUtils.isEmpty(stringExtra)) {
            if (b != null) {
                b.l();
            }
            this.c.loadUrl(stringExtra);
        }
    }

    public void onBackPressed() {
        if (this.c.canGoBack()) {
            this.c.goBack();
        } else {
            finish();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c();
        b();
        f();
    }

    protected void onDestroy() {
        if (this.c != null) {
            ViewGroup viewGroup = (ViewGroup) this.c.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.c);
            }
            this.c.removeAllViews();
            this.c.destroy();
        }
        if (this.h != null) {
            AlibcMessageBusManager.getInstance().removeListner(this.h);
        }
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent) {
        if (intent != null && intent.getExtras() != null) {
            f();
        }
    }
}
