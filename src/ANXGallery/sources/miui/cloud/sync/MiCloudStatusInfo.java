package miui.cloud.sync;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.micloudsdk.cloudinfo.utils.CloudInfoUtils;
import java.util.ArrayList;
import miui.accounts.ExtraAccountManager;
import org.json.JSONException;
import org.json.JSONObject;

public class MiCloudStatusInfo {
    private QuotaInfo mQuotaInfo;
    private String mUserId;

    public class ItemInfo {
        private String mLocalizedName;
        private String mName;
        private long mUsed;

        public ItemInfo(String name, String localizedName, long used) {
            this.mName = name;
            this.mLocalizedName = localizedName;
            this.mUsed = used;
        }

        public String toString() {
            return "ItemInfo{mName=" + this.mName + ", mLocalizedName=" + this.mLocalizedName + ", mUsed='" + this.mUsed + '}';
        }
    }

    public class QuotaInfo {
        private ArrayList<ItemInfo> mItemInfoList = new ArrayList();
        private long mTotal;
        private long mUsed;
        private String mWarn;
        private long mYearlyPackageCreateTime;
        private long mYearlyPackageExpireTime;
        private long mYearlyPackageSize;
        private String mYearlyPackageType;

        public QuotaInfo(long total, long used, String warn, String yearlyPackageType, long yearlyPackageSize, long yearlyPackageCreateTime, long yearlyPackageExpireTime) {
            this.mTotal = total;
            this.mUsed = used;
            this.mWarn = warn;
            this.mYearlyPackageType = yearlyPackageType;
            this.mYearlyPackageSize = yearlyPackageSize;
            this.mYearlyPackageCreateTime = yearlyPackageCreateTime;
            this.mYearlyPackageExpireTime = yearlyPackageExpireTime;
        }

        public void addItemInfo(ItemInfo info) {
            this.mItemInfoList.add(info);
        }

        public long getTotal() {
            return this.mTotal;
        }

        public long getUsed() {
            return this.mUsed;
        }

        public String getWarn() {
            return this.mWarn;
        }

        public boolean isSpaceFull() {
            if ("full".equals(getWarn())) {
                return true;
            }
            return false;
        }

        public boolean isSpaceLowPercent() {
            if ("low_percent".equals(getWarn())) {
                return true;
            }
            return false;
        }

        public String toString() {
            return "QuotaInfo{mTotal=" + this.mTotal + ", mUsed=" + this.mUsed + ", mWarn='" + this.mWarn + '\'' + ", mYearlyPackageType='" + this.mYearlyPackageType + '\'' + ", mYearlyPackageSize=" + this.mYearlyPackageSize + ", mYearlyPackageCreateTime=" + this.mYearlyPackageCreateTime + ", mYearlyPackageExpireTime=" + this.mYearlyPackageExpireTime + ", mItemInfoList=" + this.mItemInfoList + '}';
        }
    }

    public MiCloudStatusInfo(String userId) {
        this.mUserId = userId;
    }

    public void parseQuotaString(String quota) {
        if (TextUtils.isEmpty(quota)) {
            Log.e("MiCloudStatusInfo", "parseQuotaString() quota is empty.");
            this.mQuotaInfo = null;
            return;
        }
        try {
            this.mQuotaInfo = CloudInfoUtils.getQuotaInfo(this, new JSONObject(quota));
        } catch (JSONException e) {
            Log.e("MiCloudStatusInfo", "catch JSONException in parseQuotaString()");
            this.mQuotaInfo = null;
        }
    }

    public QuotaInfo getQuotaInfo() {
        return this.mQuotaInfo;
    }

    public static MiCloudStatusInfo fromUserData(Context context) {
        AccountManager am = AccountManager.get(context);
        Account account = ExtraAccountManager.getXiaomiAccount(context);
        if (account == null) {
            return null;
        }
        String str = am.getUserData(account, "extra_micloud_status_info_quota");
        MiCloudStatusInfo statusInfo = new MiCloudStatusInfo(account.name);
        statusInfo.parseQuotaString(str);
        QuotaInfo qInfo = statusInfo.getQuotaInfo();
        if (qInfo != null && qInfo.getWarn() != null) {
            return statusInfo;
        }
        Log.w("MiCloudStatusInfo", "deserialize failed");
        am.setUserData(account, "extra_micloud_status_info_quota", "");
        return statusInfo;
    }
}
