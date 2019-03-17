package com.ali.auth.third.core.model;

import java.util.ArrayList;

public class RpcRequest {
    public ArrayList<String> paramNames = new ArrayList();
    public ArrayList<Object> paramValues = new ArrayList();
    public String target;
    public String version;

    public void addParam(String str, Object obj) {
        this.paramNames.add(str);
        this.paramValues.add(obj);
    }

    public String toString() {
        return "RpcRequest [target=" + this.target + ", version=" + this.version + ", params=" + "]";
    }
}
