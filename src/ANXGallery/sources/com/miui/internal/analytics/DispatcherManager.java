package com.miui.internal.analytics;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.net.ConnectivityHelper;
import miui.security.DigestUtils;
import miui.telephony.TelephonyHelper;
import miui.text.ExtraTextUtils;

public class DispatcherManager {
    private static final String O = "_device_info_event_";
    private static final String P = "_device_imei_";
    private static final String Q = "_device_model_";
    private static final String TAG = "DispatcherManager";
    private Map<Dispatchable, String> K = new HashMap();
    private ObjectBuilder<Dispatchable> L = new ObjectBuilder();
    private EventReader M = new EventReader();
    private PolicyHelper N = new PolicyHelper();
    private Context mContext;

    public DispatcherManager(Context context) {
        this.mContext = context;
        this.L.registerClass(XiaomiDispatcher.class, XiaomiDispatcher.TAG);
    }

    public void switchDispatcher(Map<String, String> map) {
        this.K.clear();
        if (map != null) {
            for (String str : map.keySet()) {
                Dispatchable dispatchable = (Dispatchable) this.L.buildObject(str);
                if (dispatchable == null) {
                    Log.d(TAG, String.format("server:%s does not exist", new Object[]{str}));
                } else {
                    this.K.put(dispatchable, map.get(str));
                }
            }
            if (map.size() > 0) {
                Event.setDispatcher(new ArrayList(this.K.keySet()));
            }
        }
    }

    private void b(String str) {
        Object obj;
        Policy policy = this.N.getPolicy(NormalPolicy.TAG);
        Map hashMap = new HashMap();
        CharSequence deviceId = TelephonyHelper.getInstance().getDeviceId();
        if (TextUtils.isEmpty(deviceId)) {
            obj = "null";
        } else {
            obj = ExtraTextUtils.toHexReadable(DigestUtils.get(deviceId, "MD5"));
        }
        hashMap.put(P, obj);
        hashMap.put(Q, Build.MODEL);
        Event trackEvent = new TrackEvent(str, O, hashMap, 0);
        if (policy != null && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected() && EventUtils.enableWrite(this.mContext)) {
            policy.execute(trackEvent);
        }
    }

    public void dispatch(String str, List<Item> list) {
        for (Dispatchable dispatchable : this.K.keySet()) {
            dispatchable.start(this.mContext, (String) this.K.get(dispatchable));
        }
        this.N.clear();
        a(str, list);
        this.N.end();
        for (Dispatchable stop : this.K.keySet()) {
            stop.stop();
        }
    }

    private void a(String str, List<Item> list) {
        Object obj;
        this.M.open(this.mContext);
        EventReader eventReader = this.M;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("package = \"");
        stringBuilder.append(str);
        stringBuilder.append("\"");
        for (Event event : eventReader.readEvents(stringBuilder.toString(), list)) {
            Policy policy = this.N.getPolicy(event.getPolicy());
            if (policy != null) {
                if (!ConnectivityHelper.getInstance().isUnmeteredNetworkConnected() || !EventUtils.enableWrite(this.mContext)) {
                    obj = null;
                    break;
                }
                policy.execute(event);
            }
        }
        obj = 1;
        this.M.close();
        if (obj != null) {
            a.a().b();
        }
    }
}
