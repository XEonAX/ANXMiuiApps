package com.xiaomi.scanner.bean;

public class PlantResult {
    public String requestId;
    public int resultCode;
    public String resultPage;
    public int sequenceId;

    public boolean isSuccess() {
        return this.resultCode == 1;
    }
}
