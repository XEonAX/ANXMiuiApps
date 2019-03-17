package com.alibaba.fastjson.asm;

public class ByteVector {
    byte[] data;
    int length;

    public ByteVector() {
        this.data = new byte[64];
    }

    public ByteVector(int initialSize) {
        this.data = new byte[initialSize];
    }

    public ByteVector putByte(int b) {
        int i = this.length;
        if (i + 1 > this.data.length) {
            enlarge(1);
        }
        int length = i + 1;
        this.data[i] = (byte) b;
        this.length = length;
        return this;
    }

    ByteVector put11(int b1, int b2) {
        int i = this.length;
        if (i + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] data = this.data;
        int i2 = i + 1;
        data[i] = (byte) b1;
        i = i2 + 1;
        data[i2] = (byte) b2;
        this.length = i;
        return this;
    }

    public ByteVector putShort(int s) {
        int i = this.length;
        if (i + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] data = this.data;
        int i2 = i + 1;
        data[i] = (byte) (s >>> 8);
        i = i2 + 1;
        data[i2] = (byte) s;
        this.length = i;
        return this;
    }

    ByteVector put12(int b, int s) {
        int i = this.length;
        if (i + 3 > this.data.length) {
            enlarge(3);
        }
        byte[] data = this.data;
        int i2 = i + 1;
        data[i] = (byte) b;
        i = i2 + 1;
        data[i2] = (byte) (s >>> 8);
        i2 = i + 1;
        data[i] = (byte) s;
        this.length = i2;
        return this;
    }

    public ByteVector putInt(int i) {
        int i2 = this.length;
        if (i2 + 4 > this.data.length) {
            enlarge(4);
        }
        byte[] data = this.data;
        int i3 = i2 + 1;
        data[i2] = (byte) (i >>> 24);
        i2 = i3 + 1;
        data[i3] = (byte) (i >>> 16);
        i3 = i2 + 1;
        data[i2] = (byte) (i >>> 8);
        i2 = i3 + 1;
        data[i3] = (byte) i;
        this.length = i2;
        return this;
    }

    public ByteVector putUTF8(String s) {
        int charLength = s.length();
        int i = this.length;
        if ((i + 2) + charLength > this.data.length) {
            enlarge(charLength + 2);
        }
        byte[] data = this.data;
        int i2 = i + 1;
        data[i] = (byte) (charLength >>> 8);
        i = i2 + 1;
        data[i2] = (byte) charLength;
        int i3 = 0;
        i2 = i;
        while (i3 < charLength) {
            char c = s.charAt(i3);
            if (c < 1 || c > 127) {
                throw new UnsupportedOperationException();
            }
            i = i2 + 1;
            data[i2] = (byte) c;
            i3++;
            i2 = i;
        }
        this.length = i2;
        return this;
    }

    public ByteVector putByteArray(byte[] b, int off, int len) {
        if (this.length + len > this.data.length) {
            enlarge(len);
        }
        if (b != null) {
            System.arraycopy(b, off, this.data, this.length, len);
        }
        this.length += len;
        return this;
    }

    private void enlarge(int size) {
        int length1 = this.data.length * 2;
        int length2 = this.length + size;
        if (length1 <= length2) {
            length1 = length2;
        }
        byte[] newData = new byte[length1];
        System.arraycopy(this.data, 0, newData, 0, this.length);
        this.data = newData;
    }
}
