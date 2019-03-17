package com.alibaba.baichuan.trade.biz.core.taoke;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.Map;

public class AlibcTaokeParams implements Serializable {
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

    public AlibcTaokeParams setAdzoneid(String str) {
        this.adzoneid = str;
        return this;
    }

    public AlibcTaokeParams setPid(String str) {
        this.pid = str;
        return this;
    }

    public AlibcTaokeParams setSubPid(String str) {
        this.subPid = str;
        return this;
    }

    public AlibcTaokeParams setUnionId(String str) {
        this.unionId = str;
        return this;
    }

    public String toString() {
        return "AlibcTaokeParams{pid='" + this.pid + '\'' + ", unionId='" + this.unionId + '\'' + ", subPid='" + this.subPid + '\'' + ", adzoneid='" + this.adzoneid + '\'' + '}';
    }
}
