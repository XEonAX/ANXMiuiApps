package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.wireless.security.SecExceptionCode;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;
import mtopsdk.common.util.SymbolExpUtil;

public abstract class JSONLexerBase implements JSONLexer, Closeable {
    protected static final int INT_MULTMIN_RADIX_TEN = -214748364;
    protected static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    private static final ThreadLocal<char[]> SBUF_LOCAL = new ThreadLocal();
    protected static final int[] digits = new int[103];
    protected static final char[] typeFieldName = ("\"" + JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
    protected int bp;
    protected Calendar calendar = null;
    protected char ch;
    protected int eofPos;
    protected int features;
    protected boolean hasSpecial;
    protected Locale locale = JSON.defaultLocale;
    public int matchStat = 0;
    protected int np;
    protected int pos;
    protected char[] sbuf;
    protected int sp;
    protected String stringDefaultValue = null;
    protected TimeZone timeZone = JSON.defaultTimeZone;
    protected int token;

    public abstract String addSymbol(int i, int i2, int i3, SymbolTable symbolTable);

    protected abstract void arrayCopy(int i, char[] cArr, int i2, int i3);

    public abstract byte[] bytesValue();

    protected abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i);

    protected abstract void copyTo(int i, int i2, char[] cArr);

    public abstract BigDecimal decimalValue();

    public abstract int indexOf(char c, int i);

    public abstract boolean isEOF();

    public abstract char next();

    public abstract String numberString();

    public abstract String stringVal();

    public abstract String subString(int i, int i2);

    protected abstract char[] sub_chars(int i, int i2);

    protected void lexError(String key, Object... args) {
        this.token = 1;
    }

