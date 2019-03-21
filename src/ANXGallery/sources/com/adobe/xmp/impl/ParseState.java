package com.adobe.xmp.impl;

import com.adobe.xmp.XMPException;

/* compiled from: ISO8601Converter */
class ParseState {
    private int pos = 0;
    private String str;

    public ParseState(String str) {
        this.str = str;
    }

    public int length() {
        return this.str.length();
    }

    public boolean hasNext() {
        return this.pos < this.str.length();
    }

    public char ch(int index) {
        return index < this.str.length() ? this.str.charAt(index) : 0;
    }

    public char ch() {
        return this.pos < this.str.length() ? this.str.charAt(this.pos) : 0;
    }

    public void skip() {
        this.pos++;
    }

    public int pos() {
        return this.pos;
    }

    public int gatherInt(String errorMsg, int maxValue) throws XMPException {
        int value = 0;
        boolean success = false;
        char ch = ch(this.pos);
        while ('0' <= ch && ch <= '9') {
            value = (value * 10) + (ch - 48);
            success = true;
            this.pos++;
            ch = ch(this.pos);
        }
        if (!success) {
            throw new XMPException(errorMsg, 5);
        } else if (value > maxValue) {
            return maxValue;
        } else {
            return value < 0 ? 0 : value;
        }
    }
}
