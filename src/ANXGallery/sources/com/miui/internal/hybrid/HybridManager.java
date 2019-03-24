package com.miui.internal.hybrid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import com.miui.internal.util.PackageConstants;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import miui.hybrid.Callback;
import miui.hybrid.HybridChromeClient;
import miui.hybrid.HybridFeature;
import miui.hybrid.HybridFeature.Mode;
import miui.hybrid.HybridSettings;
import miui.hybrid.HybridView;
import miui.hybrid.HybridViewClient;
import miui.hybrid.LifecycleListener;
import miui.hybrid.NativeInterface;
import miui.hybrid.PageContext;
import miui.hybrid.Request;
import miui.hybrid.Response;

public class HybridManager {
    public static final String TAG = "hybrid";
    private static ExecutorService eW = Executors.newCachedThreadPool();
    private static String eX;
    private HybridView eY;
    private boolean eZ;
    private NativeInterface fa;
    private FeatureManager fb;
    private PermissionManager fc;
    private PageContext fd;
    private Set<LifecycleListener> fe = new CopyOnWriteArraySet();
    private ConcurrentHashMap<String, Request> ff = new ConcurrentHashMap();
    private Activity mActivity;

    private static class AsyncInvocation implements Runnable {
        private WeakReference<HybridManager> fh;
        private HybridFeature fi;
        private String fj;
        private String fk;

        public AsyncInvocation(HybridManager hybridManager, HybridFeature hybridFeature, String str, String str2) {
            this.fh = new WeakReference(hybridManager);
            this.fi = hybridFeature;
            this.fj = str;
            this.fk = str2;
        }

        public void run() {
            HybridManager hybridManager = (HybridManager) this.fh.get();
            if (hybridManager != null) {
                Request request = (Request) hybridManager.ff.remove(this.fj);
                if (request != null && !hybridManager.getActivity().isFinishing() && !hybridManager.getActivity().isDestroyed()) {
                    Response invoke = this.fi.invoke(request);
                    if (this.fi.getInvocationMode(request) == Mode.ASYNC) {
                        hybridManager.callback(invoke, request.getPageContext(), this.fk);
                    }
                }
            }
        }
    }

    private class JsInvocation implements Runnable {
        private String fk;
        private Response mResponse;

        public JsInvocation(Response response, String str) {
            this.mResponse = response;
            this.fk = str;
        }

        public void run() {
            String a = HybridManager.this.a(this.mResponse, this.fk);
            HybridView b = HybridManager.this.eY;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("javascript:");
            stringBuilder.append(a);
            b.loadUrl(stringBuilder.toString());
        }
    }

    public HybridManager(Activity activity, HybridView hybridView) {
        this.mActivity = activity;
        this.eY = hybridView;
    }

    public void init(int i, String str) {
        this.fa = new NativeInterface(this);
        Config g = g(i);
        a(g, false);
        J();
        if (str == null && !TextUtils.isEmpty(g.getContent())) {
            str = j(g.getContent());
        }
        if (str != null) {
            this.eY.loadUrl(str);
        }
    }

    public void clear() {
        this.ff.clear();
    }

