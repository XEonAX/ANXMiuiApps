package com.miui.internal.log.format;

import com.miui.internal.log.Level;
import com.miui.internal.log.message.Message;

public interface Formatter {
    String format(String str, String str2, long j, Level level, Message message);

    String format(String str, String str2, long j, Level level, String str3, Throwable th);
}
