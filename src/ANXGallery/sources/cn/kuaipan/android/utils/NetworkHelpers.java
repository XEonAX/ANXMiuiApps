package cn.kuaipan.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.TextUtils;
import org.apache.http.HttpHost;

public class NetworkHelpers {
    public static int getCurrentNetType(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        if (cm == null) {
            return -1;
        }
        NetworkInfo info = cm.getActiveNetworkInfo();
        if (info != null) {
            return info.getType();
        }
        return -1;
    }

    public static HttpHost getCurrentProxy() {
        if (getCurrentNetType(ContextUtils.getContext()) != 0) {
            return null;
        }
        String host = Proxy.getDefaultHost();
        int port = Proxy.getDefaultPort();
        if (TextUtils.isEmpty(host)) {
            return null;
        }
        return new HttpHost(host, port);
    }
}
