package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.jcodec.platform.Platform;
import org.keyczar.Keyczar;

public class MetaValue {
    private byte[] data;
    private int locale;
    private int type;

    private MetaValue(int type, int locale, byte[] data) {
        this.type = type;
        this.locale = locale;
        this.data = data;
    }

    public static MetaValue createOtherWithLocale(int type, int locale, byte[] data) {
        return new MetaValue(type, locale, data);
    }

    public int getInt() {
        if (this.type == 21 || this.type == 22) {
            switch (this.data.length) {
                case 1:
                    return this.data[0];
                case 2:
                    return toInt16(this.data);
                case 3:
                    return toInt24(this.data);
                case 4:
                    return toInt32(this.data);
            }
        }
        if (this.type == 65) {
            return this.data[0];
        }
        if (this.type == 66) {
            return toInt16(this.data);
        }
        if (this.type == 67) {
            return toInt32(this.data);
        }
        return 0;
    }

    public double getFloat() {
        if (this.type == 23) {
            return (double) toFloat(this.data);
        }
        if (this.type == 24) {
            return toDouble(this.data);
        }
        return 0.0d;
    }

    public String getString() {
        if (this.type == 1) {
            return Platform.stringFromCharset(this.data, Keyczar.DEFAULT_ENCODING);
        }
        if (this.type == 2) {
            return Platform.stringFromCharset(this.data, "UTF-16BE");
        }
        return null;
    }

    public boolean isInt() {
        return this.type == 21 || this.type == 22 || this.type == 65 || this.type == 66 || this.type == 67;
    }

    public boolean isString() {
        return this.type == 1 || this.type == 2;
    }

    public boolean isFloat() {
        return this.type == 23 || this.type == 24;
    }

    public String toString() {
        if (isInt()) {
            return String.valueOf(getInt());
        }
        if (isFloat()) {
            return String.valueOf(getFloat());
        }
        if (isString()) {
            return String.valueOf(getString());
        }
        return "BLOB";
    }

    public int getType() {
        return this.type;
    }

    public int getLocale() {
        return this.locale;
    }

    public byte[] getData() {
        return this.data;
    }

    private int toInt16(byte[] data) {
        ByteBuffer bb = ByteBuffer.wrap(data);
        bb.order(ByteOrder.BIG_ENDIAN);
        return bb.getShort();
    }

    private int toInt24(byte[] data) {
        ByteBuffer bb = ByteBuffer.wrap(data);
        bb.order(ByteOrder.BIG_ENDIAN);
        return ((bb.getShort() & 65535) << 8) | (bb.get() & 255);
    }

    private int toInt32(byte[] data) {
        ByteBuffer bb = ByteBuffer.wrap(data);
        bb.order(ByteOrder.BIG_ENDIAN);
        return bb.getInt();
    }

    private float toFloat(byte[] data) {
        ByteBuffer bb = ByteBuffer.wrap(data);
        bb.order(ByteOrder.BIG_ENDIAN);
        return bb.getFloat();
    }

    private double toDouble(byte[] data) {
        ByteBuffer bb = ByteBuffer.wrap(data);
        bb.order(ByteOrder.BIG_ENDIAN);
        return bb.getDouble();
    }
}
