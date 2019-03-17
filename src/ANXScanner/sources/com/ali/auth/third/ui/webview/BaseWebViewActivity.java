package com.ali.auth.third.ui.webview;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.cookies.CookieManagerWrapper;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.ResourceUtils;
import com.ali.auth.third.login.util.LoginStatus;
import com.ali.auth.third.ui.support.ActivityResultHandler;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

public class BaseWebViewActivity extends Activity {
    public static final String TAG = BaseWebViewActivity.class.getSimpleName();
    protected AuthWebView authWebView;
    protected ImageView backButton;
    public boolean canReceiveTitle;
    protected ImageView closeButton;
    protected RelativeLayout titleBar;
    protected TextView titleText;

    class a extends AsyncTask<String, Void, Void> {
        private String b;

        a() {
        }

        /* renamed from: a */
        protected Void doInBackground(String... strArr) {
            this.b = strArr[0];
            CookieManagerWrapper.INSTANCE.refreshCookie();
            return null;
        }

        /* renamed from: a */
        protected void onPostExecute(Void voidR) {
            super.onPostExecute(voidR);
            if (CommonUtils.isNetworkAvailable()) {
                try {
                    BaseWebViewActivity.this.authWebView.resumeTimers();
                    if (VERSION.SDK_INT >= 11) {
                        BaseWebViewActivity.this.authWebView.onResume();
                    }
                } catch (Exception e) {
                }
                BaseWebViewActivity.this.authWebView.loadUrl(this.b);
                return;
            }
            CommonUtils.toast("com_taobao_tae_sdk_network_not_available_message");
        }
    }

