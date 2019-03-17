package com.alibaba.baichuan.trade.biz.context;

import android.text.TextUtils;
import java.util.Map;

public class AlibcTradeTaokeParam {
    public static final String PID_PREFIX = "mm_";
    public String adzoneid;
    public Map<String, String> extraParams;
    public String pid;
    public String subPid;
    public String unionId;

    public boolean isAdZoneIdExist() {
        return !TextUtils.isEmpty(this.adzoneid);
    }

    public boolean isPidExist() {
        return isValidPid();
    }

    public boolean isValidPid() {
        return this.pid != null && this.pid.startsWith("mm_");
    }

    public AlibcTradeTaokeParam setAdzoneid(String str) {
        this.adzoneid = str;
        return this;
    }

    public AlibcTradeTaokeParam setPid(String str) {
        this.pid = str;
        return this;
    }

    public AlibcTradeTaokeParam setSubPid(String str) {
        this.subPid = str;
        return this;
    }

    public AlibcTradeTaokeParam setUnionId(String str) {
        this.unionId = str;
        return this;
    }
}