    static {
        int i;
        for (i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (i = 97; i <= 102; i++) {
            digits[i] = (i - 97) + 10;
        }
        for (i = 65; i <= 70; i++) {
            digits[i] = (i - 65) + 10;
        }
    }

    public JSONLexerBase(int features) {
        this.features = features;
        if ((Feature.InitStringFieldAsEmpty.mask & features) != 0) {
            this.stringDefaultValue = "";
        }
        this.sbuf = (char[]) SBUF_LOCAL.get();
        if (this.sbuf == null) {
            this.sbuf = new char[512];
        }
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public void setToken(int token) {
        this.token = token;
    }

    public final void nextToken() {
        this.sp = 0;
        while (true) {
            this.pos = this.bp;
            if (this.ch == '/') {
                skipComment();
            } else if (this.ch == '\"') {
                scanString();
                return;
            } else if (this.ch == ',') {
                next();
                this.token = 16;
                return;
            } else if (this.ch >= '0' && this.ch <= '9') {
                scanNumber();
                return;
            } else if (this.ch == '-') {
                scanNumber();
                return;
            } else {
                switch (this.ch) {
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 13:
                    case ' ':
                        next();
                        break;
                    case '\'':
                        if (isEnabled(Feature.AllowSingleQuotes)) {
                            scanStringSingleQuote();
                            return;
                        }
                        throw new JSONException("Feature.AllowSingleQuotes is false");
                    case '(':
                        next();
                        this.token = 10;
                        return;
                    case ')':
                        next();
                        this.token = 11;
                        return;
                    case '+':
                        next();
                        scanNumber();
                        return;
                    case '.':
                        next();
                        this.token = 25;
                        return;
                    case ':':
                        next();
                        this.token = 17;
                        return;
                    case ';':
                        next();
                        this.token = 24;
                        return;
                    case 'N':
                    case 'S':
                    case 'T':
                    case 'u':
                        scanIdent();
                        return;
                    case '[':
                        next();
                        this.token = 14;
                        return;
                    case ']':
                        next();
                        this.token = 15;
                        return;
                    case 'f':
                        scanFalse();
                        return;
                    case 'n':
                        scanNullOrNew();
                        return;
                    case 't':
                        scanTrue();
                        return;
                    case 'x':
                        scanHex();
                        return;
                    case SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE /*123*/:
                        next();
                        this.token = 12;
                        return;
                    case SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR /*125*/:
                        next();
                        this.token = 13;
                        return;
                    default:
                        if (isEOF()) {
                            if (this.token == 20) {
                                throw new JSONException("EOF error");
                            }
                            this.token = 20;
                            int i = this.eofPos;
                            this.bp = i;
                            this.pos = i;
                            return;
                        } else if (this.ch <= 31 || this.ch == 127) {
                            next();
                            break;
                        } else {
                            lexError("illegal.char", String.valueOf(this.ch));
                            next();
                            return;
                        }
                }
            }
        }
    }

    public final void nextToken(int expect) {
        this.sp = 0;
        while (true) {
            switch (expect) {
                case 2:
                    if (this.ch >= '0' && this.ch <= '9') {
                        this.pos = this.bp;
                        scanNumber();
                        return;
                    } else if (this.ch == '\"') {
                        this.pos = this.bp;
                        scanString();
                        return;
                    } else if (this.ch == '[') {
                        this.token = 14;
                        next();
                        return;
                    } else if (this.ch == '{') {
                        this.token = 12;
                        next();
                        return;
                    }
                    break;
                case 4:
                    if (this.ch == '\"') {
                        this.pos = this.bp;
                        scanString();
                        return;
                    } else if (this.ch >= '0' && this.ch <= '9') {
                        this.pos = this.bp;
                        scanNumber();
                        return;
                    } else if (this.ch == '[') {
                        this.token = 14;
                        next();
                        return;
                    } else if (this.ch == '{') {
                        this.token = 12;
                        next();
                        return;
                    }
                    break;
                case 12:
                    if (this.ch == '{') {
                        this.token = 12;
                        next();
                        return;
                    } else if (this.ch == '[') {
                        this.token = 14;
                        next();
                        return;
                    }
                    break;
                case 14:
                    if (this.ch == '[') {
                        this.token = 14;
                        next();
                        return;
                    } else if (this.ch == '{') {
                        this.token = 12;
                        next();
                        return;
                    }
                    break;
                case 15:
                    if (this.ch == ']') {
                        this.token = 15;
                        next();
                        return;
                    }
                    break;
                case 16:
                    if (this.ch == ',') {
                        this.token = 16;
                        next();
                        return;
                    } else if (this.ch == '}') {
                        this.token = 13;
                        next();
                        return;
                    } else if (this.ch == ']') {
                        this.token = 15;
                        next();
                        return;
                    } else if (this.ch == JSONLexer.EOI) {
                        this.token = 20;
                        return;
                    }
                    break;
                case 18:
                    nextIdent();
                    return;
                case 20:
                    break;
            }
            if (this.ch == JSONLexer.EOI) {
                this.token = 20;
                return;
            }
            if (this.ch == ' ' || this.ch == 10 || this.ch == 13 || this.ch == 9 || this.ch == 12 || this.ch == 8) {
                next();
            } else {
                nextToken();
                return;
            }
        }
    }

    public final void nextIdent() {
        while (isWhitespace(this.ch)) {
            next();
        }
        if (this.ch == '_' || Character.isLetter(this.ch)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    public final void nextTokenWithChar(char expect) {
        this.sp = 0;
        while (this.ch != expect) {
            if (this.ch == ' ' || this.ch == 10 || this.ch == 13 || this.ch == 9 || this.ch == 12 || this.ch == 8) {
                next();
            } else {
                throw new JSONException("not match " + expect + " - " + this.ch + ", info : " + info());
            }
        }
        next();
        nextToken();
    }

    public final int token() {
        return this.token;
    }

    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    public final int pos() {
        return this.pos;
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    public final Number integerValue() throws NumberFormatException {
        long limit;
        int i;
        long result = 0;
        boolean negative = false;
        if (this.np == -1) {
            this.np = 0;
        }
        int i2 = this.np;
        int max = this.np + this.sp;
        char type = ' ';
        switch (charAt(max - 1)) {
            case 'B':
                max--;
                type = 'B';
                break;
            case 'L':
                max--;
                type = 'L';
                break;
            case 'S':
                max--;
                type = 'S';
                break;
        }
        if (charAt(this.np) == '-') {
            negative = true;
            limit = Long.MIN_VALUE;
            i = i2 + 1;
        } else {
            limit = -9223372036854775807L;
            i = i2;
        }
        if (i < max) {
            result = (long) (-(charAt(i) - 48));
            i++;
        }
        while (i < max) {
            i2 = i + 1;
            int digit = charAt(i) - 48;
            if (result < MULTMIN_RADIX_TEN) {
                return new BigInteger(numberString());
            }
            result *= 10;
            if (result < ((long) digit) + limit) {
                return new BigInteger(numberString());
            }
            result -= (long) digit;
            i = i2;
        }
        if (!negative) {
            result = -result;
            if (result > 2147483647L || type == 'L') {
                i2 = i;
                return Long.valueOf(result);
            } else if (type == 'S') {
                i2 = i;
                return Short.valueOf((short) ((int) result));
            } else if (type == 'B') {
                i2 = i;
                return Byte.valueOf((byte) ((int) result));
            } else {
                i2 = i;
                return Integer.valueOf((int) result);
            }
        } else if (i <= this.np + 1) {
            throw new NumberFormatException(numberString());
        } else if (result < -2147483648L || type == 'L') {
            i2 = i;
            return Long.valueOf(result);
        } else if (type == 'S') {
            i2 = i;
            return Short.valueOf((short) ((int) result));
        } else if (type == 'B') {
            i2 = i;
            return Byte.valueOf((byte) ((int) result));
        } else {
            i2 = i;
            return Integer.valueOf((int) result);
        }
    }

    public final void nextTokenWithColon(int expect) {
        nextTokenWithChar(':');
    }

    public float floatValue() {
        String strVal = numberString();
        float floatValue = Float.parseFloat(strVal);
        if (floatValue == 0.0f || floatValue == Float.POSITIVE_INFINITY) {
            char c0 = strVal.charAt(0);
            if (c0 > '0' && c0 <= '9') {
                throw new JSONException("float overflow : " + strVal);
            }
        }
        return floatValue;
    }

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    public void config(Feature feature, boolean state) {
        this.features = Feature.config(this.features, feature, state);
        if ((this.features & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    public final boolean isEnabled(Feature feature) {
        return isEnabled(feature.mask);
    }

    public final boolean isEnabled(int feature) {
        return (this.features & feature) != 0;
    }

    public final boolean isEnabled(int features, int feature) {
        return ((this.features & feature) == 0 && (features & feature) == 0) ? false : true;
    }

    public final char getCurrent() {
        return this.ch;
    }

    protected void skipComment() {
        next();
        if (this.ch == '/') {
            do {
                next();
                if (this.ch == 10) {
                    next();
                    return;
                }
            } while (this.ch != JSONLexer.EOI);
        } else if (this.ch == '*') {
            next();
            while (this.ch != JSONLexer.EOI) {
                if (this.ch == '*') {
                    next();
                    if (this.ch == '/') {
                        next();
                        return;
                    }
                } else {
                    next();
                }
            }
        } else {
            throw new JSONException("invalid comment");
        }
    }

    public final String scanSymbol(SymbolTable symbolTable) {
        skipWhitespace();
        if (this.ch == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (this.ch == '\'') {
            if (isEnabled(Feature.AllowSingleQuotes)) {
                return scanSymbol(symbolTable, '\'');
            }
            throw new JSONException("syntax error");
        } else if (this.ch == '}') {
            next();
            this.token = 13;
            return null;
        } else if (this.ch == ',') {
            next();
            this.token = 16;
            return null;
        } else if (this.ch == JSONLexer.EOI) {
            this.token = 20;
            return null;
        } else if (isEnabled(Feature.AllowUnQuotedFieldNames)) {
            return scanSymbolUnQuoted(symbolTable);
        } else {
            throw new JSONException("syntax error");
        }
    }

    public final String scanSymbol(SymbolTable symbolTable, char quote) {
        int hash = 0;
        this.np = this.bp;
        this.sp = 0;
        boolean hasSpecial = false;
        while (true) {
            char chLocal = next();
            if (chLocal == quote) {
                String value;
                this.token = 4;
                if (hasSpecial) {
                    value = symbolTable.addSymbol(this.sbuf, 0, this.sp, hash);
                } else {
                    int offset;
                    if (this.np == -1) {
                        offset = 0;
                    } else {
                        offset = this.np + 1;
                    }
                    value = addSymbol(offset, this.sp, hash, symbolTable);
                }
                this.sp = 0;
                next();
                return value;
            } else if (chLocal == 26) {
                throw new JSONException("unclosed.str");
            } else if (chLocal == '\\') {
                if (!hasSpecial) {
                    hasSpecial = true;
                    if (this.sp >= this.sbuf.length) {
                        int newCapcity = this.sbuf.length * 2;
                        if (this.sp > newCapcity) {
                            newCapcity = this.sp;
                        }
                        char[] newsbuf = new char[newCapcity];
                        System.arraycopy(this.sbuf, 0, newsbuf, 0, this.sbuf.length);
                        this.sbuf = newsbuf;
                    }
                    arrayCopy(this.np + 1, this.sbuf, 0, this.sp);
                }
                chLocal = next();
                switch (chLocal) {
                    case '\"':
                        hash = (hash * 31) + 34;
                        putChar('\"');
                        break;
                    case '\'':
                        hash = (hash * 31) + 39;
                        putChar('\'');
                        break;
                    case '/':
                        hash = (hash * 31) + 47;
                        putChar('/');
                        break;
                    case '0':
                        hash = (hash * 31) + chLocal;
                        putChar(0);
                        break;
                    case '1':
                        hash = (hash * 31) + chLocal;
                        putChar(1);
                        break;
                    case '2':
                        hash = (hash * 31) + chLocal;
                        putChar(2);
                        break;
                    case '3':
                        hash = (hash * 31) + chLocal;
                        putChar(3);
                        break;
                    case '4':
                        hash = (hash * 31) + chLocal;
                        putChar(4);
                        break;
                    case '5':
                        hash = (hash * 31) + chLocal;
                        putChar(5);
                        break;
                    case '6':
                        hash = (hash * 31) + chLocal;
                        putChar(6);
                        break;
                    case '7':
                        hash = (hash * 31) + chLocal;
                        putChar(7);
                        break;
                    case 'F':
                    case 'f':
                        hash = (hash * 31) + 12;
                        putChar(12);
                        break;
                    case '\\':
                        hash = (hash * 31) + 92;
                        putChar('\\');
                        break;
                    case 'b':
                        hash = (hash * 31) + 8;
                        putChar(8);
                        break;
                    case 'n':
                        hash = (hash * 31) + 10;
                        putChar(10);
                        break;
                    case 'r':
                        hash = (hash * 31) + 13;
                        putChar(13);
                        break;
                    case 't':
                        hash = (hash * 31) + 9;
                        putChar(9);
                        break;
                    case 'u':
                        char c1 = next();
                        char c2 = next();
                        char c3 = next();
                        char c4 = next();
                        int val = Integer.parseInt(new String(new char[]{c1, c2, c3, c4}), 16);
                        hash = (hash * 31) + val;
                        putChar((char) val);
                        break;
                    case 'v':
                        hash = (hash * 31) + 11;
                        putChar(11);
                        break;
                    case 'x':
                        char x1 = next();
                        this.ch = x1;
                        char x2 = next();
                        this.ch = x2;
                        char x_char = (char) ((digits[x1] * 16) + digits[x2]);
                        hash = (hash * 31) + x_char;
                        putChar(x_char);
                        break;
                    default:
                        this.ch = chLocal;
                        throw new JSONException("unclosed.str.lit");
                }
            } else {
                hash = (hash * 31) + chLocal;
                if (hasSpecial) {
                    if (this.sp == this.sbuf.length) {
                        putChar(chLocal);
                    } else {
                        char[] cArr = this.sbuf;
                        int i = this.sp;
                        this.sp = i + 1;
                        cArr[i] = chLocal;
                    }
                } else {
                    this.sp++;
                }
            }
        }
    }

    public final void resetStringPosition() {
        this.sp = 0;
    }

    public String info() {
        return "";
    }

    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        boolean firstFlag = false;
        if (this.token == 1 && this.pos == 0 && this.bp == 1) {
            this.bp = 0;
        }
        boolean[] firstIdentifierFlags = IOUtils.firstIdentifierFlags;
        char first = this.ch;
        if (this.ch >= firstIdentifierFlags.length || firstIdentifierFlags[first]) {
            firstFlag = true;
        }
        if (firstFlag) {
            boolean[] identifierFlags = IOUtils.identifierFlags;
            int hash = first;
            this.np = this.bp;
            this.sp = 1;
            while (true) {
                char chLocal = next();
                if (chLocal < identifierFlags.length && !identifierFlags[chLocal]) {
                    break;
                }
                hash = (hash * 31) + chLocal;
                this.sp++;
            }
            this.ch = charAt(this.bp);
            this.token = 18;
            if (this.sp == 4 && hash == 3392903 && charAt(this.np) == 'n' && charAt(this.np + 1) == 'u' && charAt(this.np + 2) == 'l' && charAt(this.np + 3) == 'l') {
                return null;
            }
            if (symbolTable == null) {
                return subString(this.np, this.sp);
            }
            return addSymbol(this.np, this.sp, hash, symbolTable);
        }
        throw new JSONException("illegal identifier : " + this.ch + info());
    }

    public final void scanString() {
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char ch = next();
            if (ch == '\"') {
                this.token = 4;
                this.ch = next();
                return;
            } else if (ch == JSONLexer.EOI) {
                if (isEOF()) {
                    throw new JSONException("unclosed string : " + ch);
                }
                putChar(JSONLexer.EOI);
            } else if (ch == '\\') {
                if (!this.hasSpecial) {
                    this.hasSpecial = true;
                    if (this.sp >= this.sbuf.length) {
                        int newCapcity = this.sbuf.length * 2;
                        if (this.sp > newCapcity) {
                            newCapcity = this.sp;
                        }
                        char[] newsbuf = new char[newCapcity];
                        System.arraycopy(this.sbuf, 0, newsbuf, 0, this.sbuf.length);
                        this.sbuf = newsbuf;
                    }
                    copyTo(this.np + 1, this.sp, this.sbuf);
                }
                ch = next();
                switch (ch) {
                    case '\"':
                        putChar('\"');
                        break;
                    case '\'':
                        putChar('\'');
                        break;
                    case '/':
                        putChar('/');
                        break;
                    case '0':
                        putChar(0);
                        break;
                    case '1':
                        putChar(1);
                        break;
                    case '2':
                        putChar(2);
                        break;
                    case '3':
                        putChar(3);
                        break;
                    case '4':
                        putChar(4);
                        break;
                    case '5':
                        putChar(5);
                        break;
                    case '6':
                        putChar(6);
                        break;
                    case '7':
                        putChar(7);
                        break;
                    case 'F':
                    case 'f':
                        putChar(12);
                        break;
                    case '\\':
                        putChar('\\');
                        break;
                    case 'b':
                        putChar(8);
                        break;
                    case 'n':
                        putChar(10);
                        break;
                    case 'r':
                        putChar(13);
                        break;
                    case 't':
                        putChar(9);
                        break;
                    case 'u':
                        char u1 = next();
                        char u2 = next();
                        char u3 = next();
                        char u4 = next();
                        putChar((char) Integer.parseInt(new String(new char[]{u1, u2, u3, u4}), 16));
                        break;
                    case 'v':
                        putChar(11);
                        break;
                    case 'x':
                        putChar((char) ((digits[next()] * 16) + digits[next()]));
                        break;
                    default:
                        this.ch = ch;
                        throw new JSONException("unclosed string : " + ch);
                }
            } else if (!this.hasSpecial) {
                this.sp++;
            } else if (this.sp == this.sbuf.length) {
                putChar(ch);
            } else {
                char[] cArr = this.sbuf;
                int i = this.sp;
                this.sp = i + 1;
                cArr[i] = ch;
            }
        }
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    public final int intValue() {
        int limit;
        int i;
        if (this.np == -1) {
            this.np = 0;
        }
        int result = 0;
        boolean negative = false;
        int i2 = this.np;
        int max = this.np + this.sp;
        if (charAt(this.np) == '-') {
            negative = true;
            limit = Integer.MIN_VALUE;
            i = i2 + 1;
        } else {
            limit = -2147483647;
            i = i2;
        }
        if (i < max) {
            result = -(charAt(i) - 48);
            i++;
        }
        while (i < max) {
            i2 = i + 1;
            char chLocal = charAt(i);
            if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B') {
                break;
            }
            int digit = chLocal - 48;
            if (((long) result) < -214748364) {
                throw new NumberFormatException(numberString());
            }
            result *= 10;
            if (result < limit + digit) {
                throw new NumberFormatException(numberString());
            }
            result -= digit;
            i = i2;
        }
        i2 = i;
        if (!negative) {
            return -result;
        }
        if (i2 > this.np + 1) {
            return result;
        }
        throw new NumberFormatException(numberString());
    }

    public void close() {
        if (this.sbuf.length <= 8192) {
            SBUF_LOCAL.set(this.sbuf);
        }
        this.sbuf = null;
    }

    public final boolean isRef() {
        if (this.sp == 4 && charAt(this.np + 1) == '$' && charAt(this.np + 2) == 'r' && charAt(this.np + 3) == 'e' && charAt(this.np + 4) == 'f') {
            return true;
        }
        return false;
    }

    public final int scanType(String type) {
        this.matchStat = 0;
        if (!charArrayCompare(typeFieldName)) {
            return -2;
        }
        int bpLocal = this.bp + typeFieldName.length;
        int typeLength = type.length();
        for (int i = 0; i < typeLength; i++) {
            if (type.charAt(i) != charAt(bpLocal + i)) {
                return -1;
            }
        }
        bpLocal += typeLength;
        if (charAt(bpLocal) != '\"') {
            return -1;
        }
        bpLocal++;
        this.ch = charAt(bpLocal);
        if (this.ch == ',') {
            bpLocal++;
            this.ch = charAt(bpLocal);
            this.bp = bpLocal;
            this.token = 16;
            return 3;
        }
        if (this.ch == '}') {
            bpLocal++;
            this.ch = charAt(bpLocal);
            if (this.ch == ',') {
                this.token = 16;
                bpLocal++;
                this.ch = charAt(bpLocal);
            } else if (this.ch == ']') {
                this.token = 15;
                bpLocal++;
                this.ch = charAt(bpLocal);
            } else if (this.ch == '}') {
                this.token = 13;
                bpLocal++;
                this.ch = charAt(bpLocal);
            } else if (this.ch != JSONLexer.EOI) {
                return -1;
            } else {
                this.token = 20;
            }
            this.matchStat = 4;
        }
        this.bp = bpLocal;
        return this.matchStat;
    }

    public final boolean matchField(char[] fieldName) {
        if (!charArrayCompare(fieldName)) {
            return false;
        }
        this.bp += fieldName.length;
        this.ch = charAt(this.bp);
        if (this.ch == '{') {
            next();
            this.token = 12;
        } else if (this.ch == '[') {
            next();
            this.token = 14;
        } else if (this.ch == 'S' && charAt(this.bp + 1) == 'e' && charAt(this.bp + 2) == 't' && charAt(this.bp + 3) == '[') {
            this.bp += 3;
            this.ch = charAt(this.bp);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public String scanFieldString(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            if (charAt(this.bp + offset) != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            int endIndex = indexOf('\"', (this.bp + fieldName.length) + 1);
            if (endIndex == -1) {
                throw new JSONException("unclosed str");
            }
            int startIndex2 = (this.bp + fieldName.length) + 1;
            String stringVal = subString(startIndex2, endIndex - startIndex2);
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
                stringVal = readString(sub_chars((this.bp + fieldName.length) + 1, chars_len), chars_len);
            }
            offset = offset2 + ((endIndex - ((this.bp + fieldName.length) + 1)) + 1);
            offset2 = offset + 1;
            char chLocal = charAt(this.bp + offset);
            String strVal = stringVal;
            if (chLocal == ',') {
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return strVal;
            } else if (chLocal == '}') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == ',') {
                    this.token = 16;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == ']') {
                    this.token = 15;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == '}') {
                    this.token = 13;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == JSONLexer.EOI) {
                    this.token = 20;
                    this.bp += offset - 1;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return stringDefaultValue();
                }
                this.matchStat = 4;
                return strVal;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        this.matchStat = -2;
        return stringDefaultValue();
    }

    public String scanString(char expectNextChar) {
        this.matchStat = 0;
        int offset = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        int offset2;
        if (chLocal == 'n') {
            if (charAt(this.bp + 1) == 'u' && charAt((this.bp + 1) + 1) == 'l' && charAt((this.bp + 1) + 2) == 'l') {
                offset2 = (offset + 3) + 1;
                if (charAt(this.bp + 4) == expectNextChar) {
                    this.bp += 5;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            offset2 = offset;
            return null;
        } else if (chLocal != '\"') {
            this.matchStat = -1;
            offset2 = offset;
            return stringDefaultValue();
        } else {
            int startIndex = this.bp + 1;
            int endIndex = indexOf('\"', startIndex);
            if (endIndex == -1) {
                throw new JSONException("unclosed str");
            }
            String stringVal = subString(this.bp + 1, endIndex - startIndex);
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
                stringVal = readString(sub_chars(this.bp + 1, chars_len), chars_len);
            }
            offset2 = ((endIndex - (this.bp + 1)) + 1) + 1;
            offset = offset2 + 1;
            String strVal = stringVal;
            if (charAt(this.bp + offset2) == expectNextChar) {
                this.bp += offset;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                offset2 = offset;
                return strVal;
            }
            this.matchStat = -1;
            offset2 = offset;
            return strVal;
        }
    }

    public long scanFieldSymbol(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            if (charAt(this.bp + offset) != '\"') {
                this.matchStat = -1;
                return 0;
            }
            long hash = -3750763034362895579L;
            while (true) {
                offset = offset2;
                offset2 = offset + 1;
                char chLocal = charAt(this.bp + offset);
                if (chLocal == '\"') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    if (chLocal == ',') {
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                        this.matchStat = 3;
                        return hash;
                    } else if (chLocal == '}') {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        if (chLocal == ',') {
                            this.token = 16;
                            this.bp += offset2;
                            this.ch = charAt(this.bp);
                        } else if (chLocal == ']') {
                            this.token = 15;
                            this.bp += offset2;
                            this.ch = charAt(this.bp);
                        } else if (chLocal == '}') {
                            this.token = 13;
                            this.bp += offset2;
                            this.ch = charAt(this.bp);
                        } else if (chLocal == JSONLexer.EOI) {
                            this.token = 20;
                            this.bp += offset2 - 1;
                            this.ch = JSONLexer.EOI;
                        } else {
                            this.matchStat = -1;
                            return 0;
                        }
                        this.matchStat = 4;
                        return hash;
                    } else {
                        this.matchStat = -1;
                        return 0;
                    }
                }
                hash = (hash ^ ((long) chLocal)) * 1099511628211L;
                if (chLocal == '\\') {
                    this.matchStat = -1;
                    return 0;
                }
            }
        } else {
            this.matchStat = -2;
            return 0;
        }
    }

    public Enum<?> scanEnum(Class<?> enumClass, SymbolTable symbolTable, char serperator) {
        String name = scanSymbolWithSeperator(symbolTable, serperator);
        if (name == null) {
            return null;
        }
        return Enum.valueOf(enumClass, name);
    }

    public String scanSymbolWithSeperator(SymbolTable symbolTable, char serperator) {
        String strVal = null;
        this.matchStat = 0;
        int offset = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        int offset2;
        if (chLocal == 'n') {
            if (charAt(this.bp + 1) == 'u' && charAt((this.bp + 1) + 1) == 'l' && charAt((this.bp + 1) + 2) == 'l') {
                offset2 = (offset + 3) + 1;
                if (charAt(this.bp + 4) == serperator) {
                    this.bp += 5;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                } else {
                    this.matchStat = -1;
                }
            } else {
                this.matchStat = -1;
                offset2 = offset;
            }
        } else if (chLocal != '\"') {
            this.matchStat = -1;
            offset2 = offset;
        } else {
            int hash = 0;
            while (true) {
                offset2 = offset;
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == '\"') {
                    int start = (this.bp + 0) + 1;
                    strVal = addSymbol(start, ((this.bp + offset) - start) - 1, hash, symbolTable);
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                    offset = offset2;
                    while (chLocal != serperator) {
                        if (!isWhitespace(chLocal)) {
                            this.matchStat = -1;
                            offset2 = offset;
                            break;
                        }
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        offset = offset2;
                    }
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                    offset2 = offset;
                } else {
                    hash = (hash * 31) + chLocal;
                    if (chLocal == '\\') {
                        this.matchStat = -1;
                        offset2 = offset;
                        break;
                    }
                }
            }
        }
        return strVal;
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
        if (charArrayCompare(fieldName)) {
            Collection<String> list = newCollectionByType(type);
            int offset = fieldName.length;
            int offset2 = offset + 1;
            if (charAt(this.bp + offset) != '[') {
                this.matchStat = -1;
                return null;
            }
            offset = offset2 + 1;
            char chLocal = charAt(this.bp + offset2);
            while (true) {
                offset2 = offset;
                if (chLocal == '\"') {
                    int endIndex = indexOf('\"', this.bp + offset2);
                    if (endIndex == -1) {
                        throw new JSONException("unclosed str");
                    }
                    int startIndex2 = this.bp + offset2;
                    String stringVal = subString(startIndex2, endIndex - startIndex2);
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
                        int chars_len = endIndex - (this.bp + offset2);
                        stringVal = readString(sub_chars(this.bp + offset2, chars_len), chars_len);
                    }
                    offset = offset2 + ((endIndex - (this.bp + offset2)) + 1);
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                    list.add(stringVal);
                } else if (chLocal == 'n' && charAt(this.bp + offset2) == 'u' && charAt((this.bp + offset2) + 1) == 'l' && charAt((this.bp + offset2) + 2) == 'l') {
                    offset = offset2 + 3;
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                    list.add(null);
                }
                if (chLocal == ',') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                } else if (chLocal == ']') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
            if (chLocal == ']' && list.size() == 0) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
                if (chLocal == ',') {
                    this.bp += offset2;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                    return list;
                } else if (chLocal == '}') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    if (chLocal == ',') {
                        this.token = 16;
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                    } else if (chLocal == ']') {
                        this.token = 15;
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                    } else if (chLocal == '}') {
                        this.token = 13;
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                    } else if (chLocal == JSONLexer.EOI) {
                        this.bp += offset - 1;
                        this.token = 20;
                        this.ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                    this.matchStat = 4;
                    return list;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
            throw new JSONException("illega str");
        }
        this.matchStat = -2;
        return null;
    }

    public void scanStringArray(Collection<String> list, char seperator) {
        this.matchStat = 0;
        int offset = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        int i;
        if (chLocal == 'n' && charAt(this.bp + 1) == 'u' && charAt((this.bp + 1) + 1) == 'l' && charAt((this.bp + 1) + 2) == 'l' && charAt((this.bp + 1) + 3) == seperator) {
            this.bp += 5;
            this.ch = charAt(this.bp);
            this.matchStat = 5;
            i = offset;
        } else if (chLocal != '[') {
            this.matchStat = -1;
            i = offset;
        } else {
            i = offset + 1;
            chLocal = charAt(this.bp + 1);
            while (true) {
                offset = i;
                if (chLocal != 'n' || charAt(this.bp + offset) != 'u' || charAt((this.bp + offset) + 1) != 'l' || charAt((this.bp + offset) + 2) != 'l') {
                    if (chLocal == ']' && list.size() == 0) {
                        i = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        break;
                    } else if (chLocal != '\"') {
                        this.matchStat = -1;
                        i = offset;
                        return;
                    } else {
                        int startIndex = this.bp + offset;
                        int endIndex = indexOf('\"', startIndex);
                        if (endIndex == -1) {
                            throw new JSONException("unclosed str");
                        }
                        String stringVal = subString(this.bp + offset, endIndex - startIndex);
                        if (stringVal.indexOf(92) != -1) {
                            while (true) {
                                int slashCount = 0;
                                int i2 = endIndex - 1;
                                while (i2 >= 0 && charAt(i2) == '\\') {
                                    slashCount++;
                                    i2--;
                                }
                                if (slashCount % 2 == 0) {
                                    break;
                                }
                                endIndex = indexOf('\"', endIndex + 1);
                            }
                            int chars_len = endIndex - startIndex;
                            stringVal = readString(sub_chars(this.bp + offset, chars_len), chars_len);
                        }
                        i = offset + ((endIndex - (this.bp + offset)) + 1);
                        offset = i + 1;
                        chLocal = charAt(this.bp + i);
                        list.add(stringVal);
                    }
                } else {
                    i = offset + 3;
                    offset = i + 1;
                    chLocal = charAt(this.bp + i);
                    list.add(null);
                }
                if (chLocal == ',') {
                    i = offset + 1;
                    chLocal = charAt(this.bp + offset);
                } else if (chLocal == ']') {
                    i = offset + 1;
                    chLocal = charAt(this.bp + offset);
                } else {
                    this.matchStat = -1;
                    i = offset;
                    return;
                }
            }
            if (chLocal == seperator) {
                this.bp += i;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return;
            }
            this.matchStat = -1;
        }
    }

    public int scanFieldInt(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            boolean negative;
            int offset = fieldName.length;
            int offset2 = offset + 1;
            char chLocal = charAt(this.bp + offset);
            if (chLocal == '-') {
                negative = true;
            } else {
                negative = false;
            }
            if (negative) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
            } else {
                offset = offset2;
            }
            if (chLocal < '0' || chLocal > '9') {
                this.matchStat = -1;
                return 0;
            }
            int value = chLocal - 48;
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal >= '0' && chLocal <= '9') {
                    value = (value * 10) + (chLocal - 48);
                    offset = offset2;
                }
            }
            if (chLocal == '.') {
                this.matchStat = -1;
                return 0;
            } else if ((value < 0 || offset2 > fieldName.length + 14) && !(value == Integer.MIN_VALUE && offset2 == 17 && negative)) {
                this.matchStat = -1;
                return 0;
            } else if (chLocal == ',') {
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                if (negative) {
                    return -value;
                }
                return value;
            } else if (chLocal == '}') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == ',') {
                    this.token = 16;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == ']') {
                    this.token = 15;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == '}') {
                    this.token = 13;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == JSONLexer.EOI) {
                    this.token = 20;
                    this.bp += offset - 1;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return 0;
                }
                this.matchStat = 4;
                if (negative) {
                    return -value;
                }
                return value;
            } else {
                this.matchStat = -1;
                return 0;
            }
        }
        this.matchStat = -2;
        return 0;
    }

