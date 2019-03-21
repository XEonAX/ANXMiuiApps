package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TList;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class NormalConfig implements Serializable, Cloneable, TBase<NormalConfig, Object> {
    private static final TField CONFIG_ITEMS_FIELD_DESC = new TField("", (byte) 15, (short) 2);
    private static final TStruct STRUCT_DESC = new TStruct("NormalConfig");
    private static final TField TYPE_FIELD_DESC = new TField("", (byte) 8, (short) 3);
    private static final TField VERSION_FIELD_DESC = new TField("", (byte) 8, (short) 1);
    private BitSet __isset_bit_vector = new BitSet(1);
    public List<OnlineConfigItem> configItems;
    public ConfigListType type;
    public int version;

    public int getVersion() {
        return this.version;
    }

    public boolean isSetVersion() {
        return this.__isset_bit_vector.get(0);
    }

    public void setVersionIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetConfigItems() {
        return this.configItems != null;
    }

    public ConfigListType getType() {
        return this.type;
    }

    public boolean isSetType() {
        return this.type != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof NormalConfig)) {
            return equals((NormalConfig) that);
        }
        return false;
    }

    public boolean equals(NormalConfig that) {
        if (that == null) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.version != that.version)) {
            return false;
        }
        boolean this_present_configItems = isSetConfigItems();
        boolean that_present_configItems = that.isSetConfigItems();
        if ((this_present_configItems || that_present_configItems) && (!this_present_configItems || !that_present_configItems || !this.configItems.equals(that.configItems))) {
            return false;
        }
        boolean this_present_type = isSetType();
        boolean that_present_type = that.isSetType();
        if ((this_present_type || that_present_type) && (!this_present_type || !that_present_type || !this.type.equals(that.type))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(NormalConfig other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        NormalConfig typedOther = other;
        int lastComparison = Boolean.valueOf(isSetVersion()).compareTo(Boolean.valueOf(typedOther.isSetVersion()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetVersion()) {
            lastComparison = TBaseHelper.compareTo(this.version, typedOther.version);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetConfigItems()).compareTo(Boolean.valueOf(typedOther.isSetConfigItems()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetConfigItems()) {
            lastComparison = TBaseHelper.compareTo(this.configItems, typedOther.configItems);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetType()).compareTo(Boolean.valueOf(typedOther.isSetType()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetType()) {
            lastComparison = TBaseHelper.compareTo(this.type, typedOther.type);
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
                if (isSetVersion()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'version' was not found in serialized data! Struct: " + toString());
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.version = iprot.readI32();
                    setVersionIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list21 = iprot.readListBegin();
                    this.configItems = new ArrayList(_list21.size);
                    for (int _i22 = 0; _i22 < _list21.size; _i22++) {
                        OnlineConfigItem _elem23 = new OnlineConfigItem();
                        _elem23.read(iprot);
                        this.configItems.add(_elem23);
                    }
                    iprot.readListEnd();
                    break;
                case (short) 3:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.type = ConfigListType.findByValue(iprot.readI32());
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
        oprot.writeFieldBegin(VERSION_FIELD_DESC);
        oprot.writeI32(this.version);
        oprot.writeFieldEnd();
        if (this.configItems != null) {
            oprot.writeFieldBegin(CONFIG_ITEMS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.configItems.size()));
            for (OnlineConfigItem _iter24 : this.configItems) {
                _iter24.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        if (this.type != null && isSetType()) {
            oprot.writeFieldBegin(TYPE_FIELD_DESC);
            oprot.writeI32(this.type.getValue());
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NormalConfig(");
        sb.append("version:");
        sb.append(this.version);
        if (!false) {
            sb.append(", ");
        }
        sb.append("configItems:");
        if (this.configItems == null) {
            sb.append("null");
        } else {
            sb.append(this.configItems);
        }
        if (isSetType()) {
            if (!false) {
                sb.append(", ");
            }
            sb.append("type:");
            if (this.type == null) {
                sb.append("null");
            } else {
                sb.append(this.type);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.configItems == null) {
            throw new TProtocolException("Required field 'configItems' was not present! Struct: " + toString());
        }
    }
}
