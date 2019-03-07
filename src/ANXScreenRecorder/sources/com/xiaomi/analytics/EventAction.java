package com.xiaomi.analytics;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.analytics.internal.util.ALog;

public class EventAction extends Action {
    protected static final String EVENT_DEFAULT_PARAM = "_event_default_param_";
    private String mEventName;

    public EventAction(String eventName) {
        this(eventName, null);
    }

    public EventAction(String eventName, String parameter) {
        if (TextUtils.isEmpty(eventName)) {
            Log.w(ALog.addPrefix("EventAction"), "eventName is null when constructing EventAction!");
        }
        this.mEventName = eventName;
        addEventId(this.mEventName);
        if (parameter != null && !TextUtils.isEmpty(parameter)) {
            addParam(EVENT_DEFAULT_PARAM, parameter);
        }
    }
}
