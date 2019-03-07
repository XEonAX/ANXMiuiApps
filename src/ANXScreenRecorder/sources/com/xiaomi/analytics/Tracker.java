package com.xiaomi.analytics;

import android.text.TextUtils;
import com.xiaomi.analytics.LogEvent.IdType;
import com.xiaomi.analytics.LogEvent.LogType;

public class Tracker extends BaseLogger {
    Tracker(String configKey) {
        super(configKey);
    }

    public void track(Action action) {
        if (action == null) {
            return;
        }
        if (action instanceof AdAction) {
            log(LogEvent.create(LogType.TYPE_AD).setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
        } else {
            log(LogEvent.create().setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
        }
    }

    public void track(Action action, IdType idType) {
        if (action == null) {
            return;
        }
        if (action instanceof AdAction) {
            log(LogEvent.create(LogType.TYPE_AD, idType).setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
        } else {
            log(LogEvent.create(idType).setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
        }
    }

    public void track(String appId, Action action) {
        if (action != null && !TextUtils.isEmpty(appId)) {
            if (action instanceof AdAction) {
                log(appId, LogEvent.create(LogType.TYPE_AD).setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
            } else {
                log(appId, LogEvent.create().setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
            }
        }
    }

    public void track(String appId, Action action, IdType idType) {
        if (action != null && !TextUtils.isEmpty(appId)) {
            if (action instanceof AdAction) {
                log(appId, LogEvent.create(LogType.TYPE_AD, idType).setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
            } else {
                log(appId, LogEvent.create(idType).setLogContent(action.getContent()).setExtraInfo(action.getExtra()));
            }
        }
    }
}
