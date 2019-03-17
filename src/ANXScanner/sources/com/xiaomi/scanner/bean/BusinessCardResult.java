package com.xiaomi.scanner.bean;

import java.util.List;

public class BusinessCardResult {
    public BusinessResultInfo businessCardResult;
    public String requestId;
    public int resultCode;
    public int sequenceId;

    public static class BusinessResultInfo {
        public List<BusinessCardItem> businessCardItems;
        public int notEmpty;
    }
}
