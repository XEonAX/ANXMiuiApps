package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class Cellular implements Serializable, Cloneable, TBase<Cellular, Object> {
    private static final TField ID_FIELD_DESC = new TField("", (byte) 8, (short) 1);
    private static final TField SIGNAL_STRENGTH_FIELD_DESC = new TField("", (byte) 8, (short) 2);
    private static final TStruct STRUCT_DESC = new TStruct("Cellular");
    private BitSet __isset_bit_vector = new BitSet(2);
    public int id;
    public int signalStrength;

    public Cellular setId(int id) {
        this.id = id;
        setIdIsSet(true);
        return this;
    }

    public boolean isSetId() {
        return this.__isset_bit_vector.get(0);
    }

    public void setIdIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public Cellular setSignalStrength(int signalStrength) {
        this.signalStrength = signalStrength;
        setSignalStrengthIsSet(true);
        return this;
    }

    public boolean isSetSignalStrength() {
        return this.__isset_bit_vector.get(1);
    }

    public void setSignalStrengthIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof Cellular)) {
            return equals((Cellular) that);
        }
        return false;
    }

    public boolean equals(Cellular that) {
        if (that == null) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.id != that.id)) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.signalStrength != that.signalStrength)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(Cellular other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        Cellular typedOther = other;
        int lastComparison = Boolean.valueOf(isSetId()).compareTo(Boolean.valueOf(typedOther.isSetId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetId()) {
            lastComparison = TBaseHelper.compareTo(this.id, typedOther.id);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetSignalStrength()).compareTo(Boolean.valueOf(typedOther.isSetSignalStrength()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSignalStrength()) {
            lastComparison = TBaseHelper.compareTo(this.signalStrength, typedOther.signalStrength);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        return 0;
    }

    public void read(TProtocol iprot) throws TException {
        iprot.readStructBegin();
        while (true) {
            TField field = iprot.readFieldBegin();
            if (field.type == (byte) 0) {
                iprot.readStructEnd();
                if (!isSetId()) {
                    throw new TProtocolException("Required field 'id' was not found in serialized data! Struct: " + toString());
                } else if (isSetSignalStrength()) {
                    validate();
                    return;
                } else {
                    throw new TProtocolException("Required field 'signalStrength' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.id = iprot.readI32();
                    setIdIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.signalStrength = iprot.readI32();
                    setSignalStrengthIsSet(true);
                    break;
                default:
                    TProtocolUtil.skip(iprot, field.type);
                    break;
            }
            iprot.readFieldEnd();
        }
    }

    public void write(TProtocol oprot) throws TException {
        validate();
        oprot.writeStructBegin(STRUCT_DESC);
        oprot.writeFieldBegin(ID_FIELD_DESC);
        oprot.writeI32(this.id);
        oprot.writeFieldEnd();
        oprot.writeFieldBegin(SIGNAL_STRENGTH_FIELD_DESC);
        oprot.writeI32(this.signalStrength);
        oprot.writeFieldEnd();
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Cellular(");
        sb.append("id:");
        sb.append(this.id);
        if (!false) {
            sb.append(", ");
        }
        sb.append("signalStrength:");
        sb.append(this.signalStrength);
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
    }
}
