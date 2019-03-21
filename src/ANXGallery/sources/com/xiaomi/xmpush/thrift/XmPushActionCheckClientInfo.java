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

public class XmPushActionCheckClientInfo implements Serializable, Cloneable, TBase<XmPushActionCheckClientInfo, Object> {
    private static final TField MISC_CONFIG_VERSION_FIELD_DESC = new TField("", (byte) 8, (short) 1);
    private static final TField PLUGIN_CONFIG_VERSION_FIELD_DESC = new TField("", (byte) 8, (short) 2);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionCheckClientInfo");
    private BitSet __isset_bit_vector = new BitSet(2);
    public int miscConfigVersion;
    public int pluginConfigVersion;

    public XmPushActionCheckClientInfo setMiscConfigVersion(int miscConfigVersion) {
        this.miscConfigVersion = miscConfigVersion;
        setMiscConfigVersionIsSet(true);
        return this;
    }

    public boolean isSetMiscConfigVersion() {
        return this.__isset_bit_vector.get(0);
    }

    public void setMiscConfigVersionIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public XmPushActionCheckClientInfo setPluginConfigVersion(int pluginConfigVersion) {
        this.pluginConfigVersion = pluginConfigVersion;
        setPluginConfigVersionIsSet(true);
        return this;
    }

    public boolean isSetPluginConfigVersion() {
        return this.__isset_bit_vector.get(1);
    }

    public void setPluginConfigVersionIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionCheckClientInfo)) {
            return equals((XmPushActionCheckClientInfo) that);
        }
        return false;
    }

    public boolean equals(XmPushActionCheckClientInfo that) {
        if (that == null) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.miscConfigVersion != that.miscConfigVersion)) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.pluginConfigVersion != that.pluginConfigVersion)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionCheckClientInfo other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionCheckClientInfo typedOther = other;
        int lastComparison = Boolean.valueOf(isSetMiscConfigVersion()).compareTo(Boolean.valueOf(typedOther.isSetMiscConfigVersion()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetMiscConfigVersion()) {
            lastComparison = TBaseHelper.compareTo(this.miscConfigVersion, typedOther.miscConfigVersion);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetPluginConfigVersion()).compareTo(Boolean.valueOf(typedOther.isSetPluginConfigVersion()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPluginConfigVersion()) {
            lastComparison = TBaseHelper.compareTo(this.pluginConfigVersion, typedOther.pluginConfigVersion);
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
                if (!isSetMiscConfigVersion()) {
                    throw new TProtocolException("Required field 'miscConfigVersion' was not found in serialized data! Struct: " + toString());
                } else if (isSetPluginConfigVersion()) {
                    validate();
                    return;
                } else {
                    throw new TProtocolException("Required field 'pluginConfigVersion' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.miscConfigVersion = iprot.readI32();
                    setMiscConfigVersionIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.pluginConfigVersion = iprot.readI32();
                    setPluginConfigVersionIsSet(true);
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
        oprot.writeFieldBegin(MISC_CONFIG_VERSION_FIELD_DESC);
        oprot.writeI32(this.miscConfigVersion);
        oprot.writeFieldEnd();
        oprot.writeFieldBegin(PLUGIN_CONFIG_VERSION_FIELD_DESC);
        oprot.writeI32(this.pluginConfigVersion);
        oprot.writeFieldEnd();
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCheckClientInfo(");
        sb.append("miscConfigVersion:");
        sb.append(this.miscConfigVersion);
        if (!false) {
            sb.append(", ");
        }
        sb.append("pluginConfigVersion:");
        sb.append(this.pluginConfigVersion);
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
    }
}
