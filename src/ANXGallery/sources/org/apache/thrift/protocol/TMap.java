package org.apache.thrift.protocol;

public final class TMap {
    public final byte keyType;
    public final int size;
    public final byte valueType;

    public TMap() {
        this((byte) 0, (byte) 0, 0);
    }

    public TMap(byte k, byte v, int s) {
        this.keyType = k;
        this.valueType = v;
        this.size = s;
    }
}
