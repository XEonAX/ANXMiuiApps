package org.apache.thrift.protocol;

public final class TStruct {
    public final String name;

    public TStruct() {
        this("");
    }

    public TStruct(String n) {
        this.name = n;
    }
}
