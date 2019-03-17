package com.alibaba.alibclinkpartner.plugin;

import android.os.Bundle;

public abstract class ALPBasePlugin implements Comparable<ALPBasePlugin> {
    public static final int PRIORITY_HIGH = 999;
    public static final int PRIORITY_LOW = 1;
    public static final int PRIORITY_MID = 500;
    public String event;
    public String pluginKey;
    public String[] pluginRules;
    public int prior;

    public ALPBasePlugin(String[] strArr, int i, String str, String str2) {
        if (strArr == null) {
            strArr = new String[0];
        }
        this.pluginRules = strArr;
        this.prior = i;
        if (str == null) {
            str = "";
        }
        this.pluginKey = str;
        if (str2 == null) {
            str2 = "";
        }
        this.event = str2;
    }

    public ALPBasePlugin(String[] strArr, String str, String str2) {
        this(strArr, 500, str, str2);
    }

    public int compareTo(ALPBasePlugin aLPBasePlugin) {
        return aLPBasePlugin != null ? -(this.prior - aLPBasePlugin.prior) : 0;
    }

    public abstract boolean execute(int i, Bundle bundle);
}
