package miui.provider;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import miui.os.C0015Build;

public final class ExtraNetwork {
    private static final String ACTION_NETWORK_ASSISTANT_SMS_REPORT = "miui.intent.action.NETWORKASSISTANT_SMS_REPORT";
    public static final String ACTION_NETWORK_BLOCKED = "miui.intent.action.NETWORK_BLOCKED";
    public static final String ACTION_NETWORK_CONNECTED = "miui.intent.action.NETWORK_CONNECTED";
    private static final String ACTION_TRAFFIC_SETTING = "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING";
    private static final String ACTION_TRAFFIC_SETTING_INTERNATIONAL = "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING";
    public static final String BUNDLE_KEY_COMMON = "bundle_key_com";
    public static final String BUNDLE_KEY_HAS_MENU = "bundle_key_has_menu";
    private static final String BUNDLE_KEY_OTHER_APP = "bundle_key_from_other_task";
    public static final String BUNDLE_KEY_PURCHASE_FROM = "bundle_key_purchase_from";
    public static final String BUNDLE_KEY_SLOTID = "bundle_key_slotid";
    private static final String BUNDLE_KEY_SLOT_ID = "sim_slot_num_tag";
    public static final String BUNDLE_KEY_TITLE = "bundle_key_title";
    public static final String BUNDLE_KEY_URL = "bundle_key_url";
    private static final String COLUMN_NAME_MONTH_USED = "month_used";
    private static final String COLUMN_NAME_MONTH_WARNING = "month_warning";
    private static final String COLUMN_NAME_PACKAGE_REMAINED = "package_remained";
    private static final String COLUMN_NAME_PACKAGE_TOTAL = "package_total";
    private static final String COLUMN_NAME_PACKAGE_USED = "package_used";
    private static final String COLUMN_NAME_SLOT_NUM = "slot_num";
    private static final String COLUMN_NAME_SUPPORT = "package_setted";
    private static final String COLUMN_NAME_TODAY_USED = "today_used";
    private static final String COLUMN_NAME_TOTAL_LIMIT = "total_limit";
    public static final int CORRECTION_TYPE_BILL = 2;
    public static final int CORRECTION_TYPE_CALLTIME = 4;
    public static final int CORRECTION_TYPE_TRAFFIC = 1;
    private static final String EXTRA_MIUI_STARTING_WINDOW_LABEL = ":miui:starting_window_label";
    public static final String FIREWALL_MOBILE_RULE = "mobile_rule";
    private static final String FIREWALL_MOBILE_RULE_SLOTNUM = "mobile_rule_slot";
    public static final String FIREWALL_PACKAGE_NAME = "package_name";
    private static final String FIREWALL_SOURCE_PACKAGE_NAME = "source_package_name";
    private static final String FIREWALL_TEMP_MOBILE_RULE = "temp_mobile_rule";
    private static final String FIREWALL_TEMP_MOBILE_RULE_SLOTNUM = "temp_mobile_rule_slot";
    private static final String FIREWALL_TEMP_WIFI_RULE = "temp_wifi_rule";
    private static final String FIREWALL_URI_STR = "content://com.miui.networkassistant.provider/firewall/%s";
    public static final String FIREWALL_WIFI_RULE = "wifi_rule";
    public static final String FROM_PKGNAME = "from_pkgname";
    public static final String IMSI = "imsi";
    private static final String KEY_CORRECTION_TYPE = "correction_type";
    private static final String MOBILE_FIREWALL_URI_STR = "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s";
    public static final String MOBILE_RXBYTES = "mobile_rxbytes";
    public static final String MOBILE_TXBYTES = "mobile_txbytes";
    private static final String NETWORKASSISTANT_PURCHASE_ACTION = "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE";
    public static final String STORAGE_TIME = "storage_time";
    private static final String TAG = "ExtraNetwork";
    private static final String TEMP_MOBILE_FIREWALL_URI_STR = "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s";
    private static final String TEMP_WIFI_FIREWALL_URI_STR = "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s";
    public static final String TO_PKGNAME = "to_pkgname";
    public static final String TRACK_PURCHASE_FROM_LOCK_SCREEN_TRAFFIC = "100010";
    public static final String TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_PAGE = "100002";
    public static final String TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_TOOLBAR = "100001";
    public static final String TRACK_PURCHASE_FROM_PUSH = "100007";
    public static final String TRACK_PURCHASE_FROM_SERCURITY_CENTER_EXAM = "100008";
    public static final String TRACK_PURCHASE_FROM_STATUS_BAR = "100003";
    public static final String TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_DIALOG = "100006";
    public static final String TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_NOTIFY = "100005";
    public static final String TRACK_PURCHASE_FROM_TRAFFIC_SORTED = "100009";
    public static final String TRACK_PURCHASE_FROM_TRAFFIC_WARNING_NOTIFY = "100004";
    private static final String TRAFFIC_DISTRIBUTION_URI_STR = "content://com.miui.networkassistant.provider/traffic_distribution";
    public static final String TRAFFIC_PURCHASE_ENABLED = "traffic_purchase_enabled";
    private static final String TRAFFIC_PURCHASE_STATUS_URI_STR = "content://com.miui.networkassistant.provider/na_traffic_purchase";
    private static final String TRAFFIC_PURCHASE_STATUS_URI_STR_ISMI = "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d";
    private static final String URI_BILL_PACKAGE_DETAIL = "content://com.miui.networkassistant.provider/bill_detail";
    private static final String URI_CALL_TIME_PACKAGE_DETAIL = "content://com.miui.networkassistant.provider/calltime_detail";
    private static final String URI_NETWORK_TRAFFIC_INFO = "content://com.miui.networkassistant.provider/datausage_status";
    private static final String URI_SMS_CORRECTION = "content://com.miui.networkassistant.provider/sms_correction";
    private static final String WIFI_FIREWALL_URI_STR = "content://com.miui.networkassistant.provider/wifi_firewall/%s";
    public static final String WIFI_RXBYTES = "wifi_rxbytes";
    public static final String WIFI_TXBYTES = "wifi_txbytes";