    private Config g(int i) {
        XmlConfigParser create;
        if (i == 0) {
            try {
                create = XmlConfigParser.create(this.mActivity);
            } catch (HybridException e) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("cannot load config: ");
                stringBuilder.append(e.getMessage());
                throw new RuntimeException(stringBuilder.toString());
            }
        }
        create = XmlConfigParser.createFromResId(this.mActivity, i);
        return create.parse(null);
    }

    private String a(Config config, boolean z) {
        if (z) {
            SecurityManager securityManager = new SecurityManager(config, this.mActivity.getApplicationContext());
            if (securityManager.isExpired() || !securityManager.isValidSignature()) {
                return new Response((int) Response.CODE_SIGNATURE_ERROR).toString();
            }
        }
        this.fb = new FeatureManager(config, this.mActivity.getClassLoader());
        this.fc = new PermissionManager(config);
        return new Response(0).toString();
    }

    public String config(String str) {
        try {
            return a(JsonConfigParser.createFromString(str).parse(null), true);
        } catch (HybridException e) {
            return new Response((int) Response.CODE_CONFIG_ERROR, e.getMessage()).toString();
        }
    }

    public void setPageContext(PageContext pageContext) {
        this.fd = pageContext;
    }

    private void J() {
        a(this.eY.getSettings());
        this.eY.setHybridViewClient(new HybridViewClient());
        this.eY.setHybridChromeClient(new HybridChromeClient());
        this.eY.addJavascriptInterface(new JsInterface(this), JsInterface.INTERFACE_NAME);
        this.eY.addOnAttachStateChangeListener(new OnAttachStateChangeListener() {
            public void onViewAttachedToWindow(View view) {
                HybridManager.this.eZ = false;
            }

            public void onViewDetachedFromWindow(View view) {
                HybridManager.this.eZ = true;
            }
        });
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(HybridSettings hybridSettings) {
        hybridSettings.setJavaScriptEnabled(true);
        hybridSettings.setUserAgentString(i(hybridSettings.getUserAgentString()));
    }

    private String i(String str) {
        if (eX == null) {
            StringBuilder stringBuilder = new StringBuilder(str);
            stringBuilder.append(" XiaoMi/HybridView/");
            stringBuilder.append(a(this.mActivity, PackageConstants.PACKAGE_NAME).versionName);
            stringBuilder.append(" ");
            stringBuilder.append(this.mActivity.getPackageName());
            stringBuilder.append("/");
            stringBuilder.append(a(this.mActivity, this.mActivity.getPackageName()).versionName);
            eX = stringBuilder.toString();
        }
        return eX;
    }

    private static PackageInfo a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 128);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String j(String str) {
        if (Pattern.compile("^[a-z-]+://").matcher(str).find()) {
            return str;
        }
        if (str.charAt(0) == '/') {
            str = str.substring(1);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("file:///android_asset/hybrid/");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    private HybridFeature k(String str) throws HybridException {
        if (this.fc.isValid(this.fd.getUrl())) {
            return this.fb.lookupFeature(str);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("feature not permitted: ");
        stringBuilder.append(str);
        throw new HybridException(Response.CODE_PERMISSION_ERROR, stringBuilder.toString());
    }

    private Request b(String str, String str2, String str3) {
        Request request = new Request();
        request.setAction(str2);
        request.setRawParams(str3);
        request.setPageContext(this.fd);
        request.setView(this.eY);
        request.setNativeInterface(this.fa);
        return request;
    }

    public String lookup(String str, String str2) {
        try {
            if (k(str).getInvocationMode(b(str, str2, null)) != null) {
                return new Response(0).toString();
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("action not supported: ");
            stringBuilder.append(str2);
            return new Response((int) Response.CODE_ACTION_ERROR, stringBuilder.toString()).toString();
        } catch (HybridException e) {
            return e.getResponse().toString();
        }
    }

    public String invoke(String str, String str2, String str3, String str4) {
        try {
            HybridFeature k = k(str);
            Request b = b(str, str2, str3);
            Mode invocationMode = k.getInvocationMode(b);
            if (invocationMode == Mode.SYNC) {
                callback(new Response(1), this.fd, str4);
                return k.invoke(b).toString();
            }
            str = a(str, str2, str3, str4);
            this.ff.put(str, b);
            if (invocationMode == Mode.ASYNC) {
                eW.execute(new AsyncInvocation(this, k, str, str4));
                return new Response(2).toString();
            }
            b.setCallback(new Callback(this, this.fd, str4));
            eW.execute(new AsyncInvocation(this, k, str, str4));
            return new Response(3).toString();
        } catch (HybridException e) {
            Response response = e.getResponse();
            callback(response, this.fd, str4);
            return response.toString();
        }
    }

    private String a(String str, String str2, String str3, String str4) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(str2);
        stringBuilder.append(str3);
        stringBuilder.append(str4);
        return stringBuilder.toString();
    }

    public boolean isDetached() {
        return this.eZ;
    }

    public void callback(Response response, PageContext pageContext, String str) {
        if (response != null && !TextUtils.isEmpty(str) && pageContext.equals(this.fd) && !this.eZ && !this.mActivity.isFinishing()) {
            if (Log.isLoggable(TAG, 3)) {
                String str2 = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("non-blocking response is ");
                stringBuilder.append(response.toString());
                Log.d(str2, stringBuilder.toString());
            }
            this.mActivity.runOnUiThread(new JsInvocation(response, str));
        }
    }

    private String a(Response response, String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("('");
        stringBuilder.append(response.toString().replace("\\", "\\\\").replace("'", "\\'"));
        stringBuilder.append("');");
        return stringBuilder.toString();
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        this.fe.add(lifecycleListener);
    }

    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        this.fe.remove(lifecycleListener);
    }

    public void onPageChange() {
        for (LifecycleListener onPageChange : this.fe) {
            onPageChange.onPageChange();
        }
    }

    public void onStart() {
        for (LifecycleListener onStart : this.fe) {
            onStart.onStart();
        }
    }

    public void onResume() {
        for (LifecycleListener onResume : this.fe) {
            onResume.onResume();
        }
    }

    public void onPause() {
        for (LifecycleListener onPause : this.fe) {
            onPause.onPause();
        }
    }

    public void onStop() {
        for (LifecycleListener onStop : this.fe) {
            onStop.onStop();
        }
    }

    public void onDestroy() {
        for (LifecycleListener onDestroy : this.fe) {
            onDestroy.onDestroy();
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        for (LifecycleListener onActivityResult : this.fe) {
            onActivityResult.onActivityResult(i, i2, intent);
        }
    }

    public HybridView getHybridView() {
        return this.eY;
    }
}
