package com.xiaomi.analytics;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.analytics.internal.util.ALog;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public abstract class Action {
    protected static final String ACTION = "_action_";
    protected static final String CATEGORY = "_category_";
    protected static final String EVENT_ID = "_event_id_";
    protected static final String LABEL = "_label_";
    private static final String TAG = "Action";
    protected static final String VALUE = "_value_";
    private static Set<String> sKeywords = new HashSet();
    private JSONObject mContent = new JSONObject();
    private JSONObject mExtra = new JSONObject();

    static {
        sKeywords.add(EVENT_ID);
        sKeywords.add(CATEGORY);
        sKeywords.add(ACTION);
        sKeywords.add(LABEL);
        sKeywords.add(VALUE);
    }

    protected Action addEventId(String eventId) {
        addContent(EVENT_ID, (Object) eventId);
        return this;
    }

    public Action addParam(String key, JSONObject value) {
        ensureKey(key);
        addContent(key, (Object) value);
        return this;
    }

    public Action addParam(String key, int value) {
        ensureKey(key);
        addContent(key, value);
        return this;
    }

    public Action addParam(String key, long value) {
        ensureKey(key);
        addContent(key, value);
        return this;
    }

    public Action addParam(String key, String value) {
        ensureKey(key);
        addContent(key, (Object) value);
        return this;
    }

    void addContent(String key, int value) {
        if (!TextUtils.isEmpty(key)) {
            try {
                this.mContent.put(key, value);
            } catch (Exception e) {
                Log.e(ALog.addPrefix(TAG), "addContent int value e", e);
            }
        }
    }

    void addContent(String key, long value) {
        if (!TextUtils.isEmpty(key)) {
            try {
                this.mContent.put(key, value);
            } catch (Exception e) {
                Log.e(ALog.addPrefix(TAG), "addContent long value e", e);
            }
        }
    }

    void addContent(String key, Object value) {
        if (!TextUtils.isEmpty(key)) {
            try {
                this.mContent.put(key, value);
            } catch (Exception e) {
                Log.e(ALog.addPrefix(TAG), "addContent Object value e", e);
            }
        }
    }

    void addContent(JSONObject json) {
        if (json != null) {
            Iterator it = json.keys();
            while (it.hasNext()) {
                String key = it.next().toString();
                ensureKey(key);
                try {
                    this.mContent.put(key, json.get(key));
                } catch (Exception e) {
                    Log.e(ALog.addPrefix(TAG), "addContent e", e);
                }
            }
        }
    }

    void addExtra(String key, String value) {
        try {
            this.mExtra.put(key, value);
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "addExtra e", e);
        }
    }

    private void ensureKey(String key) {
        if (!TextUtils.isEmpty(key) && sKeywords.contains(key)) {
            throw new IllegalArgumentException("this key " + key + " is built-in, please pick another key.");
        }
    }

    final JSONObject getContent() {
        return this.mContent;
    }

    final JSONObject getExtra() {
        return this.mExtra;
    }
}
