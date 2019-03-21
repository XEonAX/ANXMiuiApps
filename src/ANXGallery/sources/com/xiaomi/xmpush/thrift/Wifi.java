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

public class Wifi implements Serializable, Cloneable, TBase<Wifi, Object> {
    private static final TField MAC_ADDRESS_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField SIGNAL_STRENGTH_FIELD_DESC = new TField("", (byte) 8, (short) 2);
    private static final TField SSID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TStruct STRUCT_DESC = new TStruct("Wifi");
    private BitSet __isset_bit_vector = new BitSet(1);
    public String macAddress;
    public int signalStrength;
    public String ssid;

    public Wifi setMacAddress(String macAddress) {
        this.macAddress = macAddress;
        return this;
    }

    public boolean isSetMacAddress() {
        return this.macAddress != null;
    }

    public Wifi setSignalStrength(int signalStrength) {
        this.signalStrength = signalStrength;
        setSignalStrengthIsSet(true);
        return this;
    }

    public boolean isSetSignalStrength() {
        return this.__isset_bit_vector.get(0);
    }

    public void setSignalStrengthIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public Wifi setSsid(String ssid) {
        this.ssid = ssid;
        return this;
    }

    public boolean isSetSsid() {
        return this.ssid != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof Wifi)) {
            return equals((Wifi) that);
        }
        return false;
    }

    public boolean equals(Wifi that) {
        if (that == null) {
            return false;
        }
        boolean this_present_macAddress = isSetMacAddress();
        boolean that_present_macAddress = that.isSetMacAddress();
        if ((this_present_macAddress || that_present_macAddress) && (!this_present_macAddress || !that_present_macAddress || !this.macAddress.equals(that.macAddress))) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.signalStrength != that.signalStrength)) {
            return false;
        }
        boolean this_present_ssid = isSetSsid();
        boolean that_present_ssid = that.isSetSsid();
        if ((this_present_ssid || that_present_ssid) && (!this_present_ssid || !that_present_ssid || !this.ssid.equals(that.ssid))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(Wifi other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        Wifi typedOther = other;
        int lastComparison = Boolean.valueOf(isSetMacAddress()).compareTo(Boolean.valueOf(typedOther.isSetMacAddress()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetMacAddress()) {
            lastComparison = TBaseHelper.compareTo(this.macAddress, typedOther.macAddress);
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
        lastComparison = Boolean.valueOf(isSetSsid()).compareTo(Boolean.valueOf(typedOther.isSetSsid()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSsid()) {
            lastComparison = TBaseHelper.compareTo(this.ssid, typedOther.ssid);
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
                if (isSetSignalStrength()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'signalStrength' was not found in serialized data! Struct: " + toString());
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.macAddress = iprot.readString();
                        break;
                    }
                case (short) 2:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.signalStrength = iprot.readI32();
                    setSignalStrengthIsSet(true);
                    break;
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.ssid = iprot.readString();
                        break;
                    }
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
        if (this.macAddress != null) {
            oprot.writeFieldBegin(MAC_ADDRESS_FIELD_DESC);
            oprot.writeString(this.macAddress);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldBegin(SIGNAL_STRENGTH_FIELD_DESC);
        oprot.writeI32(this.signalStrength);
        oprot.writeFieldEnd();
        if (this.ssid != null && isSetSsid()) {
            oprot.writeFieldBegin(SSID_FIELD_DESC);
            oprot.writeString(this.ssid);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Wifi(");
        sb.append("macAddress:");
        if (this.macAddress == null) {
            sb.append("null");
        } else {
            sb.append(this.macAddress);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("signalStrength:");
        sb.append(this.signalStrength);
        if (isSetSsid()) {
            if (!false) {
                sb.append(", ");
            }
            sb.append("ssid:");
            if (this.ssid == null) {
                sb.append("null");
            } else {
                sb.append(this.ssid);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.macAddress == null) {
            throw new TProtocolException("Required field 'macAddress' was not present! Struct: " + toString());
        }
    }
}
