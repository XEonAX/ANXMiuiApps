package com.alibaba.alibclinkpartner.plugin;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;

public class a {
    private LinkedHashMap<String, ALPBasePlugin> a = new LinkedHashMap();

    private boolean a(String[] strArr, String str) {
        if (strArr == null || strArr.length <= 0 || str == null) {
            return false;
        }
        for (Object equals : strArr) {
            if (str.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    public synchronized String a(String str) {
        String str2;
        if (str == null) {
            str2 = "";
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            for (ALPBasePlugin aLPBasePlugin : this.a.values()) {
                if (aLPBasePlugin != null && aLPBasePlugin.event.equals(str)) {
                    stringBuffer.append(aLPBasePlugin.pluginKey).append(",,");
                }
            }
            str2 = stringBuffer.toString();
            if (str2.endsWith(",")) {
                str2 = str2.substring(0, str2.length() - 2);
            }
        }
        return str2;
    }

    public synchronized void a(ALPBasePlugin aLPBasePlugin) {
        if (aLPBasePlugin != null) {
            if (aLPBasePlugin.pluginKey != null) {
                this.a.put(aLPBasePlugin.pluginKey, aLPBasePlugin);
            }
        }
    }

    public void a(String str, int i, Bundle bundle) {
        if (str != null) {
            for (String str2 : str.split(",")) {
                List<ALPBasePlugin> arrayList = new ArrayList();
                synchronized (a.class) {
                    for (ALPBasePlugin aLPBasePlugin : this.a.values()) {
                        if (aLPBasePlugin.pluginRules != null && a(aLPBasePlugin.pluginRules, str2)) {
                            arrayList.add(aLPBasePlugin);
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList);
                    for (ALPBasePlugin aLPBasePlugin2 : arrayList) {
                        if (aLPBasePlugin2.execute(i, bundle.getBundle("result") == null ? new Bundle() : bundle.getBundle("result"))) {
                            break;
                        }
                    }
                }
            }
        }
    }

    public synchronized void b(ALPBasePlugin aLPBasePlugin) {
        if (aLPBasePlugin != null) {
            if (aLPBasePlugin.pluginKey != null) {
                this.a.remove(aLPBasePlugin.pluginKey);
            }
        }
    }
}
