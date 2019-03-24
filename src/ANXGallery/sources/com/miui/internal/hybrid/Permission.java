package com.miui.internal.hybrid;

public class Permission {
    private String fC;
    private boolean fD;
    private boolean fE;

    public String getUri() {
        return this.fC;
    }

    public void setUri(String str) {
        this.fC = str;
    }

    public boolean isApplySubdomains() {
        return this.fD;
    }

    public void setApplySubdomains(boolean z) {
        this.fD = z;
    }

    public boolean isForbidden() {
        return this.fE;
    }

    public void setForbidden(boolean z) {
        this.fE = z;
    }
}
