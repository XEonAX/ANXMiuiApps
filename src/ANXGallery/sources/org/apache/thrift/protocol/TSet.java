package org.apache.thrift.protocol;

public final class TSet {
    public final byte elemType;
    public final int size;

    public TSet() {
        this((byte) 0, 0);
    }

    public TSet(byte t, int s) {
        this.elemType = t;
        this.size = s;
    }
}
