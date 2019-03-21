package org.apache.thrift.protocol;

public class TField {
    public final short id;
    public final String name;
    public final byte type;

    public TField() {
        this("", (byte) 0, (short) 0);
    }

    public TField(String n, byte t, short i) {
        this.name = n;
        this.type = t;
        this.id = i;
    }

    public String toString() {
        return "<TField name:'" + this.name + "' type:" + this.type + " field-id:" + this.id + ">";
    }
}
