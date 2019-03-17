package com.ali.auth.third.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.login.LoginComponent;
import com.ali.auth.third.login.LoginConstants;
import com.ali.auth.third.login.util.LoginStatus;
import com.ali.auth.third.ui.context.CallbackContext;
import java.util.Map;
import org.json.JSONObject;

public class LoginActivity extends Activity {
    public static final String TAG = "login.LoginActivity";
    LinearLayout a;

    protected void auth() {
        switch (getIntent().getIntExtra(LoginConstants.PARAN_LOGIN_TYPE, 0)) {
            case 4:
                try {
                    Object stringExtra = getIntent().getStringExtra("params");
                    Map map = null;
                    if (!TextUtils.isEmpty(stringExtra)) {
                        map = JSONUtils.toMap(new JSONObject(stringExtra));
                    }
                    LoginComponent.INSTANCE.goQrCodeLogin(this, map);
                    return;
                } catch (Throwable th) {
                    return;
                }
            default:
                LoginComponent.INSTANCE.showLogin(this);
                return;
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        SDKLogger.d(TAG, "onActivityResult requestCode = " + i + " resultCode=" + i2);
        if (KernelContext.checkServiceValid()) {
            this.a.setClickable(true);
            this.a.setLongClickable(true);
            super.onActivityResult(i, i2, intent);
            if (CallbackContext.activity == null) {
                CallbackContext.setActivity(this);
            }
            CallbackContext.onActivityResult(i, i2, intent);
            return;
        }
        finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new LinearLayout(this);
        this.a.setLayoutParams(new LayoutParams(-1, -1));
        setContentView(this.a);
        if (KernelContext.context == null) {
            KernelContext.context = getApplicationContext();
        }
        this.a.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SDKLogger.e(LoginActivity.TAG, "click to destroy");
                LoginActivity.this.finish();
                LoginStatus.resetLoginFlag();
            }
        });
        this.a.setClickable(false);
        this.a.setLongClickable(false);
        if (KernelContext.checkServiceValid()) {
            CallbackContext.setActivity(this);
            SDKLogger.e(TAG, "before mtop call showLogin");
            auth();
            return;
        }
        SDKLogger.d(TAG, "static field null");
        LoginStatus.resetLoginFlag();
        finish();
    }

    protected void onResume() {
        super.onResume();
        if (!KernelContext.checkServiceValid()) {
            finish();
        }
    }
}
