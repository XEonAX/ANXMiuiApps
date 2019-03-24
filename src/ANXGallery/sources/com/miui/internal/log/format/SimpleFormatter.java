package com.miui.internal.log.format;

import com.miui.internal.log.Level;
import com.miui.internal.log.message.Message;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Calendar;

public class SimpleFormatter implements Formatter {
    private static final String gP = " - ";
    private ThreadLocal<ThreadCache> gI = new ThreadLocal<ThreadCache>() {
        /* renamed from: P */
        protected ThreadCache initialValue() {
            return new ThreadCache();
        }
    };

    private static class CachedDateFormat {
        private static final int gR = 1000;
        private static final int gS = 60000;
        private static final int gT = 6;
        private static final int gU = 3;
        private StringBuilder gV;
        private Calendar gW;
        private long gX;
        private long gY;
        private long gZ;

        private CachedDateFormat() {
            this.gV = new StringBuilder();
            this.gW = Calendar.getInstance();
        }

        /* synthetic */ CachedDateFormat(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a(StringBuilder stringBuilder, long j) {
            if (j != this.gX) {
                int i;
                if (this.gY == 0 || j < this.gY || j >= this.gY + 60000) {
                    a(j);
                    this.gY = (j / 60000) * 60000;
                    this.gZ = (j / 1000) * 1000;
                } else if (j < this.gZ || j >= this.gZ + 1000) {
                    i = (int) (j - this.gY);
                    int i2 = i / 1000;
                    int i3 = i2 * 1000;
                    i -= i3;
                    this.gV.setLength(this.gV.length() - 6);
                    a(this.gV, i2, 2).append(',');
                    a(this.gV, i, 3);
                    this.gZ = this.gY + ((long) i3);
                } else {
                    i = (int) (j - this.gZ);
                    this.gV.setLength(this.gV.length() - 3);
                    a(this.gV, i, 3);
                }
                this.gX = j;
            }
            stringBuilder.append(this.gV);
        }

        private void a(long j) {
            this.gV.setLength(0);
            this.gW.setTimeInMillis(j);
            StringBuilder stringBuilder = this.gV;
            stringBuilder.append(this.gW.get(1));
            stringBuilder.append('-');
            a(this.gV, this.gW.get(2) + 1, 2).append('-');
            a(this.gV, this.gW.get(5), 2).append(' ');
            a(this.gV, this.gW.get(11), 2).append(':');
            a(this.gV, this.gW.get(12), 2).append(':');
            a(this.gV, this.gW.get(13), 2).append(',');
            a(this.gV, this.gW.get(14), 3);
        }

        private StringBuilder a(StringBuilder stringBuilder, int i, int i2) {
            switch (i2) {
                case 2:
                    if (i < 10) {
                        stringBuilder.append('0');
                    }
                    stringBuilder.append(i);
                    break;
                case 3:
                    if (i < 10) {
                        stringBuilder.append("00");
                    } else if (i < 100) {
                        stringBuilder.append('0');
                    }
                    stringBuilder.append(i);
                    break;
                default:
                    stringBuilder.append(i);
                    break;
            }
            return stringBuilder;
        }
    }

    private static class StringBuilderWriter extends Writer {
        private StringBuilder ha;

        public StringBuilderWriter(StringBuilder stringBuilder) {
            this.ha = stringBuilder;
        }

        public void close() throws IOException {
        }

        public void flush() throws IOException {
        }

        public void write(char[] cArr, int i, int i2) throws IOException {
            checkOffsetAndCount(cArr.length, i, i2);
            if (i2 != 0) {
                this.ha.append(cArr, i, i2);
            }
        }

        private static void checkOffsetAndCount(int i, int i2, int i3) {
            if ((i2 | i3) < 0 || i2 > i || i - i2 < i3) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("length=");
                stringBuilder.append(i);
                stringBuilder.append("; regionStart=");
                stringBuilder.append(i2);
                stringBuilder.append("; regionLength=");
                stringBuilder.append(i3);
                throw new ArrayIndexOutOfBoundsException(stringBuilder.toString());
            }
        }
    }

    private static class ThreadCache {
        CachedDateFormat hb = new CachedDateFormat();
        PrintWriter hc = new PrintWriter(new StringBuilderWriter(this.out));
        StringBuilder out = new StringBuilder();

        ThreadCache() {
        }
    }

    public String format(String str, String str2, long j, Level level, String str3, Throwable th) {
        return a(str, str2, j, level, str3, null, th);
    }

    public String format(String str, String str2, long j, Level level, Message message) {
        return a(str, str2, j, level, null, message, message.getThrowable());
    }

    private String a(String str, String str2, long j, Level level, String str3, Message message, Throwable th) {
        ThreadCache threadCache = (ThreadCache) this.gI.get();
        Appendable appendable = threadCache.out;
        appendable.setLength(0);
        threadCache.hb.a(appendable, j);
        appendable.append(gP);
        appendable.append('[');
        appendable.append(level.name());
        appendable.append("::");
        appendable.append(str);
        appendable.append(']');
        appendable.append(gP);
        appendable.append(str2);
        appendable.append(": ");
        if (str3 == null) {
            message.format(appendable);
        } else {
            appendable.append(str3);
        }
        appendable.append(10);
        if (th != null) {
            th.printStackTrace(threadCache.hc);
        }
        if (appendable.length() > 8192) {
            appendable.setLength(8192);
            appendable.trimToSize();
        }
        return appendable.toString();
    }
}
