package com.alibaba.baichuan.android.trade.model;

import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcFailModeType;

public class AlibcShowParams {
    private boolean a;
    private OpenType b;
    private OpenType c;
    private AlibcFailModeType d;
    private String e;
    private String f;
    private String g;
    private boolean h;
    private boolean i;

    public AlibcShowParams() {
        this.a = true;
        this.d = AlibcFailModeType.AlibcNativeFailModeJumpH5;
        this.h = true;
        this.i = true;
        this.c = OpenType.Auto;
        this.f = "taobao";
    }

    public AlibcShowParams(OpenType openType, boolean z) {
        this.a = true;
        this.d = AlibcFailModeType.AlibcNativeFailModeJumpH5;
        this.h = true;
        this.i = true;
        this.c = openType;
        this.f = "taobao";
    }

    public String getBackUrl() {
        return this.e;
    }

    public String getClientType() {
        return this.f;
    }

    public AlibcFailModeType getNativeOpenFailedMode() {
        return this.d;
    }

    public OpenType getOpenType() {
        return this.c;
    }

    public OpenType getOriginalOpenType() {
        return this.b;
    }

    public String getTitle() {
        return this.g;
    }

    public boolean isClose() {
        return this.a;
    }

    public boolean isProxyWebview() {
        return this.i;
    }

    public boolean isShowTitleBar() {
        return this.h;
    }

    public void setBackUrl(String str) {
        this.e = str;
    }

    public void setClientType(String str) {
        this.f = str;
    }

    public void setNativeOpenFailedMode(AlibcFailModeType alibcFailModeType) {
        this.d = alibcFailModeType;
    }

    public void setOpenType(OpenType openType) {
        this.c = openType;
    }

    public void setOriginalOpenType(OpenType openType) {
        this.b = openType;
    }

    public void setPageClose(boolean z) {
        this.a = z;
    }

    public void setProxyWebview(boolean z) {
        this.i = z;
    }

    public void setShowTitleBar(boolean z) {
        this.h = z;
    }

    public void setTitle(String str) {
        this.g = str;
    }

    public String toString() {
        return "AlibcShowParams{isClose=" + this.a + ", openType=" + this.c + ", nativeOpenFailedMode=" + this.d + ", backUrl='" + this.e + '\'' + ", clientType='" + this.f + '\'' + ", title='" + this.g + '\'' + ", isShowTitleBar=" + this.h + ", isProxyWebview=" + this.i + '}';
    }
}
