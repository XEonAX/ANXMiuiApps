package com.xiaomi.clientreport.data;

import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.util.ClientReportUtil;
import org.json.JSONObject;

public class BaseClientReport {
    public String clientInterfaceId;
    private String miuiVersion = MIUIUtils.getMIUIType();
    private String os = ClientReportUtil.getOs();
    private String pkgName;
    public int production;
    public int reportType;

    public void setAppPackageName(String args) {
        this.pkgName = args;
    }

    public JSONObject toJson() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("production", this.production);
            jsonObject.put("reportType", this.reportType);
            jsonObject.put("clientInterfaceId", this.clientInterfaceId);
            jsonObject.put("os", this.os);
            jsonObject.put("miuiVersion", this.miuiVersion);
            jsonObject.put("pkgName", this.pkgName);
            return jsonObject;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    public String toJsonString() {
        JSONObject jsonObject = toJson();
        return jsonObject == null ? "" : jsonObject.toString();
    }
}