    /* JADX WARNING: Missing block: B:71:?, code:
            return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int[] scanFieldIntArray(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            if (charAt(this.bp + offset) != '[') {
                this.matchStat = -2;
                return null;
            }
            int[] tmp;
            offset = offset2 + 1;
            char chLocal = charAt(this.bp + offset2);
            int[] array = new int[16];
            int arrayIndex = 0;
            if (chLocal == ']') {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                offset = offset2;
            } else {
                while (true) {
                    int i = arrayIndex;
                    offset2 = offset;
                    boolean nagative = false;
                    if (chLocal == '-') {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
                        nagative = true;
                    } else {
                        offset = offset2;
                    }
                    if (chLocal < '0' || chLocal > '9') {
                        this.matchStat = -1;
                    } else {
                        int value = chLocal - 48;
                        while (true) {
                            offset2 = offset + 1;
                            chLocal = charAt(this.bp + offset);
                            if (chLocal >= '0' && chLocal <= '9') {
                                value = (value * 10) + (chLocal - 48);
                                offset = offset2;
                            }
                        }
                        if (i >= array.length) {
                            tmp = new int[((array.length * 3) / 2)];
                            System.arraycopy(array, 0, tmp, 0, i);
                            array = tmp;
                        }
                        arrayIndex = i + 1;
                        if (nagative) {
                            value = -value;
                        }
                        array[i] = value;
                        if (chLocal == ',') {
                            offset = offset2 + 1;
                            chLocal = charAt(this.bp + offset2);
                        } else if (chLocal == ']') {
                            offset = offset2 + 1;
                            chLocal = charAt(this.bp + offset2);
                            break;
                        } else {
                            offset = offset2;
                        }
                    }
                }
            }
            if (arrayIndex != array.length) {
                tmp = new int[arrayIndex];
                System.arraycopy(array, 0, tmp, 0, arrayIndex);
                array = tmp;
            }
            if (chLocal == ',') {
                this.bp += offset - 1;
                next();
                this.matchStat = 3;
                this.token = 16;
                return array;
            } else if (chLocal == '}') {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal == ',') {
                    this.token = 16;
                    this.bp += offset2 - 1;
                    next();
                } else if (chLocal == ']') {
                    this.token = 15;
                    this.bp += offset2 - 1;
                    next();
                } else if (chLocal == '}') {
                    this.token = 13;
                    this.bp += offset2 - 1;
                    next();
                } else if (chLocal == JSONLexer.EOI) {
                    this.bp += offset2 - 1;
                    this.token = 20;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return null;
                }
                this.matchStat = 4;
                return array;
            } else {
                this.matchStat = -1;
                return null;
            }
        }
        this.matchStat = -2;
        return null;
    }

    public boolean scanBoolean(char expectNext) {
        int offset;
        this.matchStat = 0;
        int offset2 = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        boolean value = false;
        if (chLocal == 't') {
            if (charAt(this.bp + 1) == 'r' && charAt((this.bp + 1) + 1) == 'u' && charAt((this.bp + 1) + 2) == 'e') {
                offset = (offset2 + 3) + 1;
                chLocal = charAt(this.bp + 4);
                value = true;
                offset2 = offset;
            } else {
                this.matchStat = -1;
                offset = offset2;
                return false;
            }
        } else if (chLocal == 'f') {
            if (charAt(this.bp + 1) == 'a' && charAt((this.bp + 1) + 1) == 'l' && charAt((this.bp + 1) + 2) == 's' && charAt((this.bp + 1) + 3) == 'e') {
                offset = (offset2 + 4) + 1;
                chLocal = charAt(this.bp + 5);
                value = false;
                offset2 = offset;
            } else {
                this.matchStat = -1;
                offset = offset2;
                return false;
            }
        } else if (chLocal == '1') {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + 1);
            value = true;
            offset2 = offset;
        } else if (chLocal == '0') {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + 1);
            value = false;
            offset2 = offset;
        }
        while (chLocal != expectNext) {
            if (isWhitespace(chLocal)) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            } else {
                this.matchStat = -1;
                offset = offset2;
                return value;
            }
        }
        this.bp += offset2;
        this.ch = charAt(this.bp);
        this.matchStat = 3;
        offset = offset2;
        return value;
    }

    public int scanInt(char expectNext) {
        boolean quote;
        int offset;
        boolean negative = true;
        this.matchStat = 0;
        int offset2 = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        if (chLocal == '\"') {
            quote = true;
        } else {
            quote = false;
        }
        if (quote) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + 1);
            offset2 = offset;
        }
        if (chLocal != '-') {
            negative = false;
        }
        if (negative) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + offset2);
        } else {
            offset = offset2;
        }
        if (chLocal >= '0' && chLocal <= '9') {
            int value = chLocal - 48;
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal >= '0' && chLocal <= '9') {
                    value = (value * 10) + (chLocal - 48);
                    offset = offset2;
                }
            }
            if (chLocal == '.') {
                this.matchStat = -1;
                offset = offset2;
                return 0;
            } else if (value < 0) {
                this.matchStat = -1;
                offset = offset2;
                return 0;
            } else {
                while (chLocal != expectNext) {
                    if (isWhitespace(chLocal)) {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
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
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                if (negative) {
                    value = -value;
                }
                offset = offset2;
                return value;
            }
        } else if (chLocal == 'n' && charAt(this.bp + offset) == 'u' && charAt((this.bp + offset) + 1) == 'l' && charAt((this.bp + offset) + 2) == 'l') {
            this.matchStat = 5;
            offset += 3;
            offset2 = offset + 1;
            chLocal = charAt(this.bp + offset);
            if (quote && chLocal == '\"') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            }
            while (chLocal != ',') {
                if (chLocal == ']') {
                    this.bp += offset2;
                    this.ch = charAt(this.bp);
                    this.matchStat = 5;
                    this.token = 15;
                    offset = offset2;
                    return 0;
                } else if (isWhitespace(chLocal)) {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                } else {
                    this.matchStat = -1;
                    offset = offset2;
                    return 0;
                }
            }
            this.bp += offset2;
            this.ch = charAt(this.bp);
            this.matchStat = 5;
            this.token = 16;
            offset = offset2;
            return 0;
        } else {
            this.matchStat = -1;
            return 0;
        }
    }

    public boolean scanFieldBoolean(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            boolean value;
            int offset = fieldName.length;
            int offset2 = offset + 1;
            char chLocal = charAt(this.bp + offset);
            if (chLocal == 't') {
                offset = offset2 + 1;
                if (charAt(this.bp + offset2) != 'r') {
                    this.matchStat = -1;
                    return false;
                }
                offset2 = offset + 1;
                if (charAt(this.bp + offset) != 'u') {
                    this.matchStat = -1;
                    return false;
                }
                offset = offset2 + 1;
                if (charAt(this.bp + offset2) != 'e') {
                    this.matchStat = -1;
                    return false;
                }
                value = true;
            } else if (chLocal == 'f') {
                offset = offset2 + 1;
                if (charAt(this.bp + offset2) != 'a') {
                    this.matchStat = -1;
                    return false;
                }
                offset2 = offset + 1;
                if (charAt(this.bp + offset) != 'l') {
                    this.matchStat = -1;
                    return false;
                }
                offset = offset2 + 1;
                if (charAt(this.bp + offset2) != 's') {
                    this.matchStat = -1;
                    return false;
                }
                offset2 = offset + 1;
                if (charAt(this.bp + offset) != 'e') {
                    this.matchStat = -1;
                    return false;
                }
                value = false;
                offset = offset2;
            } else {
                this.matchStat = -1;
                return false;
            }
            offset2 = offset + 1;
            chLocal = charAt(this.bp + offset);
            if (chLocal == ',') {
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                return value;
            } else if (chLocal == '}') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == ',') {
                    this.token = 16;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == ']') {
                    this.token = 15;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == '}') {
                    this.token = 13;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == JSONLexer.EOI) {
                    this.token = 20;
                    this.bp += offset - 1;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return false;
                }
                this.matchStat = 4;
                return value;
            } else {
                this.matchStat = -1;
                return false;
            }
        }
        this.matchStat = -2;
        return false;
    }

    public long scanFieldLong(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            char chLocal = charAt(this.bp + offset);
            boolean negative = false;
            if (chLocal == '-') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                negative = true;
            } else {
                offset = offset2;
            }
            if (chLocal < '0' || chLocal > '9') {
                this.matchStat = -1;
                return 0;
            }
            long value = (long) (chLocal - 48);
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal >= '0' && chLocal <= '9') {
                    value = (10 * value) + ((long) (chLocal - 48));
                    offset = offset2;
                }
            }
            if (chLocal == '.') {
                this.matchStat = -1;
                return 0;
            } else if (value < 0 || offset2 > 21) {
                this.matchStat = -1;
                return 0;
            } else if (chLocal == ',') {
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                if (negative) {
                    return -value;
                }
                return value;
            } else if (chLocal == '}') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == ',') {
                    this.token = 16;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == ']') {
                    this.token = 15;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == '}') {
                    this.token = 13;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == JSONLexer.EOI) {
                    this.token = 20;
                    this.bp += offset - 1;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return 0;
                }
                this.matchStat = 4;
                if (negative) {
                    return -value;
                }
                return value;
            } else {
                this.matchStat = -1;
                return 0;
            }
        }
        this.matchStat = -2;
        return 0;
    }

    public long scanLong(char expectNextChar) {
        int offset;
        this.matchStat = 0;
        int offset2 = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        boolean quote = chLocal == '\"';
        if (quote) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + 1);
            offset2 = offset;
        }
        boolean negative = chLocal == '-';
        if (negative) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + offset2);
        } else {
            offset = offset2;
        }
        if (chLocal >= '0' && chLocal <= '9') {
            long value = (long) (chLocal - 48);
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal >= '0' && chLocal <= '9') {
                    value = (10 * value) + ((long) (chLocal - 48));
                    offset = offset2;
                }
            }
            if (chLocal == '.') {
                this.matchStat = -1;
                offset = offset2;
                return 0;
            } else if (value >= 0 || value == Long.MIN_VALUE) {
                if (quote) {
                    if (chLocal != '\"') {
                        this.matchStat = -1;
                        offset = offset2;
                        return 0;
                    }
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                }
                while (chLocal != expectNextChar) {
                    if (isWhitespace(chLocal)) {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
                        offset2 = offset;
                    } else {
                        this.matchStat = -1;
                        offset = offset2;
                        return value;
                    }
                }
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                if (negative) {
                    value = -value;
                }
                offset = offset2;
                return value;
            } else {
                this.matchStat = -1;
                offset = offset2;
                return 0;
            }
        } else if (chLocal == 'n' && charAt(this.bp + offset) == 'u' && charAt((this.bp + offset) + 1) == 'l' && charAt((this.bp + offset) + 2) == 'l') {
            this.matchStat = 5;
            offset += 3;
            offset2 = offset + 1;
            chLocal = charAt(this.bp + offset);
            if (quote && chLocal == '\"') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            }
            while (chLocal != ',') {
                if (chLocal == ']') {
                    this.bp += offset2;
                    this.ch = charAt(this.bp);
                    this.matchStat = 5;
                    this.token = 15;
                    offset = offset2;
                    return 0;
                } else if (isWhitespace(chLocal)) {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                } else {
                    this.matchStat = -1;
                    offset = offset2;
                    return 0;
                }
            }
            this.bp += offset2;
            this.ch = charAt(this.bp);
            this.matchStat = 5;
            this.token = 16;
            offset = offset2;
            return 0;
        } else {
            this.matchStat = -1;
            return 0;
        }
    }

    public final float scanFieldFloat(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            char chLocal = charAt(this.bp + offset);
            boolean quote = chLocal == '\"';
            if (quote) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            }
            boolean negative = chLocal == '-';
            if (negative) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
            } else {
                offset = offset2;
            }
            if (chLocal < '0' || chLocal > '9') {
                if (chLocal == 'n') {
                    if (charAt(this.bp + offset) == 'u') {
                        if (charAt((this.bp + offset) + 1) == 'l') {
                            if (charAt((this.bp + offset) + 2) == 'l') {
                                this.matchStat = 5;
                                offset += 3;
                                offset2 = offset + 1;
                                chLocal = charAt(this.bp + offset);
                                if (quote && chLocal == '\"') {
                                    offset = offset2 + 1;
                                    chLocal = charAt(this.bp + offset2);
                                    offset2 = offset;
                                }
                                while (chLocal != ',') {
                                    if (chLocal == '}') {
                                        this.bp += offset2;
                                        this.ch = charAt(this.bp);
                                        this.matchStat = 5;
                                        this.token = 13;
                                        return 0.0f;
                                    } else if (isWhitespace(chLocal)) {
                                        offset = offset2 + 1;
                                        chLocal = charAt(this.bp + offset2);
                                        offset2 = offset;
                                    } else {
                                        this.matchStat = -1;
                                        return 0.0f;
                                    }
                                }
                                this.bp += offset2;
                                this.ch = charAt(this.bp);
                                this.matchStat = 5;
                                this.token = 16;
                                return 0.0f;
                            }
                        }
                    }
                }
                this.matchStat = -1;
                return 0.0f;
            }
            int power;
            int start;
            int count;
            float value;
            int intVal = chLocal - 48;
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal < '0' || chLocal > '9') {
                    power = 1;
                } else {
                    intVal = (intVal * 10) + (chLocal - 48);
                    offset = offset2;
                }
            }
            power = 1;
            if (chLocal == '.') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal >= '0' && chLocal <= '9') {
                    intVal = (intVal * 10) + (chLocal - 48);
                    power = 10;
                    while (true) {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        if (chLocal < '0' || chLocal > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal - 48);
                        power *= 10;
                        offset = offset2;
                    }
                } else {
                    this.matchStat = -1;
                    return 0.0f;
                }
            }
            boolean exp = chLocal == 'e' || chLocal == 'E';
            if (exp) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == '+' || chLocal == '-') {
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                } else {
                    offset2 = offset;
                }
                while (chLocal >= '0' && chLocal <= '9') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                }
            }
            if (!quote) {
                start = this.bp + fieldName.length;
                count = ((this.bp + offset2) - start) - 1;
            } else if (chLocal != '\"') {
                this.matchStat = -1;
                return 0.0f;
            } else {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                start = (this.bp + fieldName.length) + 1;
                count = ((this.bp + offset) - start) - 2;
                offset2 = offset;
            }
            if (exp || count >= 20) {
                value = Float.parseFloat(subString(start, count));
            } else {
                value = ((float) intVal) / ((float) power);
                if (negative) {
                    value = -value;
                }
            }
            if (chLocal == ',') {
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                return value;
            } else if (chLocal == '}') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == ',') {
                    this.token = 16;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == ']') {
                    this.token = 15;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == '}') {
                    this.token = 13;
                    this.bp += offset;
                    this.ch = charAt(this.bp);
                } else if (chLocal == JSONLexer.EOI) {
                    this.bp += offset - 1;
                    this.token = 20;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return 0.0f;
                }
                this.matchStat = 4;
                return value;
            } else {
                this.matchStat = -1;
                return 0.0f;
            }
        }
        this.matchStat = -2;
        return 0.0f;
    }

    public final float scanFloat(char seperator) {
        int offset;
        this.matchStat = 0;
        int offset2 = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        boolean quote = chLocal == '\"';
        if (quote) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + 1);
            offset2 = offset;
        }
        boolean negative = chLocal == '-';
        if (negative) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + offset2);
        } else {
            offset = offset2;
        }
        if (chLocal >= '0' && chLocal <= '9') {
            long power;
            int start;
            int count;
            float value;
            long intVal = (long) (chLocal - 48);
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal < '0' || chLocal > '9') {
                    power = 1;
                } else {
                    intVal = (10 * intVal) + ((long) (chLocal - 48));
                    offset = offset2;
                }
            }
            power = 1;
            if (chLocal == '.') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal >= '0' && chLocal <= '9') {
                    intVal = (10 * intVal) + ((long) (chLocal - 48));
                    power = 10;
                    while (true) {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        if (chLocal < '0' || chLocal > '9') {
                            break;
                        }
                        intVal = (10 * intVal) + ((long) (chLocal - 48));
                        power *= 10;
                        offset = offset2;
                    }
                } else {
                    this.matchStat = -1;
                    return 0.0f;
                }
            }
            boolean exp = chLocal == 'e' || chLocal == 'E';
            if (exp) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == '+' || chLocal == '-') {
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                } else {
                    offset2 = offset;
                }
                while (chLocal >= '0' && chLocal <= '9') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                }
            }
            if (!quote) {
                start = this.bp;
                count = ((this.bp + offset2) - start) - 1;
                offset = offset2;
            } else if (chLocal != '\"') {
                this.matchStat = -1;
                offset = offset2;
                return 0.0f;
            } else {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                start = this.bp + 1;
                count = ((this.bp + offset) - start) - 2;
            }
            if (exp || count >= 20) {
                value = Float.parseFloat(subString(start, count));
            } else {
                value = ((float) intVal) / ((float) power);
                if (negative) {
                    value = -value;
                }
            }
            if (chLocal == seperator) {
                this.bp += offset;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                return value;
            }
            this.matchStat = -1;
            return value;
        } else if (chLocal == 'n' && charAt(this.bp + offset) == 'u' && charAt((this.bp + offset) + 1) == 'l' && charAt((this.bp + offset) + 2) == 'l') {
            this.matchStat = 5;
            offset += 3;
            offset2 = offset + 1;
            chLocal = charAt(this.bp + offset);
            if (quote && chLocal == '\"') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            }
            while (chLocal != ',') {
                if (chLocal == ']') {
                    this.bp += offset2;
                    this.ch = charAt(this.bp);
                    this.matchStat = 5;
                    this.token = 15;
                    offset = offset2;
                    return 0.0f;
                } else if (isWhitespace(chLocal)) {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                } else {
                    this.matchStat = -1;
                    offset = offset2;
                    return 0.0f;
                }
            }
            this.bp += offset2;
            this.ch = charAt(this.bp);
            this.matchStat = 5;
            this.token = 16;
            offset = offset2;
            return 0.0f;
        } else {
            this.matchStat = -1;
            return 0.0f;
        }
    }

    public double scanDouble(char seperator) {
        int offset;
        this.matchStat = 0;
        int offset2 = 0 + 1;
        char chLocal = charAt(this.bp + 0);
        boolean quote = chLocal == '\"';
        if (quote) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + 1);
            offset2 = offset;
        }
        boolean negative = chLocal == '-';
        if (negative) {
            offset = offset2 + 1;
            chLocal = charAt(this.bp + offset2);
        } else {
            offset = offset2;
        }
        if (chLocal >= '0' && chLocal <= '9') {
            long power;
            int start;
            int count;
            double value;
            long intVal = (long) (chLocal - 48);
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (chLocal < '0' || chLocal > '9') {
                    power = 1;
                } else {
                    intVal = (10 * intVal) + ((long) (chLocal - 48));
                    offset = offset2;
                }
            }
            power = 1;
            if (chLocal == '.') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal >= '0' && chLocal <= '9') {
                    intVal = (10 * intVal) + ((long) (chLocal - 48));
                    power = 10;
                    while (true) {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        if (chLocal < '0' || chLocal > '9') {
                            break;
                        }
                        intVal = (10 * intVal) + ((long) (chLocal - 48));
                        power *= 10;
                        offset = offset2;
                    }
                } else {
                    this.matchStat = -1;
                    return 0.0d;
                }
            }
            boolean exp = chLocal == 'e' || chLocal == 'E';
            if (exp) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                if (chLocal == '+' || chLocal == '-') {
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                } else {
                    offset2 = offset;
                }
                while (chLocal >= '0' && chLocal <= '9') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                }
            }
            if (!quote) {
                start = this.bp;
                count = ((this.bp + offset2) - start) - 1;
                offset = offset2;
            } else if (chLocal != '\"') {
                this.matchStat = -1;
                offset = offset2;
                return 0.0d;
            } else {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                start = this.bp + 1;
                count = ((this.bp + offset) - start) - 2;
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
                this.bp += offset;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                this.token = 16;
                return value;
            }
            this.matchStat = -1;
            return value;
        } else if (chLocal == 'n' && charAt(this.bp + offset) == 'u' && charAt((this.bp + offset) + 1) == 'l' && charAt((this.bp + offset) + 2) == 'l') {
            this.matchStat = 5;
            offset += 3;
            offset2 = offset + 1;
            chLocal = charAt(this.bp + offset);
            if (quote && chLocal == '\"') {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            }
            while (chLocal != ',') {
                if (chLocal == ']') {
                    this.bp += offset2;
                    this.ch = charAt(this.bp);
                    this.matchStat = 5;
                    this.token = 15;
                    offset = offset2;
                    return 0.0d;
                } else if (isWhitespace(chLocal)) {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                } else {
                    this.matchStat = -1;
                    offset = offset2;
                    return 0.0d;
                }
            }
            this.bp += offset2;
            this.ch = charAt(this.bp);
            this.matchStat = 5;
            this.token = 16;
            offset = offset2;
            return 0.0d;
        } else {
            this.matchStat = -1;
            return 0.0d;
        }
    }

    /* JADX WARNING: Missing block: B:115:?, code:
            return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final float[] scanFieldFloatArray(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            if (charAt(this.bp + offset) != '[') {
                this.matchStat = -2;
                return null;
            }
            offset = offset2 + 1;
            char chLocal = charAt(this.bp + offset2);
            float[] array = new float[16];
            int arrayIndex = 0;
            while (true) {
                int start = (this.bp + offset) - 1;
                boolean negative = chLocal == '-';
                if (negative) {
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                    offset = offset2;
                }
                if (chLocal < '0' || chLocal > '9') {
                    this.matchStat = -1;
                } else {
                    int power;
                    float value;
                    Object tmp;
                    int intVal = chLocal - 48;
                    while (true) {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        if (chLocal < '0' || chLocal > '9') {
                            power = 1;
                        } else {
                            intVal = (intVal * 10) + (chLocal - 48);
                            offset = offset2;
                        }
                    }
                    power = 1;
                    if (chLocal == '.') {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
                        power = 10;
                        if (chLocal >= '0' && chLocal <= '9') {
                            intVal = (intVal * 10) + (chLocal - 48);
                            while (true) {
                                offset2 = offset + 1;
                                chLocal = charAt(this.bp + offset);
                                if (chLocal < '0' || chLocal > '9') {
                                    break;
                                }
                                intVal = (intVal * 10) + (chLocal - 48);
                                power *= 10;
                                offset = offset2;
                            }
                        } else {
                            this.matchStat = -1;
                        }
                    }
                    boolean exp = chLocal == 'e' || chLocal == 'E';
                    if (exp) {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
                        if (chLocal == '+' || chLocal == '-') {
                            offset2 = offset + 1;
                            chLocal = charAt(this.bp + offset);
                        } else {
                            offset2 = offset;
                        }
                        while (chLocal >= '0' && chLocal <= '9') {
                            offset = offset2 + 1;
                            chLocal = charAt(this.bp + offset2);
                            offset2 = offset;
                        }
                    }
                    offset = offset2;
                    int count = ((this.bp + offset) - start) - 1;
                    if (exp || count >= 10) {
                        value = Float.parseFloat(subString(start, count));
                    } else {
                        value = ((float) intVal) / ((float) power);
                        if (negative) {
                            value = -value;
                        }
                    }
                    if (arrayIndex >= array.length) {
                        tmp = new float[((array.length * 3) / 2)];
                        System.arraycopy(array, 0, tmp, 0, arrayIndex);
                        array = tmp;
                    }
                    int arrayIndex2 = arrayIndex + 1;
                    array[arrayIndex] = value;
                    if (chLocal == ',') {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        offset = offset2;
                    } else if (chLocal == ']') {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                        if (arrayIndex2 != array.length) {
                            tmp = new float[arrayIndex2];
                            System.arraycopy(array, 0, tmp, 0, arrayIndex2);
                            array = tmp;
                        }
                        if (chLocal == ',') {
                            this.bp += offset2 - 1;
                            next();
                            this.matchStat = 3;
                            this.token = 16;
                            return array;
                        } else if (chLocal == '}') {
                            offset = offset2 + 1;
                            chLocal = charAt(this.bp + offset2);
                            if (chLocal == ',') {
                                this.token = 16;
                                this.bp += offset - 1;
                                next();
                            } else if (chLocal == ']') {
                                this.token = 15;
                                this.bp += offset - 1;
                                next();
                            } else if (chLocal == '}') {
                                this.token = 13;
                                this.bp += offset - 1;
                                next();
                            } else if (chLocal == 26) {
                                this.bp += offset - 1;
                                this.token = 20;
                                this.ch = JSONLexer.EOI;
                            } else {
                                this.matchStat = -1;
                                return null;
                            }
                            this.matchStat = 4;
                            return array;
                        } else {
                            this.matchStat = -1;
                            return null;
                        }
                    }
                    arrayIndex = arrayIndex2;
                }
            }
            this.matchStat = -1;
            return null;
        }
        this.matchStat = -2;
        return null;
    }

    /* JADX WARNING: Missing block: B:131:?, code:
            return (float[][]) null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final float[][] scanFieldFloatArray2(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            if (charAt(this.bp + offset) != '[') {
                this.matchStat = -2;
                return (float[][]) null;
            }
            offset = offset2 + 1;
            char chLocal = charAt(this.bp + offset2);
            float[][] arrayarray = new float[16][];
            int arrayarrayIndex = 0;
            offset2 = offset;
            loop0:
            while (true) {
                if (chLocal == '[') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    float[] array = new float[16];
                    int arrayIndex = 0;
                    while (true) {
                        int start = (this.bp + offset) - 1;
                        boolean negative = chLocal == '-';
                        if (negative) {
                            offset2 = offset + 1;
                            chLocal = charAt(this.bp + offset);
                            offset = offset2;
                        }
                        if (chLocal < '0' || chLocal > '9') {
                            this.matchStat = -1;
                        } else {
                            int power;
                            float value;
                            Object tmp;
                            int intVal = chLocal - 48;
                            while (true) {
                                offset2 = offset + 1;
                                chLocal = charAt(this.bp + offset);
                                if (chLocal < '0' || chLocal > '9') {
                                    power = 1;
                                } else {
                                    intVal = (intVal * 10) + (chLocal - 48);
                                    offset = offset2;
                                }
                            }
                            power = 1;
                            if (chLocal == '.') {
                                offset = offset2 + 1;
                                chLocal = charAt(this.bp + offset2);
                                if (chLocal >= '0' && chLocal <= '9') {
                                    intVal = (intVal * 10) + (chLocal - 48);
                                    power = 10;
                                    while (true) {
                                        offset2 = offset + 1;
                                        chLocal = charAt(this.bp + offset);
                                        if (chLocal < '0' || chLocal > '9') {
                                            break;
                                        }
                                        intVal = (intVal * 10) + (chLocal - 48);
                                        power *= 10;
                                        offset = offset2;
                                    }
                                } else {
                                    this.matchStat = -1;
                                }
                            }
                            boolean exp = chLocal == 'e' || chLocal == 'E';
                            if (exp) {
                                offset = offset2 + 1;
                                chLocal = charAt(this.bp + offset2);
                                if (chLocal == '+' || chLocal == '-') {
                                    offset2 = offset + 1;
                                    chLocal = charAt(this.bp + offset);
                                } else {
                                    offset2 = offset;
                                }
                                while (chLocal >= '0' && chLocal <= '9') {
                                    offset = offset2 + 1;
                                    chLocal = charAt(this.bp + offset2);
                                    offset2 = offset;
                                }
                            }
                            offset = offset2;
                            int count = ((this.bp + offset) - start) - 1;
                            if (exp || count >= 10) {
                                value = Float.parseFloat(subString(start, count));
                            } else {
                                value = ((float) intVal) / ((float) power);
                                if (negative) {
                                    value = -value;
                                }
                            }
                            if (arrayIndex >= array.length) {
                                tmp = new float[((array.length * 3) / 2)];
                                System.arraycopy(array, 0, tmp, 0, arrayIndex);
                                array = tmp;
                            }
                            int arrayIndex2 = arrayIndex + 1;
                            array[arrayIndex] = value;
                            if (chLocal == ',') {
                                offset2 = offset + 1;
                                chLocal = charAt(this.bp + offset);
                                offset = offset2;
                            } else if (chLocal == ']') {
                                offset2 = offset + 1;
                                chLocal = charAt(this.bp + offset);
                                if (arrayIndex2 != array.length) {
                                    tmp = new float[arrayIndex2];
                                    System.arraycopy(array, 0, tmp, 0, arrayIndex2);
                                    array = tmp;
                                }
                                if (arrayarrayIndex >= arrayarray.length) {
                                    tmp = new float[((arrayarray.length * 3) / 2)][];
                                    System.arraycopy(array, 0, tmp, 0, arrayIndex2);
                                    arrayarray = tmp;
                                }
                                int arrayarrayIndex2 = arrayarrayIndex + 1;
                                arrayarray[arrayarrayIndex] = array;
                                if (chLocal == ',') {
                                    offset = offset2 + 1;
                                    chLocal = charAt(this.bp + offset2);
                                } else if (chLocal == ']') {
                                    offset = offset2 + 1;
                                    chLocal = charAt(this.bp + offset2);
                                    if (arrayarrayIndex2 != arrayarray.length) {
                                        tmp = new float[arrayarrayIndex2][];
                                        System.arraycopy(arrayarray, 0, tmp, 0, arrayarrayIndex2);
                                        arrayarray = tmp;
                                    }
                                    if (chLocal == ',') {
                                        this.bp += offset - 1;
                                        next();
                                        this.matchStat = 3;
                                        this.token = 16;
                                        return arrayarray;
                                    } else if (chLocal == '}') {
                                        offset2 = offset + 1;
                                        chLocal = charAt(this.bp + offset);
                                        if (chLocal == ',') {
                                            this.token = 16;
                                            this.bp += offset2 - 1;
                                            next();
                                        } else if (chLocal == ']') {
                                            this.token = 15;
                                            this.bp += offset2 - 1;
                                            next();
                                        } else if (chLocal == '}') {
                                            this.token = 13;
                                            this.bp += offset2 - 1;
                                            next();
                                        } else if (chLocal == 26) {
                                            this.bp += offset2 - 1;
                                            this.token = 20;
                                            this.ch = JSONLexer.EOI;
                                        } else {
                                            this.matchStat = -1;
                                            return (float[][]) null;
                                        }
                                        this.matchStat = 4;
                                        return arrayarray;
                                    } else {
                                        this.matchStat = -1;
                                        return (float[][]) null;
                                    }
                                } else {
                                    offset = offset2;
                                }
                                arrayarrayIndex = arrayarrayIndex2;
                                offset2 = offset;
                            }
                            arrayIndex = arrayIndex2;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return (float[][]) null;
        }
        this.matchStat = -2;
        return (float[][]) null;
    }

    public final double scanFieldDouble(char[] fieldName) {
        this.matchStat = 0;
        if (charArrayCompare(fieldName)) {
            int offset = fieldName.length;
            int offset2 = offset + 1;
            char chLocal = charAt(this.bp + offset);
            boolean quote = chLocal == '\"';
            if (quote) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
                offset2 = offset;
            }
            boolean negative = chLocal == '-';
            if (negative) {
                offset = offset2 + 1;
                chLocal = charAt(this.bp + offset2);
            } else {
                offset = offset2;
            }
            if (chLocal >= '0' && chLocal <= '9') {
                long power;
                int start;
                int count;
                double value;
                long intVal = (long) (chLocal - 48);
                while (true) {
                    offset2 = offset + 1;
                    chLocal = charAt(this.bp + offset);
                    if (chLocal < '0' || chLocal > '9') {
                        power = 1;
                    } else {
                        intVal = (10 * intVal) + ((long) (chLocal - 48));
                        offset = offset2;
                    }
                }
                power = 1;
                if (chLocal == '.') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    if (chLocal >= '0' && chLocal <= '9') {
                        intVal = (10 * intVal) + ((long) (chLocal - 48));
                        power = 10;
                        while (true) {
                            offset2 = offset + 1;
                            chLocal = charAt(this.bp + offset);
                            if (chLocal < '0' || chLocal > '9') {
                                break;
                            }
                            intVal = (10 * intVal) + ((long) (chLocal - 48));
                            power *= 10;
                            offset = offset2;
                        }
                    } else {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                }
                boolean exp = chLocal == 'e' || chLocal == 'E';
                if (exp) {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    if (chLocal == '+' || chLocal == '-') {
                        offset2 = offset + 1;
                        chLocal = charAt(this.bp + offset);
                    } else {
                        offset2 = offset;
                    }
                    while (chLocal >= '0' && chLocal <= '9') {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
                        offset2 = offset;
                    }
                }
                if (!quote) {
                    start = this.bp + fieldName.length;
                    count = ((this.bp + offset2) - start) - 1;
                } else if (chLocal != '\"') {
                    this.matchStat = -1;
                    return 0.0d;
                } else {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    start = (this.bp + fieldName.length) + 1;
                    count = ((this.bp + offset) - start) - 2;
                    offset2 = offset;
                }
                if (exp || count >= 20) {
                    value = Double.parseDouble(subString(start, count));
                } else {
                    value = ((double) intVal) / ((double) power);
                    if (negative) {
                        value = -value;
                    }
                }
                if (chLocal == ',') {
                    this.bp += offset2;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                    this.token = 16;
                    return value;
                } else if (chLocal == '}') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    if (chLocal == ',') {
                        this.token = 16;
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                    } else if (chLocal == ']') {
                        this.token = 15;
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                    } else if (chLocal == '}') {
                        this.token = 13;
                        this.bp += offset;
                        this.ch = charAt(this.bp);
                    } else if (chLocal == 26) {
                        this.token = 20;
                        this.bp += offset - 1;
                        this.ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                    this.matchStat = 4;
                    return value;
                } else {
                    this.matchStat = -1;
                    return 0.0d;
                }
            } else if (chLocal == 'n' && charAt(this.bp + offset) == 'u' && charAt((this.bp + offset) + 1) == 'l' && charAt((this.bp + offset) + 2) == 'l') {
                this.matchStat = 5;
                offset += 3;
                offset2 = offset + 1;
                chLocal = charAt(this.bp + offset);
                if (quote && chLocal == '\"') {
                    offset = offset2 + 1;
                    chLocal = charAt(this.bp + offset2);
                    offset2 = offset;
                }
                while (chLocal != ',') {
                    if (chLocal == '}') {
                        this.bp += offset2;
                        this.ch = charAt(this.bp);
                        this.matchStat = 5;
                        this.token = 13;
                        return 0.0d;
                    } else if (isWhitespace(chLocal)) {
                        offset = offset2 + 1;
                        chLocal = charAt(this.bp + offset2);
                        offset2 = offset;
                    } else {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                }
                this.bp += offset2;
                this.ch = charAt(this.bp);
                this.matchStat = 5;
                this.token = 16;
                return 0.0d;
            } else {
                this.matchStat = -1;
                return 0.0d;
            }
        }
        this.matchStat = -2;
        return 0.0d;
    }

    public final void scanTrue() {
        if (this.ch != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch == ' ' || this.ch == ',' || this.ch == '}' || this.ch == ']' || this.ch == 10 || this.ch == 13 || this.ch == 9 || this.ch == JSONLexer.EOI || this.ch == 12 || this.ch == 8 || this.ch == ':' || this.ch == '/') {
            this.token = 6;
            return;
        }
        throw new JSONException("scan true error");
    }

    public final void scanNullOrNew() {
        if (this.ch != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        if (this.ch == 'u') {
            next();
            if (this.ch != 'l') {
                throw new JSONException("error parse null");
            }
            next();
            if (this.ch != 'l') {
                throw new JSONException("error parse null");
            }
            next();
            if (this.ch == ' ' || this.ch == ',' || this.ch == '}' || this.ch == ']' || this.ch == 10 || this.ch == 13 || this.ch == 9 || this.ch == JSONLexer.EOI || this.ch == 12 || this.ch == 8) {
                this.token = 8;
                return;
            }
            throw new JSONException("scan null error");
        } else if (this.ch != 'e') {
            throw new JSONException("error parse new");
        } else {
            next();
            if (this.ch != 'w') {
                throw new JSONException("error parse new");
            }
            next();
            if (this.ch == ' ' || this.ch == ',' || this.ch == '}' || this.ch == ']' || this.ch == 10 || this.ch == 13 || this.ch == 9 || this.ch == JSONLexer.EOI || this.ch == 12 || this.ch == 8) {
                this.token = 9;
                return;
            }
            throw new JSONException("scan new error");
        }
    }

    public final void scanFalse() {
        if (this.ch != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch == ' ' || this.ch == ',' || this.ch == '}' || this.ch == ']' || this.ch == 10 || this.ch == 13 || this.ch == 9 || this.ch == JSONLexer.EOI || this.ch == 12 || this.ch == 8 || this.ch == ':' || this.ch == '/') {
            this.token = 7;
            return;
        }
        throw new JSONException("scan false error");
    }

    public final void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
        do {
            this.sp++;
            next();
        } while (Character.isLetterOrDigit(this.ch));
        String ident = stringVal();
        if ("null".equalsIgnoreCase(ident)) {
            this.token = 8;
        } else if ("new".equals(ident)) {
            this.token = 9;
        } else if ("true".equals(ident)) {
            this.token = 6;
        } else if (SymbolExpUtil.STRING_FALSE.equals(ident)) {
            this.token = 7;
        } else if ("undefined".equals(ident)) {
            this.token = 23;
        } else if ("Set".equals(ident)) {
            this.token = 21;
        } else if ("TreeSet".equals(ident)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    public static String readString(char[] chars, int chars_len) {
        char[] sbuf = new char[chars_len];
        int i = 0;
        int len = 0;
        while (i < chars_len) {
            int len2;
            char ch = chars[i];
            if (ch != '\\') {
                len2 = len + 1;
                sbuf[len] = ch;
            } else {
                i++;
                switch (chars[i]) {
                    case '\"':
                        len2 = len + 1;
                        sbuf[len] = '\"';
                        break;
                    case '\'':
                        len2 = len + 1;
                        sbuf[len] = '\'';
                        break;
                    case '/':
                        len2 = len + 1;
                        sbuf[len] = '/';
                        break;
                    case '0':
                        len2 = len + 1;
                        sbuf[len] = 0;
                        break;
                    case '1':
                        len2 = len + 1;
                        sbuf[len] = 1;
                        break;
                    case '2':
                        len2 = len + 1;
                        sbuf[len] = 2;
                        break;
                    case '3':
                        len2 = len + 1;
                        sbuf[len] = 3;
                        break;
                    case '4':
                        len2 = len + 1;
                        sbuf[len] = 4;
                        break;
                    case '5':
                        len2 = len + 1;
                        sbuf[len] = 5;
                        break;
                    case '6':
                        len2 = len + 1;
                        sbuf[len] = 6;
                        break;
                    case '7':
                        len2 = len + 1;
                        sbuf[len] = 7;
                        break;
                    case 'F':
                    case 'f':
                        len2 = len + 1;
                        sbuf[len] = 12;
                        break;
                    case '\\':
                        len2 = len + 1;
                        sbuf[len] = '\\';
                        break;
                    case 'b':
                        len2 = len + 1;
                        sbuf[len] = 8;
                        break;
                    case 'n':
                        len2 = len + 1;
                        sbuf[len] = 10;
                        break;
                    case 'r':
                        len2 = len + 1;
                        sbuf[len] = 13;
                        break;
                    case 't':
                        len2 = len + 1;
                        sbuf[len] = 9;
                        break;
                    case 'u':
                        len2 = len + 1;
                        r6 = new char[4];
                        i++;
                        r6[0] = chars[i];
                        i++;
                        r6[1] = chars[i];
                        i++;
                        r6[2] = chars[i];
                        i++;
                        r6[3] = chars[i];
                        sbuf[len] = (char) Integer.parseInt(new String(r6), 16);
                        break;
                    case 'v':
                        len2 = len + 1;
                        sbuf[len] = 11;
                        break;
                    case 'x':
                        len2 = len + 1;
                        i++;
                        i++;
                        sbuf[len] = (char) ((digits[chars[i]] * 16) + digits[chars[i]]);
                        break;
                    default:
                        throw new JSONException("unclosed.str.lit");
                }
            }
            i++;
            len = len2;
        }
        return new String(sbuf, 0, len);
    }

    public boolean isBlankInput() {
        int i = 0;
        while (true) {
            char chLocal = charAt(i);
            if (chLocal == JSONLexer.EOI) {
                this.token = 20;
                return true;
            } else if (!isWhitespace(chLocal)) {
                return false;
            } else {
                i++;
            }
        }
    }

    public final void skipWhitespace() {
        while (this.ch <= '/') {
            if (this.ch == ' ' || this.ch == 13 || this.ch == 10 || this.ch == 9 || this.ch == 12 || this.ch == 8) {
                next();
            } else if (this.ch == '/') {
                skipComment();
            } else {
                return;
            }
        }
    }

    private void scanStringSingleQuote() {
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char chLocal = next();
            if (chLocal == '\'') {
                this.token = 4;
                next();
                return;
            } else if (chLocal == JSONLexer.EOI) {
                if (isEOF()) {
                    throw new JSONException("unclosed single-quote string");
                }
                putChar(JSONLexer.EOI);
            } else if (chLocal == '\\') {
                if (!this.hasSpecial) {
                    this.hasSpecial = true;
                    if (this.sp > this.sbuf.length) {
                        char[] newsbuf = new char[(this.sp * 2)];
                        System.arraycopy(this.sbuf, 0, newsbuf, 0, this.sbuf.length);
                        this.sbuf = newsbuf;
                    }
                    copyTo(this.np + 1, this.sp, this.sbuf);
                }
                chLocal = next();
                switch (chLocal) {
                    case '\"':
                        putChar('\"');
                        break;
                    case '\'':
                        putChar('\'');
                        break;
                    case '/':
                        putChar('/');
                        break;
                    case '0':
                        putChar(0);
                        break;
                    case '1':
                        putChar(1);
                        break;
                    case '2':
                        putChar(2);
                        break;
                    case '3':
                        putChar(3);
                        break;
                    case '4':
                        putChar(4);
                        break;
                    case '5':
                        putChar(5);
                        break;
                    case '6':
                        putChar(6);
                        break;
                    case '7':
                        putChar(7);
                        break;
                    case 'F':
                    case 'f':
                        putChar(12);
                        break;
                    case '\\':
                        putChar('\\');
                        break;
                    case 'b':
                        putChar(8);
                        break;
                    case 'n':
                        putChar(10);
                        break;
                    case 'r':
                        putChar(13);
                        break;
                    case 't':
                        putChar(9);
                        break;
                    case 'u':
                        putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                        break;
                    case 'v':
                        putChar(11);
                        break;
                    case 'x':
                        putChar((char) ((digits[next()] * 16) + digits[next()]));
                        break;
                    default:
                        this.ch = chLocal;
                        throw new JSONException("unclosed single-quote string");
                }
            } else if (!this.hasSpecial) {
                this.sp++;
            } else if (this.sp == this.sbuf.length) {
                putChar(chLocal);
            } else {
                char[] cArr = this.sbuf;
                int i = this.sp;
                this.sp = i + 1;
                cArr[i] = chLocal;
            }
        }
    }

    protected final void putChar(char ch) {
        if (this.sp == this.sbuf.length) {
            char[] newsbuf = new char[(this.sbuf.length * 2)];
            System.arraycopy(this.sbuf, 0, newsbuf, 0, this.sbuf.length);
            this.sbuf = newsbuf;
        }
        char[] cArr = this.sbuf;
        int i = this.sp;
        this.sp = i + 1;
        cArr[i] = ch;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x006c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void scanHex() {
        if (this.ch != 'x') {
            throw new JSONException("illegal state. " + this.ch);
        }
        next();
        if (this.ch != '\'') {
            throw new JSONException("illegal state. " + this.ch);
        }
        char ch;
        this.np = this.bp;
        next();
        int i = 0;
        while (true) {
            ch = next();
            if ((ch >= '0' && ch <= '9') || (ch >= 'A' && ch <= 'F')) {
                this.sp++;
                i++;
            } else if (ch != '\'') {
                this.sp++;
                next();
                this.token = 26;
                return;
            } else {
                throw new JSONException("illegal state. " + ch);
            }
        }
        if (ch != '\'') {
        }
    }

    public final void scanNumber() {
        this.np = this.bp;
        if (this.ch == '-') {
            this.sp++;
            next();
        }
        while (this.ch >= '0' && this.ch <= '9') {
            this.sp++;
            next();
        }
        boolean isDouble = false;
        if (this.ch == '.') {
            this.sp++;
            next();
            isDouble = true;
            while (this.ch >= '0' && this.ch <= '9') {
                this.sp++;
                next();
            }
        }
        if (this.ch == 'L') {
            this.sp++;
            next();
        } else if (this.ch == 'S') {
            this.sp++;
            next();
        } else if (this.ch == 'B') {
            this.sp++;
            next();
        } else if (this.ch == 'F') {
            this.sp++;
            next();
            isDouble = true;
        } else if (this.ch == 'D') {
            this.sp++;
            next();
            isDouble = true;
        } else if (this.ch == 'e' || this.ch == 'E') {
            this.sp++;
            next();
            if (this.ch == '+' || this.ch == '-') {
                this.sp++;
                next();
            }
            while (this.ch >= '0' && this.ch <= '9') {
                this.sp++;
                next();
            }
            if (this.ch == 'D' || this.ch == 'F') {
                this.sp++;
                next();
            }
            isDouble = true;
        }
        if (isDouble) {
            this.token = 3;
        } else {
            this.token = 2;
        }
    }

    public final long longValue() throws NumberFormatException {
        long limit;
        int i;
        long result = 0;
        boolean negative = false;
        if (this.np == -1) {
            this.np = 0;
        }
        int i2 = this.np;
        int max = this.np + this.sp;
        if (charAt(this.np) == '-') {
            negative = true;
            limit = Long.MIN_VALUE;
            i = i2 + 1;
        } else {
            limit = -9223372036854775807L;
            i = i2;
        }
        if (i < max) {
            result = (long) (-(charAt(i) - 48));
            i++;
        }
        while (i < max) {
            i2 = i + 1;
            char chLocal = charAt(i);
            if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B') {
                break;
            }
            int digit = chLocal - 48;
            if (result < MULTMIN_RADIX_TEN) {
                throw new NumberFormatException(numberString());
            }
            result *= 10;
            if (result < ((long) digit) + limit) {
                throw new NumberFormatException(numberString());
            }
            result -= (long) digit;
            i = i2;
        }
        i2 = i;
        if (!negative) {
            return -result;
        }
        if (i2 > this.np + 1) {
            return result;
        }
        throw new NumberFormatException(numberString());
    }

    public final Number decimalValue(boolean decimal) {
        char chLocal = charAt((this.np + this.sp) - 1);
        if (chLocal == 'F') {
            try {
                return Float.valueOf(Float.parseFloat(numberString()));
            } catch (NumberFormatException ex) {
                throw new JSONException(ex.getMessage() + ", " + info());
            }
        } else if (chLocal == 'D') {
            return Double.valueOf(Double.parseDouble(numberString()));
        } else {
            if (decimal) {
                return decimalValue();
            }
            return Double.valueOf(doubleValue());
        }
    }

    public static boolean isWhitespace(char ch) {
        return ch <= ' ' && (ch == ' ' || ch == 10 || ch == 13 || ch == 9 || ch == 12 || ch == 8);
    }
}
