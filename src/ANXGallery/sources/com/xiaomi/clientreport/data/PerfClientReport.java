package com.xiaomi.clientreport.data;

import com.xiaomi.channel.commonutils.logger.MyLog;
import org.json.JSONObject;

public class PerfClientReport extends BaseClientReport {
    public int code;
    public long perfCounts = -1;
    public long perfLatencies = -1;

    public static PerfClientReport getBlankInstance() {
        return new PerfClientReport();
    }

    public JSONObject toJson() {
        try {
            JSONObject jo = super.toJson();
            if (jo == null) {
                return null;
            }
            jo.put("code", this.code);
            jo.put("perfCounts", this.perfCounts);
            jo.put("perfLatencies", this.perfLatencies);
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
