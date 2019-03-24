package com.miui.internal.hybrid.provider;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;
import com.miui.internal.hybrid.HybridManager;
import com.miui.internal.hybrid.webkit.WebkitFactoryProvider;

public class WebViewFactory {
    private static final String fR = "com.miui.sdk.hybrid.webview";
    private static WebViewFactoryProvider gf;
    private static final Object gg = new Object();

    public static WebViewFactoryProvider getProvider(Context context) {
        synchronized (gg) {
            WebViewFactoryProvider webViewFactoryProvider;
            if (gf != null) {
                webViewFactoryProvider = gf;
                return webViewFactoryProvider;
            }
            String str = null;
            try {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle != null) {
                    str = bundle.getString(fR);
                }
            } catch (NameNotFoundException e) {
                e.printStackTrace();
            }
            if (str != null) {
                try {
                    gf = (WebViewFactoryProvider) Class.forName(str, false, context.getClassLoader()).newInstance();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (gf == null) {
                gf = new WebkitFactoryProvider();
            }
            if (Log.isLoggable(HybridManager.TAG, 3)) {
                String str2 = HybridManager.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("loaded provider:");
                stringBuilder.append(gf);
                Log.d(str2, stringBuilder.toString());
            }
            webViewFactoryProvider = gf;
            return webViewFactoryProvider;
        }
    }
}
