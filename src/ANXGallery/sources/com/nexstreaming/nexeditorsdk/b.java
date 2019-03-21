package com.nexstreaming.nexeditorsdk;

/* compiled from: nexObserver */
class b {
    protected boolean mClipTimeUpdated = true;
    protected int mEffectLoad2Engine;
    protected boolean mNeedLoadList = true;

    b() {
    }

    void updateTimeLine(boolean z) {
        this.mNeedLoadList = true;
        if (!z) {
            this.mClipTimeUpdated = true;
        }
    }

    boolean setEffectLoad(int i) {
        if (this.mEffectLoad2Engine == i) {
            return false;
        }
        this.mEffectLoad2Engine = i;
        return true;
    }
}
