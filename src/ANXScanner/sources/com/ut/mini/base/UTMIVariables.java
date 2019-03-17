package com.ut.mini.base;

import com.ut.mini.sdkevents.UTMI1010_2001Event;

public class UTMIVariables {
    private static UTMIVariables a = new UTMIVariables();
    private boolean S = false;
    /* renamed from: a */
    private UTMI1010_2001Event f93a = null;
    private String aj = null;
    private String am = null;
    private String an = null;

    public synchronized void setToAliyunOSPlatform() {
        this.S = true;
    }

    public synchronized boolean isAliyunOSPlatform() {
        return this.S;
    }

    public synchronized void setUTMI1010_2001EventInstance(UTMI1010_2001Event aInstance) {
        this.a = aInstance;
    }

    public synchronized UTMI1010_2001Event getUTMI1010_2001EventInstance() {
        return this.a;
    }

    public static UTMIVariables getInstance() {
        return a;
    }

    public String getH5Url() {
        return this.an;
    }

    public void setH5Url(String aH5Url) {
        this.an = aH5Url;
    }

    public String getRefPage() {
        return this.aj;
    }

    public void setRefPage(String aRefPage) {
        this.aj = aRefPage;
    }

    public String getH5RefPage() {
        return this.am;
    }

    public void setH5RefPage(String aH5PrePage) {
        this.am = aH5PrePage;
    }
}
