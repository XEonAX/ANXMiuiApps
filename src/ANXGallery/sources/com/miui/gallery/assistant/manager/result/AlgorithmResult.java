package com.miui.gallery.assistant.manager.result;

public abstract class AlgorithmResult {
    private final int resultCode;

    public AlgorithmResult(int resultCode) {
        this.resultCode = resultCode;
    }

    public int getResultCode() {
        return this.resultCode;
    }
}
