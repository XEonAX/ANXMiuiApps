package miui.yellowpage;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import miui.os.C0015Build;
import miui.provider.ExtraTelephony;
import miui.yellowpage.Tag.TagPreference;
import miui.yellowpage.YellowPageContract.AntispamCategory;
import miui.yellowpage.YellowPageContract.AntispamNumber;
import miui.yellowpage.YellowPageContract.AntispamWhiteList;
import miui.yellowpage.YellowPageContract.Ivr;
import miui.yellowpage.YellowPageContract.Method;
import miui.yellowpage.YellowPageContract.MipubPhoneEvent;
import miui.yellowpage.YellowPageContract.PhoneLookup;
import miui.yellowpage.YellowPageContract.Provider;
import miui.yellowpage.YellowPageContract.Settings;
import miui.yellowpage.YellowPageContract.UserArea;
import org.json.JSONException;
import org.json.JSONObject;

public class YellowPageUtils {
    private static final int ANTISPAM_COLUMN_CID = 1;
    private static final int ANTISPAM_COLUMN_MARKED_COUNT = 3;
    private static final int ANTISPAM_COLUMN_NORMALIZED_NUMBER = 4;
    private static final int ANTISPAM_COLUMN_NUMBER_TYPE = 5;
    private static final int ANTISPAM_COLUMN_PID = 0;
    private static final int ANTISPAM_COLUMN_TYPE = 2;
    private static final String[] ANTISPAM_PROJECTION = new String[]{"pid", "cid", "type", AntispamNumber.MARKED_COUNT, "normalized_number", "number_type"};
    private static final String CLOUD_ANTISPAM = "cloud_antispam";
    private static final int CLOUD_ANTISPAM_DISABLE = 0;
    private static final int CLOUD_ANTISPAM_ENANBLE = 1;
    private static final int PHONE_COLUMN_ATD_COUNT = 15;
    private static final int PHONE_COLUMN_ATD_ID = 13;
    private static final int PHONE_COLUMN_ATD_PROVIDER = 16;
    private static final int PHONE_COLUMN_CALL_MENU = 11;
    private static final int PHONE_COLUMN_CREDIT_IMG = 17;
    private static final int PHONE_COLUMN_NORMALIZED_NUMBER = 9;
    private static final int PHONE_COLUMN_NUMBER_TYPE = 18;
    private static final int PHONE_COLUMN_PHOTO_URL = 3;
    private static final int PHONE_COLUMN_PROVIDER_ID = 1;
    private static final int PHONE_COLUMN_SLOGAN = 14;
    private static final int PHONE_COLUMN_SUSPECT = 10;
    private static final int PHONE_COLUMN_T9_RANK = 12;
    private static final int PHONE_COLUMN_TAG = 2;
    private static final int PHONE_COLUMN_TAG_PINYIN = 7;
    private static final int PHONE_COLUMN_THUMBNAIL_URL = 4;
    private static final int PHONE_COLUMN_VISIBLE = 8;
    private static final int PHONE_COLUMN_YID = 0;
    private static final int PHONE_COLUMN_YP_NAME = 5;
    private static final int PHONE_COLUMN_YP_NAME_PINYIN = 6;
    private static final String[] PHONE_PROJECTION = new String[]{"yid", PhoneLookup.PROVIDER_ID, "tag", PhoneLookup.PHOTO_URL, PhoneLookup.THUMBNAIL_URL, PhoneLookup.YELLOW_PAGE_NAME, PhoneLookup.YELLOW_PAGE_NAME_PINYIN, PhoneLookup.TAG_PINYIN, "hide", "normalized_number", PhoneLookup.SUSPECT, PhoneLookup.CALL_MENU, "t9_rank", PhoneLookup.ATD_ID, "slogan", PhoneLookup.ATD_COUNT, PhoneLookup.ATD_PROVIDER, "credit_img", "number_type"};
    private static final String TAG = "YellowPageUtils";
    @SuppressLint({"UseSparseArrays"})
    private static final ConcurrentHashMap<Integer, AntispamCategory> sCidCategories = new ConcurrentHashMap();
    @SuppressLint({"UseSparseArrays"})
    private static final HashMap<Integer, YellowPageProvider> sProviders = new HashMap();

    private YellowPageUtils() {
    }

