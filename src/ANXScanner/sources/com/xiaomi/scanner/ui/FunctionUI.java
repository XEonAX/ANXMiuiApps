package com.xiaomi.scanner.ui;

public interface FunctionUI {
    boolean handleMessage(int i, int i2, Object obj, Object obj2);

    void setMessageDispatcher(MessageDispatcher messageDispatcher);
}
