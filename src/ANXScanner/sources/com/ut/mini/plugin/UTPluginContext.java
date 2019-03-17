package com.ut.mini.plugin;

import android.content.Context;

public class UTPluginContext {
    public static final int DEBUG_LOG_SWITCH = 1;
    private boolean U = false;
    private boolean V = false;
    private Context mContext = null;

    public void setContext(Context aContext) {
        this.mContext = aContext;
    }

    public Context getContext() {
        return this.mContext;
    }

    public void setDebugLogFlag(boolean aDebugLogFlag) {
        this.U = aDebugLogFlag;
    }

    public boolean isDebugLogEnable() {
        return this.U;
    }

    public void enableRealtimeDebug() {
        this.V = true;
    }

    public boolean isRealtimeDebugEnable() {
        return this.V;
    }
}
