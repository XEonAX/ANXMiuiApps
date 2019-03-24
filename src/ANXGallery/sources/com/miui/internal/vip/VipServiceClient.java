package com.miui.internal.vip;

import android.content.Context;
import android.text.TextUtils;
import com.miui.internal.vip.protocol.Convertor;
import com.miui.internal.vip.protocol.PortraitData;
import com.miui.internal.vip.utils.AuthHttpRequest;
import com.miui.internal.vip.utils.DeviceHelper;
import com.miui.internal.vip.utils.JsonParser;
import com.miui.internal.vip.utils.RunnableHelper;
import com.miui.internal.vip.utils.Utils;
import com.miui.internal.vip.utils.VipDataPref;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import miui.os.C0015Build;
import miui.vip.QueryCallback;
import miui.vip.VipAchievement;
import miui.vip.VipUserInfo;

public class VipServiceClient {
    private static final String CMD_PORTRAIT = "/user/portrait";
    private static final String CMD_TONGJI = "/tongji/page";
    private static final String KEY_DATA = "portrait_data";
    private static final String PARAM_NAME = "name";
    private static final String PREF_NAME = "xiaomi_vip_portrait_data";
    private final CopyOnWriteArrayList<WeakReference<QueryCallback>> mCallbacks = new CopyOnWriteArrayList();
    private final Context mCtx;
    private PortraitData mData;
    private final boolean mIsServiceAvailable;
    private VipDataPref mPref;

    static abstract class Selector {
        public boolean isRemoveFoundItem = false;

        public abstract boolean isFound(QueryCallback queryCallback);

        Selector() {
        }
    }

    static class ConnectData {
        public List<VipAchievement> achievements;
        public boolean isServiceAvailable;
        public VipUserInfo userInfo;

        ConnectData() {
        }
    }

    private class ListenerSelector extends Selector {
        QueryCallback mListener;

        ListenerSelector(QueryCallback listener) {
            this.mListener = listener;
        }

        public boolean isFound(QueryCallback callback) {
            return callback.equals(this.mListener);
        }
    }

    public VipServiceClient(Context ctx) {
        this.mCtx = ctx;
        boolean z = localCheck() && Utils.getPackageInfo(VipConstants.VIP_PACKAGE) != null;
        this.mIsServiceAvailable = z;
        this.mPref = new VipDataPref(ctx, PREF_NAME);
        String strPortrait = this.mPref.getString(KEY_DATA);
        if (!TextUtils.isEmpty(strPortrait)) {
            this.mData = (PortraitData) JsonParser.parseJsonObject(strPortrait, PortraitData.class);
        }
    }

    public static boolean localCheck() {
        return (C0015Build.IS_INTERNATIONAL_BUILD || DeviceHelper.isPad()) ? false : true;
    }

    public void connect(QueryCallback callback) {
        if (this.mIsServiceAvailable) {
            Utils.log("VipService, connect, callback = %s", callback);
            addConnectCallback(callback);
            queryPortraitInfo();
            notifyResult(callback, 8, new VipResponse(0, getConnectData()));
        }
    }

    private ConnectData getConnectData() {
        ConnectData connect = new ConnectData();
        boolean z = this.mIsServiceAvailable && this.mData != null;
        connect.isServiceAvailable = z;
        if (this.mData != null) {
            connect.userInfo = Convertor.toVipUserInfo(this.mData.level);
            connect.achievements = Convertor.toVipAchievement(this.mData.badgeList);
        }
        return connect;
    }

    public void disconnect(QueryCallback listener) {
        removeCallback(listener);
    }

    public void sendStatistic(String data) {
        if (!JsonParser.isEmptyJson(new AuthHttpRequest(CMD_TONGJI, "name", data).queryAsString())) {
            Utils.logI("send statistic failed, ret = %s", new AuthHttpRequest(CMD_TONGJI, "name", data).queryAsString());
        }
    }

    public boolean isConnected() {
        return true;
    }

    private void addConnectCallback(QueryCallback listener) {
        if (listener != null && searchCallback(new ListenerSelector(listener)).isEmpty()) {
            this.mCallbacks.add(new WeakReference(listener));
        }
    }

    private List<QueryCallback> searchCallback(Selector selector) {
        List<QueryCallback> matchList = new ArrayList();
        List removeList = null;
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            WeakReference<QueryCallback> ref = (WeakReference) it.next();
            QueryCallback callback = (QueryCallback) ref.get();
            boolean remove = false;
            if (callback == null) {
                remove = true;
            } else if (selector.isFound(callback)) {
                if (selector.isRemoveFoundItem) {
                    remove = true;
                } else {
                    matchList.add(callback);
                }
            }
            if (remove) {
                if (removeList == null) {
                    removeList = new ArrayList();
                }
                removeList.add(ref);
            }
        }
        if (Utils.hasData(removeList)) {
            this.mCallbacks.removeAll(removeList);
        }
        return matchList;
    }

    private void removeCallback(QueryCallback listener) {
        if (listener != null) {
            ListenerSelector selector = new ListenerSelector(listener);
            selector.isRemoveFoundItem = true;
            searchCallback(selector);
        }
    }

    public void queryUserVipInfo() {
        notifyResult(1, new VipResponse(this.mData != null ? 0 : 1006, this.mData != null ? Convertor.toVipUserInfo(this.mData.level) : null));
    }

    public void queryAchievements() {
        notifyResult(16, new VipResponse(this.mData != null ? 0 : 1006, this.mData != null ? Convertor.toVipAchievement(this.mData.badgeList) : null));
    }

    public void queryBanners() {
        notifyResult(64, new VipResponse(this.mData != null ? 0 : 1006, this.mData != null ? Convertor.toVipBanner(this.mData.bannerList) : null));
    }

    private void queryPortraitInfo() {
        String data = new AuthHttpRequest(CMD_PORTRAIT, new String[0]).queryAsString();
        PortraitData portraitData = (PortraitData) JsonParser.parseJsonObject(data, PortraitData.class);
        if (portraitData != null) {
            this.mData = portraitData;
            this.mPref.setString(KEY_DATA, data);
        }
    }

    private void notifyResult(final int type, final VipResponse res) {
        searchCallback(new Selector() {
            public boolean isFound(QueryCallback callback) {
                if (!callback.isMonitorType(type)) {
                    return false;
                }
                VipServiceClient.this.notifyResult(callback, type, res);
                return true;
            }
        });
    }

    private void notifyResult(final QueryCallback callback, final int type, final VipResponse res) {
        if (callback != null) {
            RunnableHelper.runInUIThread(new Runnable() {
                public void run() {
                    VipServiceClient.this.invokeCallback(type, res, callback);
                }
            });
        }
    }

    private void invokeCallback(int type, VipResponse result, QueryCallback callback) {
        if (result != null && callback != null) {
            if (type == 1) {
                callback.onUserInfo(result.state, (VipUserInfo) result.value, result.errMsg);
            } else if (type == 8) {
                ConnectData data = result.value;
                callback.onConnected(data.isServiceAvailable, data.userInfo, data.achievements);
            } else if (type == 16) {
                callback.onAchievements(result.state, (List) result.value, result.errMsg);
            } else if (type == 64) {
                callback.onBanners(result.state, (List) result.value, result.errMsg);
            }
        }
    }
}
