package miui.hybrid;

import android.content.Context;
import com.miui.internal.hybrid.provider.AbsCookieSyncManager;
import com.miui.internal.hybrid.provider.WebViewFactory;
import miui.util.AppConstants;

public final class CookieSyncManager {
    private static CookieSyncManager yr;

    private CookieSyncManager() {
    }

    public static CookieSyncManager createInstance(Context context) {
        getCookieSyncManager().createInstance(context);
        return getInstance();
    }

    public static CookieSyncManager getInstance() {
        getCookieSyncManager().getInstance();
        if (yr == null) {
            yr = new CookieSyncManager();
        }
        return yr;
    }

    public static void sync() {
        getCookieSyncManager().sync();
    }

    private static AbsCookieSyncManager getCookieSyncManager() {
        return WebViewFactory.getProvider(AppConstants.getCurrentApplication()).getCookieSyncManager();
    }
}
