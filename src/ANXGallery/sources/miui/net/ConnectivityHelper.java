package miui.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.miui.internal.variable.Android_Net_ConnectivityManager_class.Factory;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class ConnectivityHelper {
    private static final String TAG = "ConnectivityHelper";
    private static final SoftReferenceSingleton<ConnectivityHelper> s = new SoftReferenceSingleton<ConnectivityHelper>() {
        /* renamed from: cA */
        protected ConnectivityHelper createInstance() {
            return new ConnectivityHelper();
        }
    };
    private ConnectivityManager Cv;
    private WifiManager Cw;
    private String Cx;
    private Context mContext;

    /* synthetic */ ConnectivityHelper(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static ConnectivityHelper getInstance() {
        return (ConnectivityHelper) s.get();
    }

    private ConnectivityHelper() {
        this.mContext = AppConstants.getCurrentApplication();
        this.Cv = (ConnectivityManager) this.mContext.getSystemService("connectivity");
    }

    public ConnectivityManager getManager() {
        return this.Cv;
    }

    public boolean isNetworkConnected() {
        NetworkInfo activeNetworkInfo = this.Cv.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public boolean isWifiConnected() {
        NetworkInfo activeNetworkInfo = this.Cv.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1) {
            return true;
        }
        return false;
    }

    public boolean isUnmeteredNetworkConnected() {
        NetworkInfo activeNetworkInfo = this.Cv.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || this.Cv.isActiveNetworkMetered()) ? false : true;
    }

    public String getMacAddress() {
        if (this.Cx != null) {
            return this.Cx;
        }
        if (this.Cw == null) {
            this.Cw = (WifiManager) this.mContext.getSystemService("wifi");
        }
        WifiInfo connectionInfo = this.Cw.getConnectionInfo();
        if (connectionInfo != null) {
            this.Cx = connectionInfo.getMacAddress();
        }
        return this.Cx;
    }

    public boolean isWifiOnly() {
        return Factory.getInstance().get().isNetworkSupported(this.Cv, 0) ^ 1;
    }
}
