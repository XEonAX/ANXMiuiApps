package com.xiaomi.analytics;

import android.util.Log;
import com.xiaomi.analytics.internal.util.ALog;
import org.json.JSONObject;

public class LogEvent {
    private static final int JSON_VERSION = 2;
    private static final String KEY_APPID = "appId";
    private static final String KEY_CONFIG_KEY = "configKey";
    private static final String KEY_EVENT_TIME = "eventTime";
    private static final String KEY_ID_TYPE = "idType";
    private static final String KEY_JSON_VER = "v";
    private static final String KEY_LOG_CONTENT = "content";
    private static final String KEY_LOG_EXTRA = "extra";
    private static final String KEY_LOG_TYPE = "logType";
    private static final String KEY_SESSIONID = "sessionId";
    private static final String TAG = "LogEvent";
    private long mEventTime = System.currentTimeMillis();
    private JSONObject mExtra = new JSONObject();
    private IdType mIdType = IdType.TYPE_DEFAULT;
    private JSONObject mLogContent = new JSONObject();
    private LogType mLogType = LogType.TYPE_EVENT;

    public enum IdType {
        TYPE_DEFAULT(0),
        TYPE_IMEI(1),
        TYPE_MAC(2),
        TYPE_ANDROID_ID(3),
        TYPE_AAID(4),
        TYPE_GAID(5),
        TYPE_GUID(6);
        
        private int mValue;

        private IdType(int value) {
            this.mValue = 0;
            this.mValue = value;
        }

        public int value() {
            return this.mValue;
        }
    }

    public enum LogType {
        TYPE_EVENT(0),
        TYPE_AD(1);
        
        private int mValue;

        private LogType(int value) {
            this.mValue = 0;
            this.mValue = value;
        }

        public static LogType valueOf(int value) {
            switch (value) {
                case 1:
                    return TYPE_AD;
                default:
                    return TYPE_EVENT;
            }
        }

        public int value() {
            return this.mValue;
        }
    }

    public LogEvent(LogType type) {
        if (type != null) {
            this.mLogType = type;
        }
    }

    public LogEvent(IdType idType) {
        if (idType != null) {
            this.mIdType = idType;
        }
    }

    public LogEvent(LogType type, IdType idType) {
        if (type != null) {
            this.mLogType = type;
        }
        if (idType != null) {
            this.mIdType = idType;
        }
    }

    LogEvent setExtraInfo(JSONObject extra) {
        if (extra != null) {
            this.mExtra = extra;
        }
        return this;
    }

    LogEvent setLogContent(JSONObject json) {
        if (json != null) {
            this.mLogContent = json;
        }
        return this;
    }

    public String pack(String appId, String configKey, String sessionId) {
        JSONObject json = new JSONObject();
        try {
            json.put(KEY_JSON_VER, 2);
            json.put(KEY_APPID, appId);
            json.put(KEY_SESSIONID, sessionId);
            json.put(KEY_CONFIG_KEY, configKey);
            json.put("content", this.mLogContent.toString());
            json.put(KEY_EVENT_TIME, this.mEventTime);
            json.put(KEY_LOG_TYPE, this.mLogType.value());
            json.put(KEY_LOG_EXTRA, this.mExtra.toString());
            json.put(KEY_ID_TYPE, this.mIdType.value());
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "pack e", e);
        }
        return json.toString();
    }

    public static LogEvent create() {
        return new LogEvent();
    }

    public static LogEvent create(IdType idType) {
        return new LogEvent(idType);
    }

    public static LogEvent create(LogType type) {
        return new LogEvent(type);
    }

    public static LogEvent create(LogType type, IdType idType) {
        return new LogEvent(type, idType);
    }
}
