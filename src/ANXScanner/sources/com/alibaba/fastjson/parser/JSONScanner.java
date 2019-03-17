package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.TimeZone;

public final class JSONScanner extends JSONLexerBase {
    private final int len;
    private final String text;

    public JSONScanner(String input) {
        this(input, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(String input, int features) {
        super(features);
        this.text = input;
        this.len = this.text.length();
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    public final char charAt(int index) {
        if (index >= this.len) {
            return JSONLexer.EOI;
        }
        return this.text.charAt(index);
    }

    public final char next() {
        char c;
        int index = this.bp + 1;
        this.bp = index;
        if (index >= this.len) {
            c = JSONLexer.EOI;
        } else {
            c = this.text.charAt(index);
        }
        this.ch = c;
        return c;
    }

    public JSONScanner(char[] input, int inputLength) {
        this(input, inputLength, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] input, int inputLength, int features) {
        this(new String(input, 0, inputLength), features);
    }

    protected final void copyTo(int offset, int count, char[] dest) {
        this.text.getChars(offset, offset + count, dest, 0);
    }

    static boolean charArrayCompare(String src, int offset, char[] dest) {
        int destLen = dest.length;
        if (destLen + offset > src.length()) {
            return false;
        }
        for (int i = 0; i < destLen; i++) {
            if (dest[i] != src.charAt(offset + i)) {
                return false;
            }
        }
        return true;
    }

    public final boolean charArrayCompare(char[] chars) {
        return charArrayCompare(this.text, this.bp, chars);
    }

    public final int indexOf(char ch, int startIndex) {
        return this.text.indexOf(ch, startIndex);
    }

    public final String addSymbol(int offset, int len, int hash, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, offset, len, hash);
    }

    public byte[] bytesValue() {
        if (this.token != 26) {
            return IOUtils.decodeBase64(this.text, this.np + 1, this.sp);
        }
        int start = this.np + 1;
        int len = this.sp;
        if (len % 2 != 0) {
            throw new JSONException("illegal state. " + len);
        }
        byte[] bArr = new byte[(len / 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2;
            char c0 = this.text.charAt((i * 2) + start);
            char c1 = this.text.charAt(((i * 2) + start) + 1);
            if (c0 <= '9') {
                i2 = 48;
            } else {
                i2 = 55;
            }
            int b0 = c0 - i2;
            if (c1 <= '9') {
                i2 = 48;
            } else {
                i2 = 55;
            }
            bArr[i] = (byte) ((b0 << 4) | (c1 - i2));
        }
        return bArr;
    }

    public final String stringVal() {
        if (this.hasSpecial) {
            return new String(this.sbuf, 0, this.sp);
        }
        return subString(this.np + 1, this.sp);
    }

    public final String subString(int offset, int count) {
        if (!ASMUtils.IS_ANDROID) {
            return this.text.substring(offset, offset + count);
        }
        if (count < this.sbuf.length) {
            this.text.getChars(offset, offset + count, this.sbuf, 0);
            return new String(this.sbuf, 0, count);
        }
        char[] chars = new char[count];
        this.text.getChars(offset, offset + count, chars, 0);
        return new String(chars);
    }

    public final char[] sub_chars(int offset, int count) {
        if (!ASMUtils.IS_ANDROID || count >= this.sbuf.length) {
            char[] chars = new char[count];
            this.text.getChars(offset, offset + count, chars, 0);
            return chars;
        }
        this.text.getChars(offset, offset + count, this.sbuf, 0);
        return this.sbuf;
    }

    public final String numberString() {
        char chLocal = charAt((this.np + this.sp) - 1);
        int sp = this.sp;
        if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B' || chLocal == 'F' || chLocal == 'D') {
            sp--;
        }
        return subString(this.np, sp);
    }

    public final BigDecimal decimalValue() {
        char chLocal = charAt((this.np + this.sp) - 1);
        int sp = this.sp;
        if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B' || chLocal == 'F' || chLocal == 'D') {
            sp--;
        }
        int offset = this.np;
        int count = sp;
        if (count < this.sbuf.length) {
            this.text.getChars(offset, offset + count, this.sbuf, 0);
            return new BigDecimal(this.sbuf, 0, count);
        }
        char[] chars = new char[count];
        this.text.getChars(offset, offset + count, chars, 0);
        return new BigDecimal(chars);
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:96:0x02e5  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x02d5  */
    /* JADX WARNING: Missing block: B:44:0x013a, code:
            if (r34 != ' ') goto L_0x013c;
     */
    /* JADX WARNING: Missing block: B:48:0x0152, code:
            if (charAt(r75.bp + 6) != '-') goto L_0x0154;
     */
    /* JADX WARNING: Missing block: B:83:0x0297, code:
            if (charAt(r75.bp + 16) != 'Z') goto L_0x0299;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean scanISO8601DateIfMatch(boolean strict) {
        char c0;
        char c1;
        char c2;
        char c3;
        char c4;
        char c5;
        char c10;
        char c6;
        char c7;
        char c8;
        char c9;
        char y0;
        char y1;
        char y2;
        char y3;
        char M0;
        char M1;
        char d0;
        char d1;
        char h0;
        char h1;
        char m0;
        char m1;
        char s0;
        char s1;
        char S0;
        int millis;
        char S1;
        char S2;
        int rest = this.len - this.bp;
        if (!strict && rest > 13) {
            c0 = charAt(this.bp);
            c1 = charAt(this.bp + 1);
            c2 = charAt(this.bp + 2);
            c3 = charAt(this.bp + 3);
            c4 = charAt(this.bp + 4);
            c5 = charAt(this.bp + 5);
            char c_r0 = charAt((this.bp + rest) - 1);
            char c_r1 = charAt((this.bp + rest) - 2);
            if (c0 == '/' && c1 == 'D' && c2 == 'a' && c3 == 't' && c4 == 'e' && c5 == '(' && c_r0 == '/' && c_r1 == ')') {
                int plusIndex = -1;
                for (int i = 6; i < rest; i++) {
                    char c = charAt(this.bp + i);
                    if (c != '+') {
                        if (c < '0' || c > '9') {
                            break;
                        }
                    } else {
                        plusIndex = i;
                    }
                }
                if (plusIndex == -1) {
                    return false;
                }
                int offset = this.bp + 6;
                long millis2 = Long.parseLong(subString(offset, plusIndex - offset));
                this.calendar = Calendar.getInstance(this.timeZone, this.locale);
                this.calendar.setTimeInMillis(millis2);
                this.token = 5;
                return true;
            }
        }
        if (!(rest == 8 || rest == 14)) {
            if (rest == 16) {
                c10 = charAt(this.bp + 10);
                if (c10 != 'T') {
                }
            }
            if (rest == 17) {
            }
            if (rest < 9) {
                return false;
            }
            c0 = charAt(this.bp);
            c1 = charAt(this.bp + 1);
            c2 = charAt(this.bp + 2);
            c3 = charAt(this.bp + 3);
            c4 = charAt(this.bp + 4);
            c5 = charAt(this.bp + 5);
            c6 = charAt(this.bp + 6);
            c7 = charAt(this.bp + 7);
            c8 = charAt(this.bp + 8);
            c9 = charAt(this.bp + 9);
            int date_len = 10;
            if ((c4 == '-' && c7 == '-') || (c4 == '/' && c7 == '/')) {
                y0 = c0;
                y1 = c1;
                y2 = c2;
                y3 = c3;
                M0 = c5;
                M1 = c6;
                d0 = c8;
                d1 = c9;
            } else if (c4 == '-' && c6 == '-') {
                y0 = c0;
                y1 = c1;
                y2 = c2;
                y3 = c3;
                M0 = '0';
                M1 = c5;
                if (c8 == ' ') {
                    d0 = '0';
                    d1 = c7;
                    date_len = 8;
                } else {
                    d0 = c7;
                    d1 = c8;
                    date_len = 9;
                }
            } else if ((c2 == '.' && c5 == '.') || (c2 == '-' && c5 == '-')) {
                d0 = c0;
                d1 = c1;
                M0 = c3;
                M1 = c4;
                y0 = c6;
                y1 = c7;
                y2 = c8;
                y3 = c9;
            } else if (c4 != 24180 && c4 != 45380) {
                return false;
            } else {
                y0 = c0;
                y1 = c1;
                y2 = c2;
                y3 = c3;
                if (c7 == 26376 || c7 == 50900) {
                    M0 = c5;
                    M1 = c6;
                    if (c9 == 26085 || c9 == 51068) {
                        d0 = '0';
                        d1 = c8;
                    } else {
                        if (charAt(this.bp + 10) != 26085) {
                            if (charAt(this.bp + 10) != 51068) {
                                return false;
                            }
                        }
                        d0 = c8;
                        d1 = c9;
                        date_len = 11;
                    }
                } else if (c6 != 26376 && c6 != 50900) {
                    return false;
                } else {
                    M0 = '0';
                    M1 = c5;
                    if (c8 == 26085 || c8 == 51068) {
                        d0 = '0';
                        d1 = c7;
                    } else if (c9 != 26085 && c9 != 51068) {
                        return false;
                    } else {
                        d0 = c7;
                        d1 = c8;
                    }
                }
            }
            if (!checkDate(y0, y1, y2, y3, M0, M1, d0, d1)) {
                return false;
            }
            setCalendar(y0, y1, y2, y3, M0, M1, d0, d1);
            char t = charAt(this.bp + date_len);
            int i2;
            if (t == 'T' || (t == ' ' && !strict)) {
                if (rest < date_len + 9) {
                    return false;
                }
                if (charAt((this.bp + date_len) + 3) != ':') {
                    return false;
                }
                if (charAt((this.bp + date_len) + 6) != ':') {
                    return false;
                }
                h0 = charAt((this.bp + date_len) + 1);
                h1 = charAt((this.bp + date_len) + 2);
                m0 = charAt((this.bp + date_len) + 4);
                m1 = charAt((this.bp + date_len) + 5);
                s0 = charAt((this.bp + date_len) + 7);
                s1 = charAt((this.bp + date_len) + 8);
                if (!checkTime(h0, h1, m0, m1, s0, s1)) {
                    return false;
                }
                setTime(h0, h1, m0, m1, s0, s1);
                char dot = charAt((this.bp + date_len) + 9);
                String[] timeZoneIDs;
                if (dot != '.') {
                    this.calendar.set(14, 0);
                    i2 = this.bp + (date_len + 9);
                    this.bp = i2;
                    this.ch = charAt(i2);
                    this.token = 5;
                    if (dot == 'Z' && this.calendar.getTimeZone().getRawOffset() != 0) {
                        timeZoneIDs = TimeZone.getAvailableIDs(0);
                        if (timeZoneIDs.length > 0) {
                            this.calendar.setTimeZone(TimeZone.getTimeZone(timeZoneIDs[0]));
                        }
                    }
                    return true;
                } else if (rest < date_len + 11) {
                    return false;
                } else {
                    S0 = charAt((this.bp + date_len) + 10);
                    if (S0 < '0' || S0 > '9') {
                        return false;
                    }
                    millis = S0 - 48;
                    int millisLen = 1;
                    if (rest > date_len + 11) {
                        S1 = charAt((this.bp + date_len) + 11);
                        if (S1 >= '0' && S1 <= '9') {
                            millis = (millis * 10) + (S1 - 48);
                            millisLen = 2;
                        }
                    }
                    if (millisLen == 2) {
                        S2 = charAt((this.bp + date_len) + 12);
                        if (S2 >= '0' && S2 <= '9') {
                            millis = (millis * 10) + (S2 - 48);
                            millisLen = 3;
                        }
                    }
                    this.calendar.set(14, millis);
                    int timzeZoneLength = 0;
                    char timeZoneFlag = charAt(((this.bp + date_len) + 10) + millisLen);
                    if (timeZoneFlag == '+' || timeZoneFlag == '-') {
                        char t0 = charAt((((this.bp + date_len) + 10) + millisLen) + 1);
                        if (t0 < '0' || t0 > '1') {
                            return false;
                        }
                        char t1 = charAt((((this.bp + date_len) + 10) + millisLen) + 2);
                        if (t1 < '0' || t1 > '9') {
                            return false;
                        }
                        char t2 = charAt((((this.bp + date_len) + 10) + millisLen) + 3);
                        if (t2 == ':') {
                            if (charAt((((this.bp + date_len) + 10) + millisLen) + 4) != '0') {
                                return false;
                            }
                            if (charAt((((this.bp + date_len) + 10) + millisLen) + 5) != '0') {
                                return false;
                            }
                            timzeZoneLength = 6;
                        } else if (t2 == '0') {
                            if (charAt((((this.bp + date_len) + 10) + millisLen) + 4) != '0') {
                                return false;
                            }
                            timzeZoneLength = 5;
                        } else {
                            timzeZoneLength = 3;
                        }
                        setTimeZone(timeZoneFlag, t0, t1);
                    } else if (timeZoneFlag == 'Z') {
                        timzeZoneLength = 1;
                        if (this.calendar.getTimeZone().getRawOffset() != 0) {
                            timeZoneIDs = TimeZone.getAvailableIDs(0);
                            if (timeZoneIDs.length > 0) {
                                this.calendar.setTimeZone(TimeZone.getTimeZone(timeZoneIDs[0]));
                            }
                        }
                    }
                    char end = charAt(this.bp + (((date_len + 10) + millisLen) + timzeZoneLength));
                    if (end != 26 && end != '\"') {
                        return false;
                    }
                    i2 = this.bp + (((date_len + 10) + millisLen) + timzeZoneLength);
                    this.bp = i2;
                    this.ch = charAt(i2);
                    this.token = 5;
                    return true;
                }
            } else if (t == '\"' || t == 26 || t == 26085 || t == 51068) {
                this.calendar.set(11, 0);
                this.calendar.set(12, 0);
                this.calendar.set(13, 0);
                this.calendar.set(14, 0);
                i2 = this.bp + date_len;
                this.bp = i2;
                this.ch = charAt(i2);
                this.token = 5;
                return true;
            } else if (t != '+' && t != '-') {
                return false;
            } else {
                if (this.len != date_len + 6) {
                    return false;
                }
                if (charAt((this.bp + date_len) + 3) == ':') {
                    if (charAt((this.bp + date_len) + 4) == '0') {
                        if (charAt((this.bp + date_len) + 5) == '0') {
                            setTime('0', '0', '0', '0', '0', '0');
                            this.calendar.set(14, 0);
                            setTimeZone(t, charAt((this.bp + date_len) + 1), charAt((this.bp + date_len) + 2));
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        if (strict) {
            return false;
        }
        c0 = charAt(this.bp);
        c1 = charAt(this.bp + 1);
        c2 = charAt(this.bp + 2);
        c3 = charAt(this.bp + 3);
        c4 = charAt(this.bp + 4);
        c5 = charAt(this.bp + 5);
        c6 = charAt(this.bp + 6);
        c7 = charAt(this.bp + 7);
        c8 = charAt(this.bp + 8);
        boolean c_47 = c4 == '-' && c7 == '-';
        boolean sperate16 = c_47 && rest == 16;
        boolean sperate17 = c_47 && rest == 17;
        if (sperate17 || sperate16) {
            y0 = c0;
            y1 = c1;
            y2 = c2;
            y3 = c3;
            M0 = c5;
            M1 = c6;
            d0 = c8;
            d1 = charAt(this.bp + 9);
        } else {
            y0 = c0;
            y1 = c1;
            y2 = c2;
            y3 = c3;
            M0 = c4;
            M1 = c5;
            d0 = c6;
            d1 = c7;
        }
        if (!checkDate(y0, y1, y2, y3, M0, M1, d0, d1)) {
            return false;
        }
        int hour;
        int minute;
        int seconds;
        setCalendar(y0, y1, y2, y3, M0, M1, d0, d1);
        if (rest != 8) {
            c9 = charAt(this.bp + 9);
            c10 = charAt(this.bp + 10);
            char c11 = charAt(this.bp + 11);
            char c12 = charAt(this.bp + 12);
            char c13 = charAt(this.bp + 13);
            if (sperate17 && c10 == 'T' && c13 == ':') {
            }
            if (!(sperate16 && ((c10 == ' ' || c10 == 'T') && c13 == ':'))) {
                h0 = c8;
                h1 = c9;
                m0 = c10;
                m1 = c11;
                s0 = c12;
                s1 = c13;
                if (checkTime(h0, h1, m0, m1, s0, s1)) {
                    return false;
                }
                if (rest != 17 || sperate17) {
                    millis = 0;
                } else {
                    S0 = charAt(this.bp + 14);
                    S1 = charAt(this.bp + 15);
                    S2 = charAt(this.bp + 16);
                    if (S0 < '0' || S0 > '9') {
                        return false;
                    }
                    if (S1 < '0' || S1 > '9') {
                        return false;
                    }
                    if (S2 < '0' || S2 > '9') {
                        return false;
                    }
                    millis = (((S0 - 48) * 100) + ((S1 - 48) * 10)) + (S2 - 48);
                }
                hour = ((h0 - 48) * 10) + (h1 - 48);
                minute = ((m0 - 48) * 10) + (m1 - 48);
                seconds = ((s0 - 48) * 10) + (s1 - 48);
            }
            h0 = c11;
            h1 = c12;
            m0 = charAt(this.bp + 14);
            m1 = charAt(this.bp + 15);
            s0 = '0';
            s1 = '0';
            if (checkTime(h0, h1, m0, m1, s0, s1)) {
            }
        } else {
            hour = 0;
            minute = 0;
            seconds = 0;
            millis = 0;
        }
        this.calendar.set(11, hour);
        this.calendar.set(12, minute);
        this.calendar.set(13, seconds);
        this.calendar.set(14, millis);
        this.token = 5;
        return true;
    }

    protected void setTime(char h0, char h1, char m0, char m1, char s0, char s1) {
        int minute = ((m0 - 48) * 10) + (m1 - 48);
        int seconds = ((s0 - 48) * 10) + (s1 - 48);
        this.calendar.set(11, ((h0 - 48) * 10) + (h1 - 48));
        this.calendar.set(12, minute);
        this.calendar.set(13, seconds);
    }

    protected void setTimeZone(char timeZoneFlag, char t0, char t1) {
        int timeZoneOffset = ((((t0 - 48) * 10) + (t1 - 48)) * 3600) * 1000;
        if (timeZoneFlag == '-') {
            timeZoneOffset = -timeZoneOffset;
        }
        if (this.calendar.getTimeZone().getRawOffset() != timeZoneOffset) {
            String[] timeZoneIDs = TimeZone.getAvailableIDs(timeZoneOffset);
            if (timeZoneIDs.length > 0) {
                this.calendar.setTimeZone(TimeZone.getTimeZone(timeZoneIDs[0]));
            }
        }
    }

    private boolean checkTime(char h0, char h1, char m0, char m1, char s0, char s1) {
        if (h0 == '0') {
            if (h1 < '0' || h1 > '9') {
                return false;
            }
        } else if (h0 == '1') {
            if (h1 < '0' || h1 > '9') {
                return false;
            }
        } else if (h0 != '2' || h1 < '0' || h1 > '4') {
            return false;
        }
        if (m0 < '0' || m0 > '5') {
            if (!(m0 == '6' && m1 == '0')) {
                return false;
            }
        } else if (m1 < '0' || m1 > '9') {
            return false;
        }
        if (s0 < '0' || s0 > '5') {
            if (!(s0 == '6' && s1 == '0')) {
                return false;
            }
        } else if (s1 < '0' || s1 > '9') {
            return false;
        }
        return true;
    }

    private void setCalendar(char y0, char y1, char y2, char y3, char M0, char M1, char d0, char d1) {
        this.calendar = Calendar.getInstance(this.timeZone, this.locale);
        int month = (((M0 - 48) * 10) + (M1 - 48)) - 1;
        int day = ((d0 - 48) * 10) + (d1 - 48);
        this.calendar.set(1, ((((y0 - 48) * 1000) + ((y1 - 48) * 100)) + ((y2 - 48) * 10)) + (y3 - 48));
        this.calendar.set(2, month);
        this.calendar.set(5, day);
    }

    static boolean checkDate(char y0, char y1, char y2, char y3, char M0, char M1, int d0, int d1) {
        if ((y0 != '1' && y0 != '2') || y1 < '0' || y1 > '9' || y2 < '0' || y2 > '9' || y3 < '0' || y3 > '9') {
            return false;
        }
        if (M0 == '0') {
            if (M1 < '1' || M1 > '9') {
                return false;
            }
        } else if (M0 != '1') {
            return false;
        } else {
            if (!(M1 == '0' || M1 == '1' || M1 == '2')) {
                return false;
            }
        }
        if (d0 == 48) {
            if (d1 < 49 || d1 > 57) {
                return false;
            }
        } else if (d0 == 49 || d0 == 50) {
            if (d1 < 48 || d1 > 57) {
                return false;
            }
        } else if (d0 != 51) {
            return false;
        } else {
            if (!(d1 == 48 || d1 == 49)) {
                return false;
            }
        }
        return true;
    }

    public boolean isEOF() {
        return this.bp == this.len || (this.ch == JSONLexer.EOI && this.bp + 1 == this.len);
    }

    public int scanFieldInt(char[] fieldName) {
        boolean negative = true;
        this.matchStat = 0;
        int startPos = this.bp;
        char startChar = this.ch;
        if (charArrayCompare(this.text, this.bp, fieldName)) {
            boolean quote;
            int index = this.bp + fieldName.length;
            int index2 = index + 1;
            char ch = charAt(index);
            if (ch == '\"') {
                quote = true;
            } else {
                quote = false;
            }
            if (quote) {
                index = index2 + 1;
                ch = charAt(index2);
                index2 = index;
            }
            if (ch != '-') {
                negative = false;
            }
            if (negative) {
                index = index2 + 1;
                ch = charAt(index2);
            } else {
                index = index2;
            }
            if (ch < '0' || ch > '9') {
                this.matchStat = -1;
                return 0;
            }
            int value = ch - 48;
            while (true) {
                index2 = index + 1;
                ch = charAt(index);
                if (ch >= '0' && ch <= '9') {
                    value = (value * 10) + (ch - 48);
                    index = index2;
                }
            }
            if (ch == '.') {
                this.matchStat = -1;
                return 0;
            } else if (value < 0) {
                this.matchStat = -1;
                return 0;
            } else {
                if (quote) {
                    if (ch != '\"') {
                        this.matchStat = -1;
                        return 0;
                    }
                    index = index2 + 1;
                    ch = charAt(index2);
                    index2 = index;
                }
                while (ch != ',' && ch != '}') {
                    if (JSONLexerBase.isWhitespace(ch)) {
                        index = index2 + 1;
                        ch = charAt(index2);
                        index2 = index;
                    } else {
                        this.matchStat = -1;
                        return 0;
                    }
                }
                this.bp = index2 - 1;
                int i;
                if (ch == ',') {
                    i = this.bp + 1;
                    this.bp = i;
                    this.ch = charAt(i);
                    this.matchStat = 3;
                    this.token = 16;
                    if (negative) {
                        return -value;
                    }
                    return value;
                }
                if (ch == '}') {
                    this.bp = index2 - 1;
                    int i2 = this.bp + 1;
                    this.bp = i2;
                    ch = charAt(i2);
                    while (ch != ',') {
                        if (ch == ']') {
                            this.token = 15;
                            i = this.bp + 1;
                            this.bp = i;
                            this.ch = charAt(i);
                            break;
                        } else if (ch == '}') {
                            this.token = 13;
                            i = this.bp + 1;
                            this.bp = i;
                            this.ch = charAt(i);
                            break;
                        } else if (ch == JSONLexer.EOI) {
                            this.token = 20;
                            break;
                        } else if (JSONLexerBase.isWhitespace(ch)) {
                            i2 = this.bp + 1;
                            this.bp = i2;
                            ch = charAt(i2);
                        } else {
                            this.bp = startPos;
                            this.ch = startChar;
                            this.matchStat = -1;
                            return 0;
                        }
                    }
                    this.token = 16;
                    i = this.bp + 1;
                    this.bp = i;
                    this.ch = charAt(i);
                    this.matchStat = 4;
                }
                if (negative) {
                    return -value;
                }
                return value;
            }
        }
        this.matchStat = -2;
        return 0;
    }

    public String scanFieldString(char[] fieldName) {
        this.matchStat = 0;
        int startPos = this.bp;
        char startChar = this.ch;
        if (charArrayCompare(this.text, this.bp, fieldName)) {
            int length = this.bp + fieldName.length;
            int index = length + 1;
            if (charAt(length) != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            int startIndex = index;
            int endIndex = indexOf('\"', startIndex);
            if (endIndex == -1) {
                throw new JSONException("unclosed str");
            }
            String stringVal = subString(startIndex, endIndex - startIndex);
            if (stringVal.indexOf(92) != -1) {
                while (true) {
                    int slashCount = 0;
                    int i = endIndex - 1;
                    while (i >= 0 && charAt(i) == '\\') {
                        slashCount++;
                        i--;
                    }
                    if (slashCount % 2 == 0) {
                        break;
                    }
                    endIndex = indexOf('\"', endIndex + 1);
                }
                int chars_len = endIndex - ((this.bp + fieldName.length) + 1);
                stringVal = JSONLexerBase.readString(sub_chars((this.bp + fieldName.length) + 1, chars_len), chars_len);
            }
            char ch = charAt(endIndex + 1);
            while (ch != ',' && ch != '}') {
                if (JSONLexerBase.isWhitespace(ch)) {
                    endIndex++;
                    ch = charAt(endIndex + 1);
                } else {
                    this.matchStat = -1;
                    return stringDefaultValue();
                }
            }
            this.bp = endIndex + 1;
            this.ch = ch;
            String strVal = stringVal;
            int i2;
            if (ch == ',') {
                i2 = this.bp + 1;
                this.bp = i2;
                this.ch = charAt(i2);
                this.matchStat = 3;
                return strVal;
            }
            i2 = this.bp + 1;
            this.bp = i2;
            ch = charAt(i2);
            if (ch == ',') {
                this.token = 16;
                i2 = this.bp + 1;
                this.bp = i2;
                this.ch = charAt(i2);
            } else if (ch == ']') {
                this.token = 15;
                i2 = this.bp + 1;
                this.bp = i2;
                this.ch = charAt(i2);
            } else if (ch == '}') {
                this.token = 13;
                i2 = this.bp + 1;
                this.bp = i2;
                this.ch = charAt(i2);
            } else if (ch == JSONLexer.EOI) {
                this.token = 20;
            } else {
                this.bp = startPos;
                this.ch = startChar;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.matchStat = 4;
            return strVal;
        }
        this.matchStat = -2;
        return stringDefaultValue();
    }

    public long scanFieldSymbol(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(this.text, this.bp, fieldName)) {
            int index = this.bp + fieldName.length;
            int index2 = index + 1;
            if (charAt(index) != '\"') {
                this.matchStat = -1;
                return 0;
            }
            long hash = -3750763034362895579L;
            while (true) {
                index = index2;
                index2 = index + 1;
                char ch = charAt(index);
                if (ch == '\"') {
                    int i;
                    this.bp = index2;
                    ch = charAt(this.bp);
                    this.ch = ch;
                    while (ch != ',') {
                        if (ch == '}') {
                            next();
                            skipWhitespace();
                            ch = getCurrent();
                            if (ch == ',') {
                                this.token = 16;
                                i = this.bp + 1;
                                this.bp = i;
                                this.ch = charAt(i);
                            } else if (ch == ']') {
                                this.token = 15;
                                i = this.bp + 1;
                                this.bp = i;
                                this.ch = charAt(i);
                            } else if (ch == '}') {
                                this.token = 13;
                                i = this.bp + 1;
                                this.bp = i;
                                this.ch = charAt(i);
                            } else if (ch == JSONLexer.EOI) {
                                this.token = 20;
                            } else {
                                this.matchStat = -1;
                                return 0;
                            }
                            this.matchStat = 4;
                            return hash;
                        } else if (JSONLexerBase.isWhitespace(ch)) {
                            i = this.bp + 1;
                            this.bp = i;
                            ch = charAt(i);
                        } else {
                            this.matchStat = -1;
                            return 0;
                        }
                    }
                    i = this.bp + 1;
                    this.bp = i;
                    this.ch = charAt(i);
                    this.matchStat = 3;
                    return hash;
                } else if (index2 > this.len) {
                    this.matchStat = -1;
                    return 0;
                } else {
                    hash = (hash ^ ((long) ch)) * 1099511628211L;
                }
            }
        } else {
            this.matchStat = -2;
            return 0;
        }
    }

    public Collection<String> newCollectionByType(Class<?> type) {
        if (type.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (type.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        try {
            return (Collection) type.newInstance();
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public Collection<String> scanFieldStringArray(char[] fieldName, Class<?> type) {
        this.matchStat = 0;
        if (charArrayCompare(this.text, this.bp, fieldName)) {
            char ch;
            Collection<String> list = newCollectionByType(type);
            int index = this.bp + fieldName.length;
            int index2 = index + 1;
            if (charAt(index) == '[') {
                index = index2 + 1;
                ch = charAt(index2);
                while (true) {
                    index2 = index;
                    if (ch == '\"') {
                        int startIndex = index2;
                        int endIndex = indexOf('\"', startIndex);
                        if (endIndex == -1) {
                            throw new JSONException("unclosed str");
                        }
                        String stringVal = subString(startIndex, endIndex - startIndex);
                        if (stringVal.indexOf(92) != -1) {
                            while (true) {
                                int slashCount = 0;
                                int i = endIndex - 1;
                                while (i >= 0 && charAt(i) == '\\') {
                                    slashCount++;
                                    i--;
                                }
                                if (slashCount % 2 == 0) {
                                    break;
                                }
                                endIndex = indexOf('\"', endIndex + 1);
                            }
                            int chars_len = endIndex - startIndex;
                            stringVal = JSONLexerBase.readString(sub_chars(startIndex, chars_len), chars_len);
                        }
                        index = endIndex + 1;
                        index2 = index + 1;
                        ch = charAt(index);
                        list.add(stringVal);
                    } else if (ch == 'n' && this.text.startsWith("ull", index2)) {
                        index = index2 + 3;
                        index2 = index + 1;
                        ch = charAt(index);
                        list.add(null);
                    }
                    if (ch == ',') {
                        index = index2 + 1;
                        ch = charAt(index2);
                    } else if (ch == ']') {
                        index = index2 + 1;
                        ch = charAt(index2);
                        while (JSONLexerBase.isWhitespace(ch)) {
                            index2 = index + 1;
                            ch = charAt(index);
                            index = index2;
                        }
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                }
                if (ch == ']' && list.size() == 0) {
                    index = index2 + 1;
                    ch = charAt(index2);
                } else {
                    this.matchStat = -1;
                    return null;
                }
            } else if (this.text.startsWith("ull", index2)) {
                index = index2 + 3;
                index2 = index + 1;
                ch = charAt(index);
                list = null;
                index = index2;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.bp = index;
            if (ch == ',') {
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return list;
            } else if (ch == '}') {
                int i2;
                ch = charAt(this.bp);
                while (ch != ',') {
                    if (ch == ']') {
                        this.token = 15;
                        i2 = this.bp + 1;
                        this.bp = i2;
                        this.ch = charAt(i2);
                        break;
                    } else if (ch == '}') {
                        this.token = 13;
                        i2 = this.bp + 1;
                        this.bp = i2;
                        this.ch = charAt(i2);
                        break;
                    } else if (ch == JSONLexer.EOI) {
                        this.token = 20;
                        this.ch = ch;
                        break;
                    } else {
                        boolean space = false;
                        while (JSONLexerBase.isWhitespace(ch)) {
                            index2 = index + 1;
                            ch = charAt(index);
                            this.bp = index2;
                            space = true;
                            index = index2;
                        }
                        if (!space) {
                            this.matchStat = -1;
                            return null;
                        }
                    }
                }
                this.token = 16;
                i2 = this.bp + 1;
                this.bp = i2;
                this.ch = charAt(i2);
                this.matchStat = 4;
                return list;
            } else {
                this.matchStat = -1;
                return null;
            }
        }
        this.matchStat = -2;
        return null;
    }

    public long scanFieldLong(char[] fieldName) {
        this.matchStat = 0;
        int startPos = this.bp;
        char startChar = this.ch;
        if (charArrayCompare(this.text, this.bp, fieldName)) {
            int index = this.bp + fieldName.length;
            int index2 = index + 1;
            char ch = charAt(index);
            boolean quote = ch == '\"';
            if (quote) {
                index = index2 + 1;
                ch = charAt(index2);
                index2 = index;
            }
            boolean negative = false;
            if (ch == '-') {
                index = index2 + 1;
                ch = charAt(index2);
                negative = true;
            } else {
                index = index2;
            }
            if (ch < '0' || ch > '9') {
                this.bp = startPos;
                this.ch = startChar;
                this.matchStat = -1;
                return 0;
            }
            long value = (long) (ch - 48);
            while (true) {
                index2 = index + 1;
                ch = charAt(index);
                if (ch >= '0' && ch <= '9') {
                    value = (10 * value) + ((long) (ch - 48));
                    index = index2;
                }
            }
            if (ch == '.') {
                this.matchStat = -1;
                return 0;
            }
            if (!quote) {
                index = index2;
            } else if (ch != '\"') {
                this.matchStat = -1;
                return 0;
            } else {
                index = index2 + 1;
                ch = charAt(index2);
            }
            if (ch == ',' || ch == '}') {
                this.bp = index - 1;
            }
            if (value >= 0 || value == Long.MIN_VALUE) {
                while (true) {
                    index2 = index;
                    int i;
                    if (ch == ',') {
                        i = this.bp + 1;
                        this.bp = i;
                        this.ch = charAt(i);
                        this.matchStat = 3;
                        this.token = 16;
                        if (negative) {
                            return -value;
                        }
                        return value;
                    } else if (ch == '}') {
                        i = this.bp + 1;
                        this.bp = i;
                        ch = charAt(i);
                        while (ch != ',') {
                            if (ch == ']') {
                                this.token = 15;
                                i = this.bp + 1;
                                this.bp = i;
                                this.ch = charAt(i);
                                break;
                            } else if (ch == '}') {
                                this.token = 13;
                                i = this.bp + 1;
                                this.bp = i;
                                this.ch = charAt(i);
                                break;
                            } else if (ch == JSONLexer.EOI) {
                                this.token = 20;
                                break;
                            } else if (JSONLexerBase.isWhitespace(ch)) {
                                i = this.bp + 1;
                                this.bp = i;
                                ch = charAt(i);
                            } else {
                                this.bp = startPos;
                                this.ch = startChar;
                                this.matchStat = -1;
                                return 0;
                            }
                        }
                        this.token = 16;
                        i = this.bp + 1;
                        this.bp = i;
                        this.ch = charAt(i);
                        this.matchStat = 4;
                        if (negative) {
                            return -value;
                        }
                        return value;
                    } else if (JSONLexerBase.isWhitespace(ch)) {
                        this.bp = index2;
                        index = index2 + 1;
                        ch = charAt(index2);
                    } else {
                        this.matchStat = -1;
                        return 0;
                    }
                }
            }
            this.bp = startPos;
            this.ch = startChar;
            this.matchStat = -1;
            return 0;
        }
        this.matchStat = -2;
        return 0;
    }

    public boolean scanFieldBoolean(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(this.text, this.bp, fieldName)) {
            boolean quote;
            boolean value;
            int i;
            int index = this.bp + fieldName.length;
            int index2 = index + 1;
            char ch = charAt(index);
            if (ch == '\"') {
                quote = true;
            } else {
                quote = false;
            }
            if (quote) {
                index = index2 + 1;
                ch = charAt(index2);
                index2 = index;
            }
            if (ch == 't') {
                index = index2 + 1;
                if (charAt(index2) != 'r') {
                    this.matchStat = -1;
                    return false;
                }
                index2 = index + 1;
                if (charAt(index) != 'u') {
                    this.matchStat = -1;
                    return false;
                }
                index = index2 + 1;
                if (charAt(index2) != 'e') {
                    this.matchStat = -1;
                    return false;
                }
                if (quote) {
                    index2 = index + 1;
                    if (charAt(index) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                    index = index2;
                }
                this.bp = index;
                ch = charAt(this.bp);
                value = true;
            } else if (ch == 'f') {
                index = index2 + 1;
                if (charAt(index2) != 'a') {
                    this.matchStat = -1;
                    return false;
                }
                index2 = index + 1;
                if (charAt(index) != 'l') {
                    this.matchStat = -1;
                    return false;
                }
                index = index2 + 1;
                if (charAt(index2) != 's') {
                    this.matchStat = -1;
                    return false;
                }
                index2 = index + 1;
                if (charAt(index) != 'e') {
                    this.matchStat = -1;
                    return false;
                }
                if (quote) {
                    index = index2 + 1;
                    if (charAt(index2) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                }
                index = index2;
                this.bp = index;
                ch = charAt(this.bp);
                value = false;
            } else if (ch == '1') {
                if (quote) {
                    index = index2 + 1;
                    if (charAt(index2) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                }
                index = index2;
                this.bp = index;
                ch = charAt(this.bp);
                value = true;
            } else if (ch == '0') {
                if (quote) {
                    index = index2 + 1;
                    if (charAt(index2) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                }
                index = index2;
                this.bp = index;
                ch = charAt(this.bp);
                value = false;
            } else {
                this.matchStat = -1;
                return false;
            }
            while (ch != ',') {
                int i2;
                if (ch == '}') {
                    i2 = this.bp + 1;
                    this.bp = i2;
                    ch = charAt(i2);
                    while (ch != ',') {
                        if (ch == ']') {
                            this.token = 15;
                            i = this.bp + 1;
                            this.bp = i;
                            this.ch = charAt(i);
                            break;
                        } else if (ch == '}') {
                            this.token = 13;
                            i = this.bp + 1;
                            this.bp = i;
                            this.ch = charAt(i);
                            break;
                        } else if (ch == JSONLexer.EOI) {
                            this.token = 20;
                            break;
                        } else if (JSONLexerBase.isWhitespace(ch)) {
                            i2 = this.bp + 1;
                            this.bp = i2;
                            ch = charAt(i2);
                        } else {
                            this.matchStat = -1;
                            return false;
                        }
                    }
                    this.token = 16;
                    i = this.bp + 1;
                    this.bp = i;
                    this.ch = charAt(i);
                    this.matchStat = 4;
                    return value;
                } else if (JSONLexerBase.isWhitespace(ch)) {
                    i2 = this.bp + 1;
                    this.bp = i2;
                    ch = charAt(i2);
                } else {
                    this.matchStat = -1;
                    return false;
                }
            }
            i = this.bp + 1;
            this.bp = i;
            this.ch = charAt(i);
            this.matchStat = 3;
            this.token = 16;
            return value;
        }
        this.matchStat = -2;
        return false;
    }

    public final int scanInt(char expectNext) {
        boolean quote;
        boolean negative = true;
        this.matchStat = 0;
        int offset = this.bp;
        int offset2 = offset + 1;
        char chLocal = charAt(offset);
        if (chLocal == '\"') {
            quote = true;
        } else {
            quote = false;
        }
        if (quote) {
            offset = offset2 + 1;
            chLocal = charAt(offset2);
            offset2 = offset;
        }
        if (chLocal != '-') {
            negative = false;
        }
        if (negative) {
            offset = offset2 + 1;
            chLocal = charAt(offset2);
            offset2 = offset;
        }
        if (chLocal < '0' || chLocal > '9') {
            if (chLocal == 'n') {
                offset = offset2 + 1;
                if (charAt(offset2) == 'u') {
                    offset2 = offset + 1;
                    if (charAt(offset) == 'l') {
                        offset = offset2 + 1;
                        if (charAt(offset2) == 'l') {
                            this.matchStat = 5;
                            offset2 = offset + 1;
                            chLocal = charAt(offset);
                            if (quote && chLocal == '\"') {
                                offset = offset2 + 1;
                                chLocal = charAt(offset2);
                                offset2 = offset;
                            }
                            while (chLocal != ',') {
                                if (chLocal == ']') {
                                    this.bp = offset2;
                                    this.ch = charAt(this.bp);
                                    this.matchStat = 5;
                                    this.token = 15;
                                    offset = offset2;
                                    return 0;
                                } else if (JSONLexerBase.isWhitespace(chLocal)) {
                                    offset = offset2 + 1;
                                    chLocal = charAt(offset2);
                                    offset2 = offset;
                                } else {
                                    this.matchStat = -1;
                                    offset = offset2;
                                    return 0;
                                }
                            }
                            this.bp = offset2;
                            this.ch = charAt(this.bp);
                            this.matchStat = 5;
                            this.token = 16;
                            offset = offset2;
                            return 0;
                        }
                    }
                }
                this.matchStat = -1;
                return 0;
            }
            this.matchStat = -1;
            return 0;
        }
        int value = chLocal - 48;
        while (true) {
            offset = offset2;
            offset2 = offset + 1;
            chLocal = charAt(offset);
            if (chLocal >= '0' && chLocal <= '9') {
                value = (value * 10) + (chLocal - 48);
            }
        }
        if (chLocal == '.') {
            this.matchStat = -1;
            offset = offset2;
            return 0;
        }
        if (!quote) {
            offset = offset2;
        } else if (chLocal != '\"') {
            this.matchStat = -1;
            offset = offset2;
            return 0;
        } else {
            offset = offset2 + 1;
            chLocal = charAt(offset2);
        }
        if (value < 0) {
            this.matchStat = -1;
            return 0;
        }
        offset2 = offset;
        while (chLocal != expectNext) {
            if (JSONLexerBase.isWhitespace(chLocal)) {
                offset = offset2 + 1;
                chLocal = charAt(offset2);
                offset2 = offset;
            } else {
                this.matchStat = -1;
                if (negative) {
                    value = -value;
                }
                offset = offset2;
                return value;
            }
        }
        this.bp = offset2;
        this.ch = charAt(this.bp);
        this.matchStat = 3;
        this.token = 16;
        if (negative) {
            value = -value;
        }
        offset = offset2;
        return value;
    }

    public double scanDouble(char seperator) {
        this.matchStat = 0;
        int i = this.bp;
        int offset = i + 1;
        char chLocal = charAt(i);
        boolean quote = chLocal == '\"';
        if (quote) {
            i = offset + 1;
            chLocal = charAt(offset);
            offset = i;
        }
        boolean negative = chLocal == '-';
        if (negative) {
            i = offset + 1;
            chLocal = charAt(offset);
            offset = i;
        }
        if (chLocal < '0' || chLocal > '9') {
            if (chLocal == 'n') {
                i = offset + 1;
                if (charAt(offset) == 'u') {
                    offset = i + 1;
                    if (charAt(i) == 'l') {
                        i = offset + 1;
                        if (charAt(offset) == 'l') {
                            this.matchStat = 5;
                            offset = i + 1;
                            chLocal = charAt(i);
                            if (quote && chLocal == '\"') {
                                i = offset + 1;
                                chLocal = charAt(offset);
                                offset = i;
                            }
                            while (chLocal != ',') {
                                if (chLocal == ']') {
                                    this.bp = offset;
                                    this.ch = charAt(this.bp);
                                    this.matchStat = 5;
                                    this.token = 15;
                                    i = offset;
                                    return 0.0d;
                                } else if (JSONLexerBase.isWhitespace(chLocal)) {
                                    i = offset + 1;
                                    chLocal = charAt(offset);
                                    offset = i;
                                } else {
                                    this.matchStat = -1;
                                    i = offset;
                                    return 0.0d;
                                }
                            }
                            this.bp = offset;
                            this.ch = charAt(this.bp);
                            this.matchStat = 5;
                            this.token = 16;
                            i = offset;
                            return 0.0d;
                        }
                    }
                }
                this.matchStat = -1;
                return 0.0d;
            }
            this.matchStat = -1;
            return 0.0d;
        }
        long power;
        int start;
        int count;
        double value;
        long intVal = (long) (chLocal - 48);
        while (true) {
            i = offset;
            offset = i + 1;
            chLocal = charAt(i);
            if (chLocal < '0' || chLocal > '9') {
                power = 1;
            } else {
                intVal = (10 * intVal) + ((long) (chLocal - 48));
            }
        }
        power = 1;
        if (chLocal == '.') {
            i = offset + 1;
            chLocal = charAt(offset);
            if (chLocal >= '0' && chLocal <= '9') {
                intVal = (10 * intVal) + ((long) (chLocal - 48));
                power = 10;
                while (true) {
                    offset = i + 1;
                    chLocal = charAt(i);
                    if (chLocal < '0' || chLocal > '9') {
                        break;
                    }
                    intVal = (10 * intVal) + ((long) (chLocal - 48));
                    power *= 10;
                    i = offset;
                }
            } else {
                this.matchStat = -1;
                return 0.0d;
            }
        }
        boolean exp = chLocal == 'e' || chLocal == 'E';
        if (exp) {
            i = offset + 1;
            chLocal = charAt(offset);
            if (chLocal == '+' || chLocal == '-') {
                offset = i + 1;
                chLocal = charAt(i);
            } else {
                offset = i;
            }
            while (chLocal >= '0' && chLocal <= '9') {
                i = offset + 1;
                chLocal = charAt(offset);
                offset = i;
            }
        }
        if (!quote) {
            start = this.bp;
            count = (offset - start) - 1;
            i = offset;
        } else if (chLocal != '\"') {
            this.matchStat = -1;
            i = offset;
            return 0.0d;
        } else {
            i = offset + 1;
            chLocal = charAt(offset);
            start = this.bp + 1;
            count = (i - start) - 2;
        }
        if (exp || count >= 20) {
            value = Double.parseDouble(subString(start, count));
        } else {
            value = ((double) intVal) / ((double) power);
            if (negative) {
                value = -value;
            }
        }
        if (chLocal == seperator) {
            this.bp = i;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            this.token = 16;
            return value;
        }
        this.matchStat = -1;
        return value;
    }

    public long scanLong(char expectNextChar) {
        this.matchStat = 0;
        int offset = this.bp;
        int offset2 = offset + 1;
        char chLocal = charAt(offset);
        boolean quote = chLocal == '\"';
        if (quote) {
            offset = offset2 + 1;
            chLocal = charAt(offset2);
            offset2 = offset;
        }
        boolean negative = chLocal == '-';
        if (negative) {
            offset = offset2 + 1;
            chLocal = charAt(offset2);
            offset2 = offset;
        }
        if (chLocal < '0' || chLocal > '9') {
            if (chLocal == 'n') {
                offset = offset2 + 1;
                if (charAt(offset2) == 'u') {
                    offset2 = offset + 1;
                    if (charAt(offset) == 'l') {
                        offset = offset2 + 1;
                        if (charAt(offset2) == 'l') {
                            this.matchStat = 5;
                            offset2 = offset + 1;
                            chLocal = charAt(offset);
                            if (quote && chLocal == '\"') {
                                offset = offset2 + 1;
                                chLocal = charAt(offset2);
                                offset2 = offset;
                            }
                            while (chLocal != ',') {
                                if (chLocal == ']') {
                                    this.bp = offset2;
                                    this.ch = charAt(this.bp);
                                    this.matchStat = 5;
                                    this.token = 15;
                                    offset = offset2;
                                    return 0;
                                } else if (JSONLexerBase.isWhitespace(chLocal)) {
                                    offset = offset2 + 1;
                                    chLocal = charAt(offset2);
                                    offset2 = offset;
                                } else {
                                    this.matchStat = -1;
                                    offset = offset2;
                                    return 0;
                                }
                            }
                            this.bp = offset2;
                            this.ch = charAt(this.bp);
                            this.matchStat = 5;
                            this.token = 16;
                            offset = offset2;
                            return 0;
                        }
                    }
                }
                this.matchStat = -1;
                return 0;
            }
            this.matchStat = -1;
            return 0;
        }
        long value = (long) (chLocal - 48);
        while (true) {
            offset = offset2;
            offset2 = offset + 1;
            chLocal = charAt(offset);
            if (chLocal >= '0' && chLocal <= '9') {
                value = (10 * value) + ((long) (chLocal - 48));
            }
        }
        if (chLocal == '.') {
            this.matchStat = -1;
            offset = offset2;
            return 0;
        }
        if (!quote) {
            offset = offset2;
        } else if (chLocal != '\"') {
            this.matchStat = -1;
            offset = offset2;
            return 0;
        } else {
            offset = offset2 + 1;
            chLocal = charAt(offset2);
        }
        if (value >= 0 || value == Long.MIN_VALUE) {
            offset2 = offset;
            while (chLocal != expectNextChar) {
                if (JSONLexerBase.isWhitespace(chLocal)) {
                    offset = offset2 + 1;
                    chLocal = charAt(offset2);
                    offset2 = offset;
                } else {
                    this.matchStat = -1;
                    offset = offset2;
                    return value;
                }
            }
            this.bp = offset2;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            this.token = 16;
            if (negative) {
                value = -value;
            }
            offset = offset2;
            return value;
        }
        this.matchStat = -1;
        return 0;
    }

    protected final void arrayCopy(int srcPos, char[] dest, int destPos, int length) {
        this.text.getChars(srcPos, srcPos + length, dest, destPos);
    }

    public String info() {
        String str;
        StringBuilder append = new StringBuilder().append("pos ").append(this.bp).append(", json : ");
        if (this.text.length() < 65536) {
            str = this.text;
        } else {
            str = this.text.substring(0, 65536);
        }
        return append.append(str).toString();
    }
}
