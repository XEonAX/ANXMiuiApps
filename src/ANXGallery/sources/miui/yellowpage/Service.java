package miui.yellowpage;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.payment.PaymentManager;
import miui.yellowpage.Tag.TagServicesData;
import miui.yellowpage.YellowPageContract.Method;
import org.json.JSONException;
import org.json.JSONObject;

public class Service {
    private static final String TAG = "Service";
    private String mActions;
    private Map<String, Integer> mExtraData;
    private String mIcon;
    private boolean mIsMiFamily;
    private int mMid;
    private String mName;
    private String mRawData;

    public int getMid() {
        return this.mMid;
    }

    public String getName() {
        return this.mName;
    }

    public String getIcon() {
        return this.mIcon;
    }

    public Map<String, Integer> getExtraData() {
        return this.mExtraData;
    }

    public String getActions() {
        return this.mActions;
    }

    public String getRawData() {
        return this.mRawData;
    }

    public boolean getIsMiFamily() {
        return this.mIsMiFamily;
    }

    public Service setMid(int mid) {
        this.mMid = mid;
        return this;
    }

    public Service setName(String name) {
        this.mName = name;
        return this;
    }

    public Service setIcon(String icon) {
        this.mIcon = icon;
        return this;
    }

    public Service setExtraData(Map<String, Integer> extraData) {
        this.mExtraData = extraData;
        return this;
    }

    public Service setActions(String actions) {
        this.mActions = actions;
        return this;
    }

    public Service setIsMiFamily(boolean isMiFamily) {
        this.mIsMiFamily = isMiFamily;
        return this;
    }

    public boolean hasExtraData() {
        if (this.mExtraData == null || this.mExtraData.size() == 0) {
            return false;
        }
        return true;
    }

    public void setRawData(String rawData) {
        this.mRawData = rawData;
    }

    public List<String> getMiStatKeyArgs(String style) {
        List<String> args = new ArrayList();
        if (!TextUtils.isEmpty(style)) {
            args.add(style);
        }
        args.add(String.valueOf(this.mMid));
        if (!TextUtils.isEmpty(this.mName)) {
            args.add(this.mName);
        }
        return args;
    }

    public static Service fromJson(String json) {
        if (TextUtils.isEmpty(json)) {
            return null;
        }
        try {
            return fromJson(new JSONObject(json));
        } catch (JSONException e) {
            Log.e(TAG, "Failed to get json object! ", e);
            return null;
        }
    }

    public static Service fromJson(JSONObject json) {
        if (json == null) {
            return null;
        }
        String isPromote;
        int mid = json.optInt("mid");
        String name = json.optString("name");
        String icon = json.optString("icon");
        JSONObject extraData = json.optJSONObject("extraData");
        Map<String, Integer> extraDataMap = new HashMap();
        if (extraData != null) {
            isPromote = TagServicesData.SERVICE_IS_PROMOTE;
            String isHot = TagServicesData.SERVICE_IS_HOT;
            String isNew = TagServicesData.SERVICE_IS_NEW;
            extraDataMap.put(isPromote, Integer.valueOf(extraData.optInt(isPromote)));
            extraDataMap.put(isHot, Integer.valueOf(extraData.optInt(isHot)));
            extraDataMap.put(isNew, Integer.valueOf(extraData.optInt(isNew)));
        }
        isPromote = json.optString(TagServicesData.SERVICE_ACTIONS);
        boolean isMiFamily = json.optBoolean(TagServicesData.IS_MIFAMILY_ENTRANCE);
        if (TextUtils.isEmpty(name)) {
            return null;
        }
        return new Service().setMid(mid).setName(name).setIcon(icon).setExtraData(extraDataMap).setActions(isPromote).setIsMiFamily(isMiFamily);
    }

    public static void serviceOnClick(Context context, String rawData) {
        serviceOnClick(context, rawData, null, null);
    }

    public static void serviceOnClick(Context context, String rawData, String statSource, String statDisplay) {
        try {
            JSONObject json = new JSONObject(rawData);
            Intent intent = (Intent) InvocationHandler.invoke(context, Method.MODULE_TO_INTENT, rawData).getParcelable(PaymentManager.KEY_INTENT);
            if (intent != null) {
                int mid = json.optInt("mid", 0);
                intent.putExtra(Tag.Intent.EXTRA_WEB_TITLE, json.optString("name"));
                intent.putExtra("mid", mid);
                String url = intent.getStringExtra(Tag.Intent.EXTRA_WEB_URL);
                context.startActivity(intent);
                YellowPageStatistic.clickModuleItem(context, String.valueOf(mid), url, statSource, statDisplay, 0);
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to get json object! ", e);
        }
    }
}
