package com.miui.internal.log.appender;

import com.miui.internal.log.Level;
import com.miui.internal.log.format.Formatter;
import com.miui.internal.log.message.Message;

public interface Appender {
    void append(String str, String str2, long j, Level level, Message message);

    void append(String str, String str2, long j, Level level, String str3, Throwable th);

    void close();

    Formatter getFormatter();

    void setFormatter(Formatter formatter);
}