    public static final class DataUsageDetail {
        public long monthTotal;
        public long monthUsed;
        public long monthWarning;
        public long todayUsed;

        public DataUsageDetail(long monthTotal, long monthUsed, long monthWarning, long todayUsed) {
            this.monthTotal = monthTotal;
            this.monthUsed = monthUsed;
            this.monthWarning = monthWarning;
            this.todayUsed = todayUsed;
        }

        public String toString() {
            return String.format("monthTotal:%s, monthUsed:%s, monthWarning:%s, todayUsed:%s", new Object[]{Long.valueOf(this.monthTotal), Long.valueOf(this.monthUsed), Long.valueOf(this.monthWarning), Long.valueOf(this.todayUsed)});
        }
    }

    public static final class PackageDetail {
        public boolean isSupport;
        public long packageRemained;
        public long packageTotal;
        public long packageUsed;
        public int slotNum;

        public PackageDetail(long packageTotal, long packageUsed, long packageRemained, int slotNum, boolean isSupport) {
            this.packageTotal = packageTotal;
            this.packageUsed = packageUsed;
            this.packageRemained = packageRemained;
            this.slotNum = slotNum;
            this.isSupport = isSupport;
        }

        public String toString() {
            return String.format("packageTotal:%s, packageUsed:%s, packageRemained:%s, slotNum:%s, isSupport:%s", new Object[]{Long.valueOf(this.packageTotal), Long.valueOf(this.packageUsed), Long.valueOf(this.packageRemained), Integer.valueOf(this.slotNum), Boolean.valueOf(this.isSupport)});
        }
    }

    public static void registerFirewallContentObserver(Context context, ContentObserver observer) {
        context.getContentResolver().registerContentObserver(Uri.parse(String.format(FIREWALL_URI_STR, new Object[]{""})), true, observer);
    }

    public static void unRegisterFirewallContentObserver(Context context, ContentObserver observer) {
        context.getContentResolver().unregisterContentObserver(observer);
    }