    private void a() {
        View linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) ResourceUtils.getDimen(getApplicationContext(), "ali_auth_titlebar_height"));
        this.titleBar = new RelativeLayout(this);
        this.titleBar.setBackgroundColor(Color.parseColor("#F8F8F8"));
        linearLayout.addView(this.titleBar, layoutParams);
        this.backButton = new ImageView(this);
        layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(9);
        layoutParams.addRule(15);
        layoutParams.leftMargin = (int) ResourceUtils.getDimen(getApplicationContext(), "ali_auth_space_10");
        this.backButton.setScaleType(ScaleType.CENTER);
        this.backButton.setImageResource(ResourceUtils.getIdentifier(getApplicationContext(), "drawable", "com_taobao_tae_sdk_web_view_title_bar_back"));
        this.backButton.setPadding(0, 0, (int) ResourceUtils.getDimen(getApplicationContext(), "ali_auth_space_20"), 0);
        this.titleText = new TextView(this);
        ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.titleText.setMaxWidth((int) ResourceUtils.getDimen(getApplicationContext(), "ali_auth_space_160"));
        this.titleText.setMaxLines(1);
        this.titleText.setTextColor(Color.parseColor("#3d4245"));
        this.titleText.setTextSize(2, 18.0f);
        this.closeButton = new ImageView(this);
        ViewGroup.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams3.rightMargin = (int) ResourceUtils.getDimen(getApplicationContext(), "ali_auth_space_10");
        this.closeButton.setScaleType(ScaleType.CENTER);
        this.closeButton.setImageResource(ResourceUtils.getIdentifier(getApplicationContext(), "drawable", "com_taobao_tae_sdk_web_view_title_bar_close"));
        this.closeButton.setPadding((int) ResourceUtils.getDimen(getApplicationContext(), "ali_auth_space_20"), 0, 0, 0);
        this.titleBar.addView(this.backButton, layoutParams);
        this.titleBar.addView(this.titleText, layoutParams2);
        this.titleBar.addView(this.closeButton, layoutParams3);
        this.authWebView = createTaeWebView();
        if (this.authWebView == null) {
            LoginStatus.resetLoginFlag();
            finish();
            return;
        }
        this.authWebView.setWebViewClient(createWebViewClient());
        this.authWebView.setWebChromeClient(createWebChromeClient());
        if (VERSION.SDK_INT >= 19) {
            AuthWebView authWebView = this.authWebView;
            AuthWebView.setWebContentsDebuggingEnabled(SDKLogger.isDebugEnabled());
        }
        linearLayout.addView(this.authWebView, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
    }

    protected AuthWebView createTaeWebView() {
        try {
            return new AuthWebView(this);
        } catch (Throwable th) {
            return null;
        }
    }

    protected WebChromeClient createWebChromeClient() {
        return new BridgeWebChromeClient() {
            public void onReceivedTitle(WebView webView, String str) {
                if (BaseWebViewActivity.this.canReceiveTitle) {
                    BaseWebViewActivity.this.titleText.setText(str);
                }
            }
        };
    }

    protected WebViewClient createWebViewClient() {
        return new BaseWebViewClient();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        ActivityResultHandler activityResultHandler = (ActivityResultHandler) KernelContext.getService(ActivityResultHandler.class, Collections.singletonMap(ActivityResultHandler.REQUEST_CODE_KEY, String.valueOf(i)));
        if (activityResultHandler != null) {
            activityResultHandler.onActivityResult(2, i, i2, intent, this, null, this.authWebView);
        }
    }

    protected void onBackHistory() {
        setResult(ResultCode.USER_CANCEL.code, new Intent());
        LoginStatus.resetLoginFlag();
        finish();
    }

    public void onBackPressed() {
        onBackHistory();
    }

    protected void onCreate(Bundle bundle) {
        CharSequence string;
        String str = null;
        super.onCreate(bundle);
        a();
        if (this.backButton != null) {
            this.backButton.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    BaseWebViewActivity.this.onBackHistory();
                }
            });
        }
        if (this.closeButton != null) {
            this.closeButton.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    BaseWebViewActivity.this.finish();
                }
            });
            this.closeButton.setVisibility(8);
        }
        Serializable serializableExtra = getIntent() != null ? getIntent().getSerializableExtra(AlibcConstants.CONTEXT_PARAMS) : bundle != null ? bundle.getSerializable(AlibcConstants.CONTEXT_PARAMS) : null;
        if (serializableExtra instanceof Map) {
            this.authWebView.getContextParameters().putAll((Map) serializableExtra);
        }
        if (bundle != null) {
            string = bundle.getString(Constants.TITLE);
            str = bundle.getString("url");
        } else {
            string = null;
        }
        if (TextUtils.isEmpty(string)) {
            string = getIntent().getStringExtra(Constants.TITLE);
        }
        if (TextUtils.isEmpty(string)) {
            this.canReceiveTitle = true;
        } else {
            this.canReceiveTitle = false;
            this.titleText.setText(string);
        }
        if (TextUtils.isEmpty(str)) {
            str = getIntent().getStringExtra("url");
        }
        SDKLogger.d(TAG, "onCreate url=" + str);
        if (KernelContext.checkServiceValid()) {
            new a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{str});
            return;
        }
        LoginStatus.resetLoginFlag();
        finish();
    }

    protected void onDestroy() {
        if (this.authWebView != null) {
            ViewGroup viewGroup = (ViewGroup) this.authWebView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.authWebView);
            }
            this.authWebView.removeAllViews();
            this.authWebView.destroy();
        }
        super.onDestroy();
    }

    protected void onFailure(ResultCode resultCode) {
        finish();
    }

    protected void onResume() {
        super.onResume();
        if (this.authWebView != null) {
            try {
                this.authWebView.resumeTimers();
                if (VERSION.SDK_INT >= 11) {
                    this.authWebView.onResume();
                }
            } catch (Exception e) {
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("url", this.authWebView.getUrl());
        bundle.putString(Constants.TITLE, this.titleText.getText().toString());
        bundle.putSerializable(AlibcConstants.CONTEXT_PARAMS, this.authWebView.getContextParameters());
    }

    public void setResult(ResultCode resultCode) {
        onFailure(resultCode);
    }
}
