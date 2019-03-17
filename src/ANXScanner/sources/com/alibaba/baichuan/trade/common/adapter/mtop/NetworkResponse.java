package com.alibaba.baichuan.trade.common.adapter.mtop;

import java.io.Serializable;
import java.util.Map;

public class NetworkResponse implements Serializable {
    private static final long serialVersionUID = 4727273919493253017L;
    public byte[] byteData;
    public Map<String, Object> data;
    public String errorCode;
    public String errorMsg;
    public String httpCode;
    public boolean isSuccess;
    public String jsonData;
    public Object object;

    public boolean isSuccess() {
        return this.isSuccess;
    }
}
