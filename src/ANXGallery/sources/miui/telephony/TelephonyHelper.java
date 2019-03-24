package miui.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;
import miui.net.ConnectivityHelper;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class TelephonyHelper {
    private static final SoftReferenceSingleton<TelephonyHelper> s = new SoftReferenceSingleton<TelephonyHelper>() {
        /* renamed from: cS */
        protected TelephonyHelper createInstance() {
            return new TelephonyHelper();
        }
    };
    private TelephonyManager Fl;
    private String Fm;
    private Context mContext;

    /* synthetic */ TelephonyHelper(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static TelephonyHelper getInstance() {
        return (TelephonyHelper) s.get();
    }

    private TelephonyHelper() {
        this.mContext = AppConstants.getCurrentApplication();
        this.Fl = (TelephonyManager) this.mContext.getSystemService("phone");
    }

    public String getDeviceId() {
        if (this.Fm != null) {
            return this.Fm;
        }
        this.Fm = this.Fl.getDeviceId();
        if (this.Fm != null) {
            return this.Fm;
        }
        if (ConnectivityHelper.getInstance().isWifiOnly()) {
            this.Fm = ConnectivityHelper.getInstance().getMacAddress();
        }
        return this.Fm;
    }
}
