package com.xiaomi.micloudsdk.cloudinfo.utils;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.android.internal.SystemPropertiesCompat;
import java.util.Locale;
import miui.cloud.sync.MiCloudStatusInfo;
import miui.cloud.sync.MiCloudStatusInfo.ItemInfo;
import miui.cloud.sync.MiCloudStatusInfo.QuotaInfo;
import org.json.JSONArray;
import org.json.JSONObject;

public class CloudInfoUtils {
    private static String sUserAgent;

    public static String getUserAgent() {
        if (sUserAgent == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(Build.MODEL + "/");
            String miuiModel = SystemPropertiesCompat.get("ro.product.mod_device", "");
            if (TextUtils.isEmpty(miuiModel)) {
                sb.append(Build.MODEL);
            } else {
                sb.append(miuiModel);
            }
            sb.append("; MIUI/");
            sb.append(VERSION.INCREMENTAL);
            sb.append(" E/");
            sb.append(SystemPropertiesCompat.get("ro.miui.ui.version.name", ""));
            sb.append(" B/");
            if (miui.os.Build.IS_ALPHA_BUILD) {
                sb.append("A");
            } else if (miui.os.Build.IS_DEVELOPMENT_VERSION) {
                sb.append("D");
            } else if (miui.os.Build.IS_STABLE_VERSION) {
                sb.append("S");
            } else {
                sb.append("null");
            }
            sb.append(" L/");
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            if (language != null) {
                sb.append(convertObsoleteLanguageCodeToNew(language));
                String country = locale.getCountry();
                if (country != null) {
                    sb.append("-");
                    sb.append(country.toUpperCase());
                }
            } else {
                sb.append("EN");
            }
            sb.append(" LO/");
            String region = miui.os.Build.getRegion();
            if (TextUtils.isEmpty(region)) {
                sb.append("null");
            } else {
                sb.append(region.toUpperCase());
            }
            sUserAgent = sb.toString();
        }
        return sUserAgent;
    }

    public static QuotaInfo getQuotaInfo(MiCloudStatusInfo statusInfo, JSONObject jsonObject) {
        long total = jsonObject.optLong("Total");
        long used = jsonObject.optLong("Used");
        String warn = jsonObject.optString("Warn");
        String yearlyPackageType = jsonObject.optString("YearlyPackageType");
        long yearlyPackageSize = jsonObject.optLong("YearlyPackageSize");
        long yearlyPackageCreateTime = jsonObject.optLong("YearlyPackageCreateTime");
        long yearlyPackageExpireTime = jsonObject.optLong("YearlyPackageExpireTime");
        statusInfo.getClass();
        QuotaInfo quotaInfo = new QuotaInfo(total, used, warn, yearlyPackageType, yearlyPackageSize, yearlyPackageCreateTime, yearlyPackageExpireTime);
        JSONArray array = jsonObject.optJSONArray("ItemInfoList");
        if (array != null) {
            for (int index = 0; index < array.length(); index++) {
                ItemInfo itemInfo = getItemInfo(statusInfo, array.optJSONObject(index));
                if (itemInfo != null) {
                    quotaInfo.addItemInfo(itemInfo);
                }
            }
        }
        return quotaInfo;
    }

    public static ItemInfo getItemInfo(MiCloudStatusInfo statusInfo, JSONObject jsonObject) {
        if (jsonObject == null) {
            return null;
        }
        String name = jsonObject.optString("Name");
        String localizedName = jsonObject.optString("LocalizedName");
        long used = jsonObject.optLong("Used");
        statusInfo.getClass();
        return new ItemInfo(name, localizedName, used);
    }

    private static String convertObsoleteLanguageCodeToNew(String langCode) {
        if (langCode == null) {
            return null;
        }
        if ("iw".equals(langCode)) {
            return "he";
        }
        if ("in".equals(langCode)) {
            return "id";
        }
        if ("ji".equals(langCode)) {
            return "yi";
        }
        return langCode;
    }
}
