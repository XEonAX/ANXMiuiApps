package com.xiaomi.mipush.sdk;

public enum AssemblePush {
    ASSEMBLE_PUSH_HUAWEI(1),
    ASSEMBLE_PUSH_FCM(2),
    ASSEMBLE_PUSH_COS(3);
    
    private int mValue;

    private AssemblePush(int code) {
        this.mValue = code;
    }
}
