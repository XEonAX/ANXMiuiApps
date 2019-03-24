package com.miui.internal.log.message;

public interface Message {
    void format(Appendable appendable);

    Throwable getThrowable();

    boolean isRecycled();

    void prepareForReuse();

    void recycle();
}
