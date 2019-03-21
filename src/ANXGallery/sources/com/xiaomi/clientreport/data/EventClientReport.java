package com.xiaomi.clientreport.data;

import com.xiaomi.channel.commonutils.logger.MyLog;
import org.json.JSONObject;

public class EventClientReport extends BaseClientReport {
    public String eventContent;
    public String eventId;
    public long eventTime;
    public int eventType;

    public JSONObject toJson() {
        try {
            JSONObject jo = super.toJson();
            if (jo == null) {
                return null;
            }
            jo.put("eventId", this.eventId);
            jo.put("eventType", this.eventType);
            jo.put("eventTime", this.eventTime);
            jo.put("eventContent", this.eventContent);
            return jo;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    public String toJsonString() {
        return super.toJsonString();
    }
}
