package com.alibaba.baichuan.trade.biz.applink.adapter;

import com.alibaba.wireless.security.SecExceptionCode;

public class AlibcNavResult {
    public boolean isSuccess = false;
    public int resultCode = 0;

    public boolean isFailByNoApp() {
        return !this.isSuccess && this.resultCode == SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA;
    }

    public String toString() {
        return "AlibcNavResult{isSuccess=" + this.isSuccess + ", resultCode=" + this.resultCode + '}';
    }
}