    public static String getUserAreaCode(Context context) {
        if (!isContentProviderInstalled(context, UserArea.CONTENT_URI)) {
            return null;
        }
        Cursor c = context.getContentResolver().query(UserArea.CONTENT_URI, new String[]{UserArea.AREA_CODE}, null, null, null);
        if (c != null) {
            try {
                if (c.moveToFirst()) {
                    String string = c.getString(0);
                    c.close();
                    return string;
                }
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Throwable th) {
                c.close();
            }
            c.close();
        }
        return null;
    }

    public static String getNormalizedNumber(Context context, String number) {
        return getNormalizedNumber(context, number, true, null);
    }

    public static String getNormalizedNumber(Context context, String number, boolean withCountryCode, String defaultCountryCode) {
        if (TextUtils.isEmpty(number)) {
            return null;
        }
        Builder builder = Uri.withAppendedPath(PhoneLookup.CONTENT_NORMALIZED_NUMBER, number).buildUpon();
        builder.appendQueryParameter("withCountryCode", withCountryCode ? "true" : "false");
        if (!TextUtils.isEmpty(defaultCountryCode)) {
            builder.appendQueryParameter("defaultCountryCode", defaultCountryCode);
        }
        Uri uri = builder.build();
        if (!isContentProviderInstalled(context, uri)) {
            return null;
        }
        Cursor cursor = context.getContentResolver().query(uri, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    return string;
                }
                cursor.close();
            } finally {
                cursor.close();
            }
        }
        return null;
    }

    public static YellowPagePhone getPhoneInfo(Context context, String number, boolean fetchRemote) {
        if (TextUtils.isEmpty(number)) {
            return null;
        }
        YellowPagePhone phone = queryPhoneInfo(context, number, null);
        if (phone == null && fetchRemote) {
            phone = queryPhoneInfo(context, number, true);
        } else if (fetchRemote) {
            updateCloudPhoneInfo(context, number);
        }
        return phone;
    }

    public static void updatePhoneInfo(Context context, String number) {
        if (!TextUtils.isEmpty(number)) {
            Log.d(TAG, "updatePhoneInfo updateCloud");
            updateCloudPhoneInfo(context, number);
        }
    }

    public static HashMap<String, YellowPagePhone> getLocalYellowPagePhones(Context context, List<String> numbers) {
        return getLocalYellowPagePhones(context, numbers, null);
    }

    /* JADX WARNING: Missing block: B:48:0x0108, code:
            return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static HashMap<String, YellowPagePhone> getLocalYellowPagePhones(Context context, List<String> numbers, HashMap<String, String> outNorNumbersMap) {
        Context context2 = context;
        List<String> list = numbers;
        HashMap<String, String> hashMap = outNorNumbersMap;
        if (!isYellowPageAvailable(context) || list == null || numbers.size() == 0 || !isContentProviderInstalled(context2, PhoneLookup.CONTENT_URI)) {
            return null;
        }
        HashMap<String, String> norNumbersMap = new HashMap();
        HashMap<String, YellowPagePhone> resultMap = new HashMap();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= numbers.size()) {
                return resultMap;
            }
            String normalizedNumber;
            String number = (String) list.get(i2);
            if (hashMap == null || TextUtils.isEmpty((CharSequence) hashMap.get(number))) {
                normalizedNumber = getNormalizedNumber(context2, number);
                if (TextUtils.isEmpty(normalizedNumber)) {
                    continue;
                    i = i2 + 1;
                } else if (hashMap != null) {
                    hashMap.put(number, normalizedNumber);
                }
            } else {
                normalizedNumber = (String) hashMap.get(number);
            }
            norNumbersMap.put(normalizedNumber, number);
            if (norNumbersMap.size() > 50 || i2 == numbers.size() - 1) {
                String num;
                StringBuilder sb = new StringBuilder();
                for (String num2 : norNumbersMap.keySet()) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append("'");
                    sb.append(num2);
                    sb.append("'");
                }
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = PhoneLookup.CONTENT_URI;
                String[] strArr = PHONE_PROJECTION;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("normalized_number IN (");
                stringBuilder.append(sb.toString());
                stringBuilder.append(")");
                Cursor c = contentResolver.query(uri, strArr, stringBuilder.toString(), null, null);
                if (c != null) {
                    while (c.moveToNext()) {
                        try {
                            num2 = (String) norNumbersMap.get(c.getString(9));
                            resultMap.put(num2, buildYellowPagePhoneFromCursor(c, num2));
                        } catch (Exception e) {
                            e.printStackTrace();
                        } catch (Throwable th) {
                            c.close();
                        }
                    }
                    norNumbersMap.clear();
                    c.close();
                } else {
                    continue;
                }
                i = i2 + 1;
            } else {
                i = i2 + 1;
            }
        }
    }

    public static void queryExpressInfo(Context context, String bizCode, String serialNumber) {
        if (!queryLocalExpressInfo(context, bizCode, serialNumber)) {
            queryCloudExpressInfo(context, bizCode, serialNumber);
        }
    }

    private static boolean queryLocalExpressInfo(Context context, String bizName, String serialNumber) {
        if (!isYellowPageAvailable(context) || TextUtils.isEmpty(bizName) || TextUtils.isEmpty(serialNumber)) {
            return false;
        }
        Bundle args = new Bundle();
        args.putString("bizName", bizName);
        args.putString("serialNumber", serialNumber);
        return InvocationHandler.invoke(context, Method.REQUEST_LOCAL_EXPRESS_INFO, null, args).getBoolean("res");
    }

    private static void queryCloudExpressInfo(Context context, String bizCode, String serialNumber) {
        if (isYellowPageAvailable(context) && !TextUtils.isEmpty(bizCode) && !TextUtils.isEmpty(serialNumber)) {
            Bundle args = new Bundle();
            args.putString("bizName", bizCode);
            args.putString("serialNumber", serialNumber);
            InvocationHandler.invoke(context, Method.REQUEST_REMOTE_EXPRESS_INFO, null, args);
        }
    }

    public static YellowPageProvider getProvider(Context context, int pid) {
        YellowPageProvider provider = (YellowPageProvider) sProviders.get(Integer.valueOf(pid));
        if (provider != null && !TextUtils.isEmpty(provider.getName())) {
            return provider;
        }
        if (!isContentProviderInstalled(context, Provider.CONTENT_URI)) {
            return null;
        }
        Cursor c = context.getContentResolver().query(Provider.CONTENT_URI, new String[]{"name", "icon", "pid", Provider.ICON_BIG}, null, null, null);
        if (c != null) {
            while (c.moveToNext()) {
                try {
                    String name = c.getString(0);
                    byte[] iconByte = c.getBlob(1);
                    Bitmap icon = iconByte == null ? null : BitmapFactory.decodeByteArray(iconByte, 0, iconByte.length);
                    iconByte = c.getBlob(3);
                    Bitmap iconBig = iconByte == null ? null : BitmapFactory.decodeByteArray(iconByte, 0, iconByte.length);
                    int providerId = c.getInt(2);
                    sProviders.put(Integer.valueOf(providerId), new YellowPageProvider(providerId, name, icon, iconBig));
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    c.close();
                }
            }
            c.close();
        }
        provider = (YellowPageProvider) sProviders.get(Integer.valueOf(pid));
        if (provider == null) {
            provider = YellowPageProvider.DEFAULT_PROVIDER;
        }
        return provider;
    }

    public static String getCidName(Context context, int cid) {
        String str = null;
        AntispamCategory category;
        if (sCidCategories.containsKey(Integer.valueOf(cid))) {
            category = (AntispamCategory) sCidCategories.get(Integer.valueOf(cid));
            if (category != null) {
                str = category.getCategoryName();
            }
            return str;
        }
        getCategories(context);
        category = (AntispamCategory) sCidCategories.get(Integer.valueOf(cid));
        if (category != null) {
            str = category.getCategoryName();
        }
        return str;
    }

    public static List<AntispamCategory> getCategories(Context context) {
        if (!isContentProviderInstalled(context, AntispamCategory.CONTENT_URI)) {
            return Collections.emptyList();
        }
        Cursor c = context.getContentResolver().query(AntispamCategory.CONTENT_URI, new String[]{"cid", "names", "type", "icon", AntispamCategory.ORDER}, null, null, null);
        if (c != null) {
            while (c.moveToNext()) {
                try {
                    int categoryId = c.getInt(0);
                    sCidCategories.put(Integer.valueOf(categoryId), new AntispamCategory(categoryId, c.getString(1), c.getInt(2), c.getString(3), c.getInt(4)));
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    c.close();
                }
            }
            c.close();
        }
        return sCidCategories.values() == null ? null : new ArrayList(sCidCategories.values());
    }

    public static void markAntiSpam(Context context, String number, int categoryId, boolean delete) {
        ContentValues values = new ContentValues();
        values.put("number", number);
        values.put("categoryId", Integer.valueOf(categoryId));
        values.put("delete", Boolean.valueOf(delete));
        update(context, AntispamNumber.CONTENT_MARK_NUMBER_URI, values, null, null);
    }

    public static int createAntispamCategory(Context context, String categoryName) {
        if (TextUtils.isEmpty(categoryName)) {
            Log.d(TAG, "The category name must not be null");
        }
        if (!isContentProviderInstalled(context, AntispamCategory.CONTENT_URI)) {
            return 0;
        }
        Cursor c = context.getContentResolver().query(AntispamCategory.CONTENT_URI, new String[]{"MAX(cid)"}, null, null, null);
        int categoryId = 10000;
        if (c != null) {
            try {
                if (c.moveToFirst()) {
                    int categoryId2 = c.getInt(0);
                    if (categoryId2 >= 10000) {
                        categoryId = categoryId2 + 1;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Throwable th) {
                c.close();
            }
            c.close();
        }
        ContentValues values = new ContentValues();
        values.put("cid", Integer.valueOf(categoryId));
        values.put("names", categoryName);
        values.put("type", Integer.valueOf(1));
        insert(context, AntispamCategory.CONTENT_URI, values);
        return categoryId;
    }

    public static AntispamCustomCategory getAntispamNumberCategory(Context context, String number) {
        return getAntispamNumberCategory(context, number, true);
    }

    public static AntispamCustomCategory getAntispamNumberCategory(Context context, String number, boolean filterOneRingCall) {
        Context context2 = context;
        String str = number;
        if (TextUtils.isEmpty(number)) {
            return null;
        }
        Uri uri = Uri.withAppendedPath(AntispamNumber.CONTENT_PHONE_LOOKUP_URI, str);
        if (!isContentProviderInstalled(context2, uri)) {
            return null;
        }
        AntispamCustomCategory customCategory = null;
        Uri uri2 = uri;
        int i = 5;
        int i2 = 2;
        Cursor c = context.getContentResolver().query(uri2, ANTISPAM_PROJECTION, buildAntispamCategorySelection(Integer.valueOf(3), Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(5)), null, null, null);
        if (c != null) {
            int i3;
            int presetOrCloudPosition = -1;
            int userMarkedPosition = -1;
            int notInPresetPosition = -1;
            while (c.moveToNext()) {
                try {
                    i3 = c.getInt(i2);
                    if (i3 != i) {
                        switch (i3) {
                            case 1:
                            case 2:
                                presetOrCloudPosition = c.getPosition();
                                break;
                            case 3:
                                userMarkedPosition = c.getPosition();
                                break;
                            default:
                                break;
                        }
                    }
                    notInPresetPosition = c.getPosition();
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    c.close();
                }
            }
            i3 = -1;
            if (userMarkedPosition != -1) {
                i3 = userMarkedPosition;
                Log.d(TAG, "getAntispamNumberCategory(): found type user marked in db");
            } else if (presetOrCloudPosition != -1) {
                i3 = presetOrCloudPosition;
                Log.d(TAG, "getAntispamNumberCategory(): found type preset/cloud in db");
            } else if (notInPresetPosition != -1) {
                Log.d(TAG, "getAntispamNumberCategory(): found type not in preset in db");
                c.close();
                return null;
            }
            customCategory = getAntispamCategoryFromCursor(context2, c, i3, str);
            if (customCategory == null) {
                Log.d(TAG, "getAntispamNumberCategory(): find nothing in db");
            }
            c.close();
        } else {
            Log.d(TAG, "getAntispamNumberCategory(): find nothing in db");
        }
        if (customCategory == null) {
            c = context.getContentResolver().query(Uri.withAppendedPath(AntispamNumber.CONTENT_PRESET_PHONE_LOOKUP_URI, str), ANTISPAM_PROJECTION, null, null, null);
            if (c != null) {
                try {
                    customCategory = getAntispamCategoryFromCursor(context2, c, 0, str);
                    if (customCategory != null) {
                        Log.d(TAG, "getAntispamNumberCategory(): found in preset");
                    } else {
                        Log.d(TAG, "getAntispamNumberCategory(): not found in preset");
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                } catch (Throwable th2) {
                    c.close();
                }
                c.close();
            } else {
                Log.d(TAG, "getAntispamNumberCategory(): find nothing in preset");
            }
        }
        if (customCategory != null) {
            Log.d(TAG, String.format("getAntispamNumberCategory(): number=%s, numberType=%s, category=%s", new Object[]{getLogNumber(number), Integer.valueOf(customCategory.getNumberType()), customCategory.getCategoryName()}));
        } else {
            Log.d(TAG, String.format("getAntispamNumberCategory(): number=%s, not found", new Object[]{getLogNumber(number)}));
        }
        return customCategory;
    }

    private static String buildAntispamCategorySelection(Integer... types) {
        StringBuilder selectionBuilder = new StringBuilder();
        for (Object append : types) {
            if (selectionBuilder.length() > 0) {
                selectionBuilder.append(" OR ");
            }
            selectionBuilder.append("type");
            selectionBuilder.append("=");
            selectionBuilder.append(append);
        }
        selectionBuilder.insert(0, "(");
        selectionBuilder.append(")");
        return selectionBuilder.toString();
    }

    private static AntispamCustomCategory getAntispamCategoryFromCursor(Context context, Cursor c, int position, String number) {
        Cursor cursor = c;
        if (position == -1 || !c.moveToPosition(position)) {
            return null;
        }
        boolean userMarked = true;
        int categoryId = cursor.getInt(1);
        int type = cursor.getInt(2);
        int markedCount = cursor.getInt(3);
        int numberType = cursor.getInt(5);
        if (type != 3) {
            userMarked = false;
        }
        if (userMarked) {
            getCategories(context);
        }
        AntispamCategory category = (AntispamCategory) sCidCategories.get(Integer.valueOf(categoryId));
        if (category == null) {
            return null;
        }
        int numberType2 = numberType;
        AntispamCustomCategory customCategory = new AntispamCustomCategory(category.getCategoryId(), category.getCategoryAllNames(), category.getCategoryType(), category.getIcon(), category.getOrder(), number, markedCount, userMarked);
        customCategory.setNumberType(numberType2);
        return customCategory;
    }

    public static boolean isYellowPageAvailable(Context context) {
        Locale locale = Locale.getDefault();
        boolean mainlandBuild = !C0015Build.IS_INTERNATIONAL_BUILD && (Locale.SIMPLIFIED_CHINESE.equals(locale) || Locale.TRADITIONAL_CHINESE.equals(locale) || Locale.US.equals(locale));
        boolean indianBuild = "IN".equals(C0015Build.getRegion());
        if (mainlandBuild || indianBuild) {
            return true;
        }
        return false;
    }

    public static boolean isYellowPageEnable(Context context) {
        return isYellowPageAvailable(context) && isCloudAntispamEnable(context);
    }

    public static boolean isInSmsWhiteList(Context context, String number) {
        if (TextUtils.isEmpty(number) || !isContentProviderInstalled(context, AntispamWhiteList.CONTNET_URI)) {
            return false;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = AntispamWhiteList.CONTNET_URI;
        String[] strArr = new String[]{"number"};
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("number LIKE '");
        stringBuilder.append(number);
        stringBuilder.append("%'");
        Cursor c = contentResolver.query(uri, strArr, stringBuilder.toString(), null, null);
        if (c != null) {
            while (c.moveToNext()) {
                try {
                    if (TextUtils.equals(number, c.getString(0)) || number.startsWith(ExtraTelephony.BANK_CATEGORY_NUMBER_PREFIX_106)) {
                        c.close();
                        return true;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    c.close();
                }
            }
            c.close();
        }
        return false;
    }

    public static String getIvrMenuByNumber(Context context, String number) {
        Uri uri = Uri.withAppendedPath(Ivr.CONTENT_URI, number);
        if (!isContentProviderInstalled(context, uri)) {
            return null;
        }
        Cursor cursor = context.getContentResolver().query(uri, new String[]{"data"}, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    return string;
                }
                cursor.close();
            } finally {
                cursor.close();
            }
        }
        return null;
    }

    public static boolean isIvrMenuExist(Context context, String number) {
        Uri uri = Uri.withAppendedPath(Ivr.CONTENT_URI, number);
        if (!isContentProviderInstalled(context, uri)) {
            return false;
        }
        Cursor cursor = context.getContentResolver().query(uri, new String[]{"exist"}, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    boolean z = true;
                    if (cursor.getInt(0) != 1) {
                        z = false;
                    }
                    cursor.close();
                    return z;
                }
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
            }
        }
        return false;
    }

    public static boolean isRemindIgnoredUserSuspectNumber(Context context) {
        return getBooleanSettings(context, Settings.REMIND_USER_SUSPECT_NUMBER);
    }

    public static boolean isFraudNumOnlineIdentificationEnabled(Context context) {
        return getBooleanSettings(context, Settings.ONLINE_FRAUD_ENABLE);
    }

    public static boolean isFraudIncomingNumber(Context context, int simIndex, String incomingNumber, String yid) {
        Builder builder = PhoneLookup.CONTENT_FRAUD_VERIFY.buildUpon();
        builder.appendQueryParameter("simIndex", String.valueOf(simIndex));
        builder.appendQueryParameter("incoming", incomingNumber);
        builder.appendQueryParameter("yid", yid);
        Uri uri = builder.build();
        boolean z = false;
        if (!isContentProviderInstalled(context, uri)) {
            return false;
        }
        Cursor cursor = context.getContentResolver().query(uri, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) > 0) {
                        z = true;
                    }
                    cursor.close();
                    return z;
                }
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
            }
        }
        return false;
    }

    public static boolean isNeverRemindSmartAntispamEnable(Context context) {
        return getBooleanSettings(context, Settings.NEVER_REMIND_ENABLE_ANTISPAM);
    }

    /* JADX WARNING: Missing block: B:19:0x0071, code:
            if (r15 != null) goto L_0x0073;
     */
    /* JADX WARNING: Missing block: B:20:0x0073, code:
            r15.close();
     */
    /* JADX WARNING: Missing block: B:25:0x007d, code:
            if (r15 == null) goto L_0x0080;
     */
    /* JADX WARNING: Missing block: B:26:0x0080, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @Deprecated
    public static void informYellowpagePhoneEvent(Context context, long startTime, long endTime, String source, String type, int extraCallType, String extraNumber, int extraConnType) {
        JSONException e;
        Context context2;
        String str;
        String str2;
        String str3;
        int i;
        JSONObject extraData = new JSONObject();
        try {
            try {
                extraData.put(MipubPhoneEvent.EXTRA_DATA_DIRECTION, extraCallType);
            } catch (JSONException e2) {
                e = e2;
                context2 = context;
                str = source;
                str2 = type;
                str3 = extraNumber;
                i = extraConnType;
                e.printStackTrace();
            }
            try {
                extraData.put("number", extraNumber);
            } catch (JSONException e3) {
                e = e3;
                context2 = context;
                str = source;
                str2 = type;
                i = extraConnType;
                e.printStackTrace();
            }
            try {
                extraData.put(MipubPhoneEvent.EXTRA_DATA_CONNECTED, extraConnType);
                Uri uri = MipubPhoneEvent.CONTENT_URI_MIPUB_PHONE_EVENT.buildUpon().appendQueryParameter(MipubPhoneEvent.URI_PARAM_START_TIME, String.valueOf(startTime)).appendQueryParameter(MipubPhoneEvent.URI_PARAM_END_TIME, String.valueOf(endTime)).appendQueryParameter(MipubPhoneEvent.URI_PARAM_SOURCE, source).appendQueryParameter(MipubPhoneEvent.URI_PARAM_TYPE, type).appendQueryParameter(MipubPhoneEvent.URI_PARAM_EXTRA_DATA, Uri.encode(extraData.toString())).build();
                if (isContentProviderInstalled(context, uri)) {
                    Cursor cursor = null;
                    try {
                        cursor = context.getContentResolver().query(uri, null, null, null, null);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            } catch (JSONException e5) {
                e = e5;
                context2 = context;
                str = source;
                str2 = type;
                e.printStackTrace();
            }
        } catch (JSONException e6) {
            e = e6;
            context2 = context;
            str = source;
            str2 = type;
            int i2 = extraCallType;
            str3 = extraNumber;
            i = extraConnType;
            e.printStackTrace();
        }
    }

    private static boolean isCloudAntispamEnable(Context context) {
        return System.getInt(context.getContentResolver(), CLOUD_ANTISPAM, 0) == 1;
    }

    private static boolean getBooleanSettings(Context context, String key) {
        Uri uri = Uri.withAppendedPath(Settings.CONTENT_URI, key);
        boolean z = false;
        if (!isContentProviderInstalled(context, uri)) {
            return false;
        }
        Cursor cursor = context.getContentResolver().query(uri, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) > 0) {
                        z = true;
                    }
                    cursor.close();
                    return z;
                }
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
            }
        }
        return false;
    }

    private static void updateCloudPhoneInfo(Context context, String number) {
        update(context, Uri.withAppendedPath(PhoneLookup.CONTENT_URI_CLOUD, number), new ContentValues(), null, null);
    }

    private static YellowPagePhone buildYellowPagePhoneFromCursor(Cursor c, String number) {
        Cursor cursor = c;
        int providerId = cursor.getInt(1);
        String tag = cursor.getString(2);
        String ypName = cursor.getString(5);
        long ypId = cursor.getLong(0);
        String ypNamePinyin = cursor.getString(6);
        String tagPinyin = cursor.getString(7);
        String normalizedNumber = cursor.getString(9);
        boolean isVisible = cursor.getInt(8) > 0;
        boolean suspect = cursor.getInt(10) > 0;
        boolean hasCallMenu = cursor.getInt(11) > 0;
        long t9Rank = cursor.getLong(12);
        int atdId = cursor.getInt(13);
        String slogan = cursor.getString(14);
        int markedCount = cursor.getInt(15);
        int atdPid = cursor.getInt(16);
        String creditImg = cursor.getString(17);
        int numberType = cursor.getInt(18);
        int type = 0;
        if (ypId != -1) {
            type = 1;
        } else if (atdId > 0) {
            type = 2;
        }
        int numberType2 = numberType;
        int atdPid2 = atdPid;
        int atdId2 = atdId;
        String creditImg2 = creditImg;
        String slogan2 = slogan;
        long t9Rank2 = t9Rank;
        YellowPagePhone ypPhone = new YellowPagePhone(ypId, ypName, tag, number, normalizedNumber, type, providerId, markedCount, isVisible, ypNamePinyin, tagPinyin, suspect, hasCallMenu);
        ypPhone.setT9Rank(t9Rank2);
        ypPhone.setRawSlogan(slogan2);
        ypPhone.setCreditImg(creditImg2);
        ypPhone.setCid(atdId2);
        ypPhone.setAntispamProviderId(atdPid2);
        ypPhone.setNumberType(numberType2);
        return ypPhone;
    }

    private static YellowPagePhone queryPhoneInfo(Context context, String number, boolean fetchRemote) {
        Context context2 = context;
        String str = number;
        Uri uri = Uri.withAppendedPath(fetchRemote ? PhoneLookup.CONTENT_URI_CLOUD : PhoneLookup.CONTENT_URI, str);
        if (!isContentProviderInstalled(context2, uri)) {
            return null;
        }
        YellowPagePhone buildYellowPagePhoneFromCursor;
        Cursor c = context.getContentResolver().query(uri, PHONE_PROJECTION, null, null, null);
        if (c != null) {
            try {
                if (c.moveToFirst()) {
                    buildYellowPagePhoneFromCursor = buildYellowPagePhoneFromCursor(c, str);
                    c.close();
                    return buildYellowPagePhoneFromCursor;
                }
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Throwable th) {
                c.close();
            }
            c.close();
        }
        if (!fetchRemote) {
            c = context.getContentResolver().query(Uri.withAppendedPath(AntispamNumber.CONTENT_PHONE_LOOKUP_URI, str), ANTISPAM_PROJECTION, "type<>4", null, null);
            if (c != null) {
                try {
                    buildYellowPagePhoneFromCursor = buildAntispamInfoFromCursor(context2, c, str);
                    if (buildYellowPagePhoneFromCursor != null) {
                        c.close();
                        return buildYellowPagePhoneFromCursor;
                    }
                    if (antispamNumberNotInPresetFile(c)) {
                        c.close();
                        return null;
                    }
                    c.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                } catch (Throwable th2) {
                    c.close();
                }
            }
            c = context.getContentResolver().query(Uri.withAppendedPath(AntispamNumber.CONTENT_PRESET_PHONE_LOOKUP_URI, str), ANTISPAM_PROJECTION, null, null, null);
            if (c != null) {
                try {
                    buildYellowPagePhoneFromCursor = buildAntispamInfoFromCursor(context2, c, str);
                    if (buildYellowPagePhoneFromCursor != null) {
                        c.close();
                        return buildYellowPagePhoneFromCursor;
                    }
                } catch (Exception e22) {
                    Exception exception = e22;
                    e22.printStackTrace();
                } catch (Throwable th3) {
                    c.close();
                }
                c.close();
            }
        }
        return null;
    }

    /* JADX WARNING: Missing block: B:13:0x0021, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean antispamNumberNotInPresetFile(Cursor c) {
        if (c == null || c.getCount() == 0 || !c.moveToFirst()) {
            return false;
        }
        while (c.getInt(2) != 5) {
            if (!c.moveToNext()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Missing block: B:21:0x0081, code:
            if (r5 == 3) goto L_0x0087;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static YellowPagePhone buildAntispamInfoFromCursor(Context context, Cursor c, String number) {
        Cursor cursor = c;
        YellowPagePhone ypPhone = null;
        while (c.moveToNext()) {
            int cid = cursor.getInt(1);
            if (cid != 0) {
                String cidName = getCidName(context, cid);
                if (!TextUtils.isEmpty(cidName)) {
                    int type;
                    int i;
                    int providerId = cursor.getInt(0);
                    int type2 = cursor.getInt(2) == 3 ? 3 : 2;
                    int markedCount = cursor.getInt(3);
                    String normalizedNumber = cursor.getString(4);
                    int numberType = cursor.getInt(5);
                    String str = (2 != type2 || numberType == 0) ? cidName : "";
                    int numberType2 = numberType;
                    int type3 = type2;
                    YellowPagePhone phone = new YellowPagePhone(-1, null, str, number, normalizedNumber, type2, providerId, markedCount, true, null, null, cid);
                    phone.setNumberType(numberType2);
                    if (ypPhone != null) {
                        type = type3;
                        i = 3;
                    } else {
                        type = type3;
                        i = 3;
                    }
                    ypPhone = phone;
                    if (type == i) {
                        break;
                    }
                }
            } else {
                Log.d(TAG, "invalid cid");
                Context context2 = context;
            }
        }
        return ypPhone;
    }

    private static int update(Context context, Uri uri, ContentValues values, String where, String[] selectionArgs) {
        if (isContentProviderInstalled(context, uri)) {
            return context.getContentResolver().update(uri, values, where, selectionArgs);
        }
        Log.d(TAG, "update-The provider is not installed");
        return 0;
    }

    private static Uri insert(Context context, Uri uri, ContentValues values) {
        if (isContentProviderInstalled(context, uri)) {
            return context.getContentResolver().insert(uri, values);
        }
        Log.d(TAG, "insert-The provider is not installed");
        return null;
    }

    public static boolean isContentProviderInstalled(Context context, Uri uri) {
        if (context == null || uri == null) {
            return false;
        }
        ContentProviderClient client = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        if (client == null) {
            Log.e(TAG, "The content provider is not installed");
            return false;
        }
        client.release();
        return true;
    }

    public static String formatPreferenceKey(String key) {
        return String.format(TagPreference.PREF_FORMAT, new Object[]{key});
    }

    private static String getLogNumber(String number) {
        if (number == null || number.length() == 0) {
            return "[empty number]";
        }
        int len = number.length();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2;
        if (len <= 4) {
            while (true) {
                i2 = i;
                if (i2 >= len - 2) {
                    break;
                }
                sb.append(number.charAt(i2));
                i = i2 + 1;
            }
            i = Math.min(len, 2);
            for (i2 = 0; i2 < i; i2++) {
                sb.append("*");
            }
        } else if (len == 5 || len == 6) {
            while (true) {
                i2 = i;
                if (i2 >= len - 3) {
                    break;
                }
                sb.append(number.charAt(i2));
                i = i2 + 1;
            }
            sb.append(ExtraTelephony.PrefixCode);
        } else if (len > 6) {
            while (true) {
                i2 = i;
                if (i2 >= len - 4) {
                    break;
                }
                sb.append(number.charAt(i2));
                i = i2 + 1;
            }
            sb.append("****");
        }
        return sb.toString();
    }
}
