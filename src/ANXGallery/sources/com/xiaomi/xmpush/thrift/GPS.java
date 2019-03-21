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

public class GPS implements Serializable, Cloneable, TBase<GPS, Object> {
    private static final TField ACCURACY_FIELD_DESC = new TField("", (byte) 4, (short) 4);
    private static final TField LOCATION_FIELD_DESC = new TField("", (byte) 12, (short) 1);
    private static final TField PERIOD_FIELD_DESC = new TField("", (byte) 10, (short) 3);
    private static final TField PROVIDER_FIELD_DESC = new TField("", (byte) 11, (short) 2);
    private static final TStruct STRUCT_DESC = new TStruct("GPS");
    private BitSet __isset_bit_vector = new BitSet(2);
    public double accuracy;
    public Location location;
    public long period;
    public String provider;

    public GPS setLocation(Location location) {
        this.location = location;
        return this;
    }

    public boolean isSetLocation() {
        return this.location != null;
    }

    public GPS setProvider(String provider) {
        this.provider = provider;
        return this;
    }

    public boolean isSetProvider() {
        return this.provider != null;
    }

    public GPS setPeriod(long period) {
        this.period = period;
        setPeriodIsSet(true);
        return this;
    }

    public boolean isSetPeriod() {
        return this.__isset_bit_vector.get(0);
    }

    public void setPeriodIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public GPS setAccuracy(double accuracy) {
        this.accuracy = accuracy;
        setAccuracyIsSet(true);
        return this;
    }

    public boolean isSetAccuracy() {
        return this.__isset_bit_vector.get(1);
    }

    public void setAccuracyIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof GPS)) {
            return equals((GPS) that);
        }
        return false;
    }

    public boolean equals(GPS that) {
        if (that == null) {
            return false;
        }
        boolean this_present_location = isSetLocation();
        boolean that_present_location = that.isSetLocation();
        if ((this_present_location || that_present_location) && (!this_present_location || !that_present_location || !this.location.equals(that.location))) {
            return false;
        }
        boolean this_present_provider = isSetProvider();
        boolean that_present_provider = that.isSetProvider();
        if ((this_present_provider || that_present_provider) && (!this_present_provider || !that_present_provider || !this.provider.equals(that.provider))) {
            return false;
        }
        boolean this_present_period = isSetPeriod();
        boolean that_present_period = that.isSetPeriod();
        if ((this_present_period || that_present_period) && (!this_present_period || !that_present_period || this.period != that.period)) {
            return false;
        }
        boolean this_present_accuracy = isSetAccuracy();
        boolean that_present_accuracy = that.isSetAccuracy();
        if ((this_present_accuracy || that_present_accuracy) && (!this_present_accuracy || !that_present_accuracy || this.accuracy != that.accuracy)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(GPS other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        GPS typedOther = other;
        int lastComparison = Boolean.valueOf(isSetLocation()).compareTo(Boolean.valueOf(typedOther.isSetLocation()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetLocation()) {
            lastComparison = TBaseHelper.compareTo(this.location, typedOther.location);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetProvider()).compareTo(Boolean.valueOf(typedOther.isSetProvider()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetProvider()) {
            lastComparison = TBaseHelper.compareTo(this.provider, typedOther.provider);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetPeriod()).compareTo(Boolean.valueOf(typedOther.isSetPeriod()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPeriod()) {
            lastComparison = TBaseHelper.compareTo(this.period, typedOther.period);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAccuracy()).compareTo(Boolean.valueOf(typedOther.isSetAccuracy()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAccuracy()) {
            lastComparison = TBaseHelper.compareTo(this.accuracy, typedOther.accuracy);
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
                validate();
                return;
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.location = new Location();
                    this.location.read(iprot);
                    break;
                case (short) 2:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.provider = iprot.readString();
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.period = iprot.readI64();
                    setPeriodIsSet(true);
                    break;
                case (short) 4:
                    if (field.type != (byte) 4) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.accuracy = iprot.readDouble();
                    setAccuracyIsSet(true);
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
        if (this.location != null) {
            oprot.writeFieldBegin(LOCATION_FIELD_DESC);
            this.location.write(oprot);
            oprot.writeFieldEnd();
        }
        if (this.provider != null && isSetProvider()) {
            oprot.writeFieldBegin(PROVIDER_FIELD_DESC);
            oprot.writeString(this.provider);
            oprot.writeFieldEnd();
        }
        if (isSetPeriod()) {
            oprot.writeFieldBegin(PERIOD_FIELD_DESC);
            oprot.writeI64(this.period);
            oprot.writeFieldEnd();
        }
        if (isSetAccuracy()) {
            oprot.writeFieldBegin(ACCURACY_FIELD_DESC);
            oprot.writeDouble(this.accuracy);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GPS(");
        sb.append("location:");
        if (this.location == null) {
            sb.append("null");
        } else {
            sb.append(this.location);
        }
        boolean first = false;
        if (isSetProvider()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("provider:");
            if (this.provider == null) {
                sb.append("null");
            } else {
                sb.append(this.provider);
            }
            first = false;
        }
        if (isSetPeriod()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("period:");
            sb.append(this.period);
            first = false;
        }
        if (isSetAccuracy()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("accuracy:");
            sb.append(this.accuracy);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.location == null) {
            throw new TProtocolException("Required field 'location' was not present! Struct: " + toString());
        }
    }
}
