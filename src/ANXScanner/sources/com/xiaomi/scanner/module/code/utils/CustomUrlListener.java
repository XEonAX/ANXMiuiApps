package com.xiaomi.scanner.module.code.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.alipay.sdk.cons.b;
import com.xiaomi.scanner.app.ScannerApplicationDelegate;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.util.List;

public class CustomUrlListener implements BarcodeScannerListener {
    private static final String HYBRID_PACKAGE = "com.miui.hybrid";
    private static final Tag TAG = new Tag("CustomUrlListener");
    private Context mContext;

    public CustomUrlListener(Context context) {
        this.mContext = context;
    }

    private boolean startActivity(String result) {
        if (TextUtils.isEmpty(result)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(result);
            UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_YELLOW_PAGE_COUNT);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Log.w(TAG, "no activity handle this action");
            return false;
        }
    }

    private static boolean checkUrl(String url) {
        try {
            Uri uri = Uri.parse(url);
            String scheme = uri.getScheme();
            if (!TextUtils.isEmpty(scheme)) {
                if (!scheme.equalsIgnoreCase("http") && !scheme.equalsIgnoreCase(b.a)) {
                    return true;
                }
                List<ResolveInfo> activities = ScannerApplicationDelegate.getAndroidContext().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", uri), 0);
                if (activities == null || activities.size() == 0) {
                    return false;
                }
                for (ResolveInfo info : activities) {
                    if (TextUtils.equals(HYBRID_PACKAGE, info.activityInfo.packageName)) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Exception e) {
            Log.e(TAG, "checkUrl error", e);
        }
        return false;
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        if (checkUrl(result)) {
            return startActivity(CustomUrlFilterUtil.filter(result));
        }
        return false;
    }

    public boolean handleBarcode(String result) {
        if (checkUrl(result)) {
            return startActivity(CustomUrlFilterUtil.filter(result));
        }
        return false;
    }
}
