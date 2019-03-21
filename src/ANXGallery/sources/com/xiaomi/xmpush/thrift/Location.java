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

public class Location implements Serializable, Cloneable, TBase<Location, Object> {
    private static final TField LATITUDE_FIELD_DESC = new TField("", (byte) 4, (short) 2);
    private static final TField LONGITUDE_FIELD_DESC = new TField("", (byte) 4, (short) 1);
    private static final TStruct STRUCT_DESC = new TStruct("Location");
    private BitSet __isset_bit_vector = new BitSet(2);
    public double latitude;
    public double longitude;

    public double getLongitude() {
        return this.longitude;
    }

    public Location setLongitude(double longitude) {
        this.longitude = longitude;
        setLongitudeIsSet(true);
        return this;
    }

    public boolean isSetLongitude() {
        return this.__isset_bit_vector.get(0);
    }

    public void setLongitudeIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public double getLatitude() {
        return this.latitude;
    }

    public Location setLatitude(double latitude) {
        this.latitude = latitude;
        setLatitudeIsSet(true);
        return this;
    }

    public boolean isSetLatitude() {
        return this.__isset_bit_vector.get(1);
    }

    public void setLatitudeIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof Location)) {
            return equals((Location) that);
        }
        return false;
    }

    public boolean equals(Location that) {
        if (that == null) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.longitude != that.longitude)) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.latitude != that.latitude)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(Location other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        Location typedOther = other;
        int lastComparison = Boolean.valueOf(isSetLongitude()).compareTo(Boolean.valueOf(typedOther.isSetLongitude()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetLongitude()) {
            lastComparison = TBaseHelper.compareTo(this.longitude, typedOther.longitude);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetLatitude()).compareTo(Boolean.valueOf(typedOther.isSetLatitude()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetLatitude()) {
            lastComparison = TBaseHelper.compareTo(this.latitude, typedOther.latitude);
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
                if (!isSetLongitude()) {
                    throw new TProtocolException("Required field 'longitude' was not found in serialized data! Struct: " + toString());
                } else if (isSetLatitude()) {
                    validate();
                    return;
                } else {
                    throw new TProtocolException("Required field 'latitude' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 4) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.longitude = iprot.readDouble();
                    setLongitudeIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 4) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.latitude = iprot.readDouble();
                    setLatitudeIsSet(true);
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
        oprot.writeFieldBegin(LONGITUDE_FIELD_DESC);
        oprot.writeDouble(this.longitude);
        oprot.writeFieldEnd();
        oprot.writeFieldBegin(LATITUDE_FIELD_DESC);
        oprot.writeDouble(this.latitude);
        oprot.writeFieldEnd();
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Location(");
        sb.append("longitude:");
        sb.append(this.longitude);
        if (!false) {
            sb.append(", ");
        }
        sb.append("latitude:");
        sb.append(this.latitude);
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
    }
}
