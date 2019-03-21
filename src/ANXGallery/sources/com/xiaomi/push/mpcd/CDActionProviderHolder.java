package com.xiaomi.push.mpcd;

public class CDActionProviderHolder {
    private static volatile CDActionProviderHolder sInstance;
    private CDActionProvider mCDActionProvider;

    public static CDActionProviderHolder getInstance() {
        if (sInstance == null) {
            synchronized (CDActionProviderHolder.class) {
                if (sInstance == null) {
                    sInstance = new CDActionProviderHolder();
                }
            }
        }
        return sInstance;
    }

    public CDActionProvider getCDActionProvider() {
        return this.mCDActionProvider;
    }

    public void setCDActionProvider(CDActionProvider cdActionProvider) {
        this.mCDActionProvider = cdActionProvider;
    }
}
