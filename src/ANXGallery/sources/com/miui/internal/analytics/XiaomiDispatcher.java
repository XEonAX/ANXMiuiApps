package com.miui.internal.analytics;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Base64;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.security.DigestUtils;
import miui.telephony.TelephonyHelper;
import miui.text.ExtraTextUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class XiaomiDispatcher implements Dispatchable {
    private static final String EVENT_ID = "_ei_";
    public static final int MAX_EVENT_NUM = 10000;
    private static final String MODEL = "_mod_";
    public static final String TAG = "xiaomi";
    private static final String aB = "_et_";
    private static final String aC = "_ev_";
    private static final String aD = "_ett_";
    private static final String aE = "_app_";
    private static final String aF = "_log_event_class_";
    private static final String aG = "_log_event_message_";
    private static final String aH = "imei";
    private static final String aI = "_miuiver_";
    private static final String aJ = "_di_";
    private static final String aK = "_logs_";
    private Map<String, Object> aA = new HashMap();
    private XiaomiServer ay = XiaomiServer.getInstance();
    private List<JSONObject> az = new ArrayList();

    public void start(Context context, String str) {
        this.ay.init();
        try {
            Object obj;
            Object obj2;
            CharSequence deviceId = TelephonyHelper.getInstance().getDeviceId();
            if (TextUtils.isEmpty(deviceId)) {
                obj = "null";
                obj2 = "null";
            } else {
                obj2 = Base64.encodeToString(DigestUtils.get(deviceId, DigestUtils.ALGORITHM_SHA_1), 8).substring(0, 16);
                obj = ExtraTextUtils.toHexReadable(DigestUtils.get(deviceId, "MD5"));
            }
            this.aA.put(aJ, obj2);
            this.aA.put(aH, obj);
            this.aA.put(aE, str);
            this.aA.put(aB, Integer.valueOf(2));
            this.aA.put(aI, VERSION.INCREMENTAL);
            this.aA.put(MODEL, Build.MODEL);
        } catch (Exception e) {
        }
    }

    public void stop() {
        h();
        this.ay.close();
    }

    public void dispatchLog(LogEvent logEvent) {
        if (this.ay != null) {
            Map b = b(logEvent);
            b.put(aF, logEvent.getErrorClass());
            b.put(aG, logEvent.getMessage());
            this.ay.send(b);
        }
    }

    public void dispatchEvent(TrackEvent trackEvent) {
        if (this.ay != null && this.az != null) {
            Map b = b(trackEvent);
            Map param = trackEvent.getParam();
            if (param != null) {
                for (String str : param.keySet()) {
                    b.put(str, param.get(str));
                }
            }
            b.put(aC, Long.valueOf(trackEvent.getValue()));
            this.az.add(new JSONObject(b));
            if (this.az.size() >= 10000) {
                h();
            }
        }
    }

    public void dispatchPageView(TrackPageViewEvent trackPageViewEvent) {
        if (this.ay != null) {
            this.ay.send(b(trackPageViewEvent));
        }
    }

    private Map<String, Object> b(Event event) {
        Map<String, Object> hashMap = new HashMap();
        hashMap.put(EVENT_ID, event.getEventId());
        hashMap.put(aD, Long.valueOf(event.getTrackTime()));
        return hashMap;
    }

    private void h() {
        if (this.az != null && !this.az.isEmpty()) {
            if (!(this.ay == null || this.aA == null)) {
                this.aA.put(aK, new JSONArray(this.az));
                this.ay.send(this.aA);
                this.aA.remove(aK);
            }
            this.az.clear();
        }
    }
}