    public static boolean setWifiTempRestrict(Context context, String pkgName, boolean isRestrict) {
        boolean z = false;
        try {
            Uri uri = Uri.parse(String.format(TEMP_WIFI_FIREWALL_URI_STR, new Object[]{pkgName}));
            if (uri != null) {
                ContentResolver resolver = context.getContentResolver();
                ContentValues params = new ContentValues();
                params.put(FIREWALL_TEMP_WIFI_RULE, Boolean.valueOf(isRestrict));
                params.put(FIREWALL_SOURCE_PACKAGE_NAME, context.getPackageName());
                if (resolver.update(uri, params, null, null) == 1) {
                    z = true;
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "setWifiTempRestrict", e);
        }
        return false;
    }

    /* JADX WARNING: Missing block: B:16:0x0047, code:
            if (r1 != null) goto L_0x0049;
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:22:0x0057, code:
            if (r1 == null) goto L_0x005a;
     */
    /* JADX WARNING: Missing block: B:23:0x005a, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isWifiTempRestrict(Context context, String pkgName) {
        boolean z = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        Cursor cursor = null;
        try {
            Uri uri = Uri.parse(String.format(TEMP_WIFI_FIREWALL_URI_STR, new Object[]{pkgName}));
            cursor = context.getContentResolver().query(uri, null, null, new String[]{pkgName}, null);
            if (cursor != null && cursor.moveToFirst()) {
                if (cursor.getInt(cursor.getColumnIndex(FIREWALL_TEMP_WIFI_RULE)) == 1) {
                    z = true;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "isWifiTempRestrict", e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static boolean setMobileTempRestrict(Context context, String pkgName, int slotnum, boolean isRestrict) {
        boolean z = false;
        try {
            Uri uri = Uri.parse(String.format(TEMP_MOBILE_FIREWALL_URI_STR, new Object[]{Integer.valueOf(slotnum), pkgName}));
            if (uri != null) {
                ContentResolver resolver = context.getContentResolver();
                ContentValues params = new ContentValues();
                params.put(FIREWALL_TEMP_MOBILE_RULE_SLOTNUM, Integer.valueOf(slotnum));
                params.put(FIREWALL_TEMP_MOBILE_RULE, Boolean.valueOf(isRestrict));
                params.put(FIREWALL_SOURCE_PACKAGE_NAME, context.getPackageName());
                if (resolver.update(uri, params, null, null) == 1) {
                    z = true;
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "setMobileTempRestrict", e);
        }
        return false;
    }

    /* JADX WARNING: Missing block: B:16:0x004e, code:
            if (r1 != null) goto L_0x0050;
     */
    /* JADX WARNING: Missing block: B:17:0x0050, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:22:0x005e, code:
            if (r1 == null) goto L_0x0061;
     */
    /* JADX WARNING: Missing block: B:23:0x0061, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isMobileTempRestrict(Context context, String pkgName, int slotnum) {
        boolean z = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        Cursor cursor = null;
        try {
            Uri uri = Uri.parse(String.format(TEMP_MOBILE_FIREWALL_URI_STR, new Object[]{Integer.valueOf(slotnum), pkgName}));
            cursor = context.getContentResolver().query(uri, null, null, new String[]{pkgName}, null);
            if (cursor != null && cursor.moveToFirst()) {
                if (cursor.getInt(cursor.getColumnIndex(FIREWALL_TEMP_MOBILE_RULE)) == 1) {
                    z = true;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "isMobileTempRestrict", e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static boolean setMobileRestrict(Context context, String pkgName, boolean isRestrict) {
        return setMobileRestrict(context, pkgName, isRestrict, -1);
    }

    public static boolean setMobileRestrict(Context context, String pkgName, boolean isRestrict, int slotNum) {
        boolean z = false;
        try {
            Uri uri = Uri.parse(String.format(MOBILE_FIREWALL_URI_STR, new Object[]{Integer.valueOf(slotNum), pkgName}));
            if (uri != null) {
                ContentResolver resolver = context.getContentResolver();
                ContentValues params = new ContentValues();
                params.put(FIREWALL_MOBILE_RULE_SLOTNUM, Integer.valueOf(slotNum));
                params.put(FIREWALL_MOBILE_RULE, Boolean.valueOf(isRestrict));
                params.put(FIREWALL_SOURCE_PACKAGE_NAME, context.getPackageName());
                if (resolver.update(uri, params, null, null) == 1) {
                    z = true;
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "setMobileTempRestrict", e);
        }
        return false;
    }

    public static boolean setWifiRestrict(Context context, String pkgName, boolean isRestrict) {
        boolean z = false;
        try {
            Uri uri = Uri.parse(String.format(WIFI_FIREWALL_URI_STR, new Object[]{pkgName}));
            if (uri != null) {
                ContentResolver resolver = context.getContentResolver();
                ContentValues params = new ContentValues();
                params.put(FIREWALL_WIFI_RULE, Boolean.valueOf(isRestrict));
                params.put(FIREWALL_SOURCE_PACKAGE_NAME, context.getPackageName());
                if (resolver.update(uri, params, null, null) == 1) {
                    z = true;
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "setWifiTempRestrict", e);
        }
        return false;
    }

    public static boolean isMobileRestrict(Context context, String pkgName) {
        return isMobileRestrict(context, pkgName, -1);
    }

    /* JADX WARNING: Missing block: B:16:0x004e, code:
            if (r1 != null) goto L_0x0050;
     */
    /* JADX WARNING: Missing block: B:17:0x0050, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:22:0x005e, code:
            if (r1 == null) goto L_0x0061;
     */
    /* JADX WARNING: Missing block: B:23:0x0061, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isMobileRestrict(Context context, String pkgName, int slotNum) {
        boolean z = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        Cursor cursor = null;
        try {
            Uri uri = Uri.parse(String.format(MOBILE_FIREWALL_URI_STR, new Object[]{Integer.valueOf(slotNum), pkgName}));
            cursor = context.getContentResolver().query(uri, null, null, new String[]{pkgName}, null);
            if (cursor != null && cursor.moveToFirst()) {
                if (cursor.getInt(cursor.getColumnIndex(FIREWALL_MOBILE_RULE)) == 1) {
                    z = true;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "isMobileRestrict", e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX WARNING: Missing block: B:16:0x0047, code:
            if (r1 != null) goto L_0x0049;
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:22:0x0057, code:
            if (r1 == null) goto L_0x005a;
     */
    /* JADX WARNING: Missing block: B:23:0x005a, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isWifiRestrict(Context context, String pkgName) {
        boolean z = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        Cursor cursor = null;
        try {
            Uri uri = Uri.parse(String.format(WIFI_FIREWALL_URI_STR, new Object[]{pkgName}));
            cursor = context.getContentResolver().query(uri, null, null, new String[]{pkgName}, null);
            if (cursor != null && cursor.moveToFirst()) {
                if (cursor.getInt(cursor.getColumnIndex(FIREWALL_WIFI_RULE)) == 1) {
                    z = true;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "isWifiRestrict", e);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @Deprecated
    public static boolean insertTrafficDistribution(Context context, String toPackageName, long wifiTxBytes, long wifiRxBytes, long mobileTxBytes, long mobileRxBytes) {
        Exception e;
        Context context2 = context;
        String str;
        if (context2 == null || TextUtils.isEmpty(toPackageName)) {
            str = toPackageName;
            return false;
        }
        try {
            Uri uri = Uri.parse(TRAFFIC_DISTRIBUTION_URI_STR);
            if (uri != null) {
                String imsi = "";
                TelephonyManager telephony = (TelephonyManager) context2.getSystemService("phone");
                if (telephony != null) {
                    imsi = telephony.getSubscriberId();
                }
                ContentValues values = new ContentValues();
                values.put(FROM_PKGNAME, context2.getPackageName());
                try {
                    values.put(TO_PKGNAME, toPackageName);
                    values.put(MOBILE_RXBYTES, Long.valueOf(mobileRxBytes));
                    values.put(MOBILE_TXBYTES, Long.valueOf(mobileTxBytes));
                    values.put(WIFI_RXBYTES, Long.valueOf(wifiRxBytes));
                    values.put(WIFI_TXBYTES, Long.valueOf(wifiTxBytes));
                    values.put("imsi", imsi);
                    values.put(STORAGE_TIME, Long.valueOf(System.currentTimeMillis()));
                    if (!TextUtils.isEmpty(context2.getContentResolver().insert(uri, values).getLastPathSegment())) {
                        return true;
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.e(TAG, "insertTrafficDistribution", e);
                    return false;
                }
            }
            str = toPackageName;
        } catch (Exception e3) {
            e = e3;
            str = toPackageName;
            Log.e(TAG, "insertTrafficDistribution", e);
            return false;
        }
        return false;
    }

    public static boolean isTrafficPurchaseSupported(Context context) {
        if (context != null) {
            try {
                return queryTrafficPurchaseStatus(context, Uri.parse(TRAFFIC_PURCHASE_STATUS_URI_STR));
            } catch (Exception e) {
                Log.e(TAG, "isTrafficPurchaseSupported", e);
            }
        }
        return false;
    }

    public static boolean isTrafficPurchaseSupported(Context context, int slotId) {
        if (context != null && slotId >= 0 && slotId < 2) {
            try {
                return queryTrafficPurchaseStatus(context, Uri.parse(String.format(TRAFFIC_PURCHASE_STATUS_URI_STR_ISMI, new Object[]{Integer.valueOf(slotId)})));
            } catch (Exception e) {
                Log.e(TAG, "isTrafficPurchaseSupported", e);
            }
        }
        return false;
    }

    /*  JADX ERROR: NullPointerException in pass: ProcessVariables
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.regions.ProcessVariables.addToUsageMap(ProcessVariables.java:278)
        	at jadx.core.dex.visitors.regions.ProcessVariables.access$000(ProcessVariables.java:31)
        	at jadx.core.dex.visitors.regions.ProcessVariables$CollectUsageRegionVisitor.processInsn(ProcessVariables.java:163)
        	at jadx.core.dex.visitors.regions.ProcessVariables$CollectUsageRegionVisitor.processBlockTraced(ProcessVariables.java:129)
        	at jadx.core.dex.visitors.regions.TracedRegionVisitor.processBlock(TracedRegionVisitor.java:23)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:53)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:57)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:57)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:57)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at java.util.Collections$UnmodifiableCollection.forEach(Unknown Source)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:57)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:57)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:57)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:18)
        	at jadx.core.dex.visitors.regions.ProcessVariables.visit(ProcessVariables.java:183)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Unknown Source)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0040  */
    /* JADX WARNING: Missing block: B:14:0x0040, code:
            r0.close();
     */
    private static boolean queryTrafficPurchaseStatus(android.content.Context r8, android.net.Uri r9) {
        /*
        r0 = 0;
        r1 = 0;
        if (r9 == 0) goto L_0x0044;
    L_0x0004:
        r2 = r8.getContentResolver();	 Catch:{ Exception -> 0x0030 }
        r4 = 0;	 Catch:{ Exception -> 0x0030 }
        r5 = 0;	 Catch:{ Exception -> 0x0030 }
        r6 = 0;	 Catch:{ Exception -> 0x0030 }
        r7 = 0;	 Catch:{ Exception -> 0x0030 }
        r3 = r9;	 Catch:{ Exception -> 0x0030 }
        r3 = r2.query(r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x0030 }
        r0 = r3;	 Catch:{ Exception -> 0x0030 }
        if (r0 == 0) goto L_0x0044;	 Catch:{ Exception -> 0x0030 }
    L_0x0014:
        r3 = r0.moveToFirst();	 Catch:{ Exception -> 0x0030 }
        if (r3 == 0) goto L_0x0044;	 Catch:{ Exception -> 0x0030 }
    L_0x001a:
        r3 = "traffic_purchase_enabled";	 Catch:{ Exception -> 0x0030 }
        r3 = r0.getColumnIndex(r3);	 Catch:{ Exception -> 0x0030 }
        r3 = r0.getString(r3);	 Catch:{ Exception -> 0x0030 }
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ Exception -> 0x0030 }
        r3 = r3.booleanValue();	 Catch:{ Exception -> 0x0030 }
        r1 = r3;
        goto L_0x0044;
    L_0x002e:
        r2 = move-exception;
        goto L_0x003e;
    L_0x0030:
        r2 = move-exception;
        r3 = "ExtraNetwork";	 Catch:{ all -> 0x002e }
        r4 = "queryTrafficPurchaseStatus";	 Catch:{ all -> 0x002e }
        android.util.Log.e(r3, r4, r2);	 Catch:{ all -> 0x002e }
        if (r0 == 0) goto L_0x0047;
    L_0x003a:
        r0.close();
        goto L_0x0047;
    L_0x003e:
        if (r0 == 0) goto L_0x0043;
    L_0x0040:
        r0.close();
    L_0x0043:
        throw r2;
    L_0x0044:
        if (r0 == 0) goto L_0x0047;
    L_0x0046:
        goto L_0x003a;
    L_0x0047:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: miui.provider.ExtraNetwork.queryTrafficPurchaseStatus(android.content.Context, android.net.Uri):boolean");
    }

    @Deprecated
    public static void navigateToTrafficPurchasePage(Context context) {
        Intent intent = new Intent(NETWORKASSISTANT_PURCHASE_ACTION);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void navigateToTrafficPurchasePage(Context context, String sourceFrom) {
        Intent intent = new Intent(NETWORKASSISTANT_PURCHASE_ACTION);
        Bundle bundle = new Bundle();
        bundle.putString(BUNDLE_KEY_PURCHASE_FROM, sourceFrom);
        intent.putExtra(BUNDLE_KEY_COMMON, bundle);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void navigateToRichWebActivity(Context context, String url, String title, boolean hasMenu, String sourceFrom, boolean needNewTask) {
        Intent intent = new Intent(NETWORKASSISTANT_PURCHASE_ACTION);
        Bundle bundle = new Bundle();
        bundle.putString(BUNDLE_KEY_URL, url);
        bundle.putString(BUNDLE_KEY_TITLE, title);
        bundle.putBoolean(BUNDLE_KEY_HAS_MENU, hasMenu);
        bundle.putString(BUNDLE_KEY_PURCHASE_FROM, sourceFrom);
        intent.putExtra(BUNDLE_KEY_COMMON, bundle);
        intent.putExtra(":miui:starting_window_label", title);
        if (needNewTask) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    @Deprecated
    public static void navigateToTrafficPurchasePage(Context context, int slotId) {
        Intent intent = new Intent(NETWORKASSISTANT_PURCHASE_ACTION);
        Bundle bundle = new Bundle();
        bundle.putInt(BUNDLE_KEY_SLOTID, slotId);
        intent.putExtra(BUNDLE_KEY_COMMON, bundle);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void navigateToTrafficPurchasePage(Context context, int slotId, String sourceFrom) {
        Intent intent = new Intent(NETWORKASSISTANT_PURCHASE_ACTION);
        Bundle bundle = new Bundle();
        bundle.putInt(BUNDLE_KEY_SLOTID, slotId);
        bundle.putString(BUNDLE_KEY_PURCHASE_FROM, sourceFrom);
        intent.putExtra(BUNDLE_KEY_COMMON, bundle);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* JADX WARNING: Missing block: B:12:0x0054, code:
            if (r1 != null) goto L_0x0063;
     */
    /* JADX WARNING: Missing block: B:17:0x0061, code:
            if (r1 == null) goto L_0x006f;
     */
    /* JADX WARNING: Missing block: B:18:0x0063, code:
            r1.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static DataUsageDetail getUserDataUsageDetail(Context context) {
        if (context != null) {
            Cursor cursor = null;
            try {
                cursor = context.getContentResolver().query(Uri.parse(URI_NETWORK_TRAFFIC_INFO), null, null, null, null);
                if (cursor != null && cursor.moveToFirst()) {
                    DataUsageDetail dataUsageDetail = new DataUsageDetail(cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_TOTAL_LIMIT)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_MONTH_USED)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_MONTH_WARNING)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_TODAY_USED)));
                    if (cursor != null) {
                        cursor.close();
                    }
                    return dataUsageDetail;
                }
            } catch (Exception e) {
                Log.e(TAG, "getUserDataUsageDetail", e);
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return null;
    }

    public static List<PackageDetail> getBillPackageDetail(Context context) {
        Cursor cursor = null;
        List<PackageDetail> packageDetails = new ArrayList();
        try {
            cursor = context.getContentResolver().query(Uri.parse(URI_BILL_PACKAGE_DETAIL), null, null, null, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    packageDetails.add(new PackageDetail(cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_PACKAGE_TOTAL)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_PACKAGE_USED)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_PACKAGE_REMAINED)), cursor.getInt(cursor.getColumnIndex(COLUMN_NAME_SLOT_NUM)), "true".equals(cursor.getString(cursor.getColumnIndex(COLUMN_NAME_SUPPORT)))));
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return packageDetails;
        } catch (Exception e) {
            Log.e(TAG, "getBillPackageDetail", e);
            if (cursor != null) {
                cursor.close();
            }
            return packageDetails;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static List<PackageDetail> getCallTimePackageDetail(Context context) {
        Cursor cursor = null;
        List<PackageDetail> packageDetails = new ArrayList();
        try {
            cursor = context.getContentResolver().query(Uri.parse(URI_CALL_TIME_PACKAGE_DETAIL), null, null, null, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    packageDetails.add(new PackageDetail(cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_PACKAGE_TOTAL)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_PACKAGE_USED)), cursor.getLong(cursor.getColumnIndex(COLUMN_NAME_PACKAGE_REMAINED)), cursor.getInt(cursor.getColumnIndex(COLUMN_NAME_SLOT_NUM)), "true".equals(cursor.getString(cursor.getColumnIndex(COLUMN_NAME_SUPPORT)))));
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return packageDetails;
        } catch (Exception e) {
            Log.e(TAG, "getCallTimePackageDetail", e);
            if (cursor != null) {
                cursor.close();
            }
            return packageDetails;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static void navigateToOperatorSettingActivity(Context context, int slotId) {
        Intent intent;
        if (C0015Build.IS_INTERNATIONAL_BUILD) {
            intent = new Intent(ACTION_TRAFFIC_SETTING_INTERNATIONAL);
        } else {
            intent = new Intent(ACTION_TRAFFIC_SETTING);
        }
        Bundle bundle = new Bundle();
        bundle.putInt(BUNDLE_KEY_SLOT_ID, slotId);
        bundle.putBoolean(BUNDLE_KEY_OTHER_APP, true);
        intent.putExtras(bundle);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static boolean startCorrection(Context context, int slotId, int type) {
        boolean z = false;
        try {
            Uri uri = Uri.parse(URI_SMS_CORRECTION);
            if (uri != null) {
                ContentResolver resolver = context.getContentResolver();
                ContentValues values = new ContentValues();
                values.put(BUNDLE_KEY_SLOT_ID, Integer.valueOf(slotId));
                values.put(KEY_CORRECTION_TYPE, Integer.valueOf(type));
                if (resolver.update(uri, values, null, null) == 1) {
                    z = true;
                }
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "startCorrection", e);
        }
        return false;
    }

    public static void navigateToSmsReportActivity(Context context, int slotId, int type) {
        Intent intent = new Intent(ACTION_NETWORK_ASSISTANT_SMS_REPORT);
        intent.putExtra(BUNDLE_KEY_SLOT_ID, slotId);
        intent.putExtra(KEY_CORRECTION_TYPE, type);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void registerPackageContentObserver(Context context, ContentObserver observer, int type) {
        String uriStr;
        if (type == 2) {
            uriStr = URI_BILL_PACKAGE_DETAIL;
        } else if (type == 4) {
            uriStr = URI_CALL_TIME_PACKAGE_DETAIL;
        } else {
            uriStr = URI_NETWORK_TRAFFIC_INFO;
        }
        context.getContentResolver().registerContentObserver(Uri.parse(uriStr), true, observer);
    }

    public static void unRegisterPackageContentObserver(Context context, ContentObserver observer) {
        context.getContentResolver().unregisterContentObserver(observer);
    }
}
