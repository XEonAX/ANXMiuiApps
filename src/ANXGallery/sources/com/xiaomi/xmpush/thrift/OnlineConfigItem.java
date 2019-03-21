package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class OnlineConfigItem implements Serializable, Cloneable, TBase<OnlineConfigItem, Object> {
    private static final TField BOOL_VALUE_FIELD_DESC = new TField("", (byte) 2, (short) 7);
    private static final TField CLEAR_FIELD_DESC = new TField("", (byte) 2, (short) 3);
    private static final TField INT_VALUE_FIELD_DESC = new TField("", (byte) 8, (short) 4);
    private static final TField KEY_FIELD_DESC = new TField("", (byte) 8, (short) 1);
    private static final TField LONG_VALUE_FIELD_DESC = new TField("", (byte) 10, (short) 5);
    private static final TField STRING_VALUE_FIELD_DESC = new TField("", (byte) 11, (short) 6);
    private static final TStruct STRUCT_DESC = new TStruct("OnlineConfigItem");
    private static final TField TYPE_FIELD_DESC = new TField("", (byte) 8, (short) 2);
    private BitSet __isset_bit_vector = new BitSet(6);
    public boolean boolValue;
    public boolean clear;
    public int intValue;
    public int key;
    public long longValue;
    public String stringValue;
    public int type;

    public int getKey() {
        return this.key;
    }

    public boolean isSetKey() {
        return this.__isset_bit_vector.get(0);
    }

    public void setKeyIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public int getType() {
        return this.type;
    }

    public boolean isSetType() {
        return this.__isset_bit_vector.get(1);
    }

    public void setTypeIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetClear() {
        return this.__isset_bit_vector.get(2);
    }

    public void setClearIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public int getIntValue() {
        return this.intValue;
    }

    public boolean isSetIntValue() {
        return this.__isset_bit_vector.get(3);
    }

    public void setIntValueIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
    }

    public long getLongValue() {
        return this.longValue;
    }

    public boolean isSetLongValue() {
        return this.__isset_bit_vector.get(4);
    }

    public void setLongValueIsSet(boolean value) {
        this.__isset_bit_vector.set(4, value);
    }

    public String getStringValue() {
        return this.stringValue;
    }

    public boolean isSetStringValue() {
        return this.stringValue != null;
    }

    public boolean isBoolValue() {
        return this.boolValue;
    }

    public boolean isSetBoolValue() {
        return this.__isset_bit_vector.get(5);
    }

    public void setBoolValueIsSet(boolean value) {
        this.__isset_bit_vector.set(5, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof OnlineConfigItem)) {
            return equals((OnlineConfigItem) that);
        }
        return false;
    }

    public boolean equals(OnlineConfigItem that) {
        if (that == null) {
            return false;
        }
        boolean this_present_key = isSetKey();
        boolean that_present_key = that.isSetKey();
        if (this_present_key || that_present_key) {
            if (!this_present_key || !that_present_key) {
                return false;
            }
            if (this.key != that.key) {
                return false;
            }
        }
        boolean this_present_type = isSetType();
        boolean that_present_type = that.isSetType();
        if (this_present_type || that_present_type) {
            if (!this_present_type || !that_present_type) {
                return false;
            }
            if (this.type != that.type) {
                return false;
            }
        }
        boolean this_present_clear = isSetClear();
        boolean that_present_clear = that.isSetClear();
        if (this_present_clear || that_present_clear) {
            if (!this_present_clear || !that_present_clear) {
                return false;
            }
            if (this.clear != that.clear) {
                return false;
            }
        }
        boolean this_present_intValue = isSetIntValue();
        boolean that_present_intValue = that.isSetIntValue();
        if (this_present_intValue || that_present_intValue) {
            if (!this_present_intValue || !that_present_intValue) {
                return false;
            }
            if (this.intValue != that.intValue) {
                return false;
            }
        }
        boolean this_present_longValue = isSetLongValue();
        boolean that_present_longValue = that.isSetLongValue();
        if (this_present_longValue || that_present_longValue) {
            if (!this_present_longValue || !that_present_longValue) {
                return false;
            }
            if (this.longValue != that.longValue) {
                return false;
            }
        }
        boolean this_present_stringValue = isSetStringValue();
        boolean that_present_stringValue = that.isSetStringValue();
        if (this_present_stringValue || that_present_stringValue) {
            if (!this_present_stringValue || !that_present_stringValue) {
                return false;
            }
            if (!this.stringValue.equals(that.stringValue)) {
                return false;
            }
        }
        boolean this_present_boolValue = isSetBoolValue();
        boolean that_present_boolValue = that.isSetBoolValue();
        if (this_present_boolValue || that_present_boolValue) {
            if (!this_present_boolValue || !that_present_boolValue) {
                return false;
            }
            if (this.boolValue != that.boolValue) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(OnlineConfigItem other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        OnlineConfigItem typedOther = other;
        int lastComparison = Boolean.valueOf(isSetKey()).compareTo(Boolean.valueOf(typedOther.isSetKey()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetKey()) {
            lastComparison = TBaseHelper.compareTo(this.key, typedOther.key);
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
        lastComparison = Boolean.valueOf(isSetClear()).compareTo(Boolean.valueOf(typedOther.isSetClear()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetClear()) {
            lastComparison = TBaseHelper.compareTo(this.clear, typedOther.clear);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetIntValue()).compareTo(Boolean.valueOf(typedOther.isSetIntValue()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetIntValue()) {
            lastComparison = TBaseHelper.compareTo(this.intValue, typedOther.intValue);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetLongValue()).compareTo(Boolean.valueOf(typedOther.isSetLongValue()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetLongValue()) {
            lastComparison = TBaseHelper.compareTo(this.longValue, typedOther.longValue);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetStringValue()).compareTo(Boolean.valueOf(typedOther.isSetStringValue()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetStringValue()) {
            lastComparison = TBaseHelper.compareTo(this.stringValue, typedOther.stringValue);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetBoolValue()).compareTo(Boolean.valueOf(typedOther.isSetBoolValue()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetBoolValue()) {
            lastComparison = TBaseHelper.compareTo(this.boolValue, typedOther.boolValue);
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
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.key = iprot.readI32();
                    setKeyIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.type = iprot.readI32();
                    setTypeIsSet(true);
                    break;
                case (short) 3:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.clear = iprot.readBool();
                    setClearIsSet(true);
                    break;
                case (short) 4:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.intValue = iprot.readI32();
                    setIntValueIsSet(true);
                    break;
                case (short) 5:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.longValue = iprot.readI64();
                    setLongValueIsSet(true);
                    break;
                case (short) 6:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.stringValue = iprot.readString();
                        break;
                    }
                case (short) 7:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.boolValue = iprot.readBool();
                    setBoolValueIsSet(true);
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
        if (isSetKey()) {
            oprot.writeFieldBegin(KEY_FIELD_DESC);
            oprot.writeI32(this.key);
            oprot.writeFieldEnd();
        }
        if (isSetType()) {
            oprot.writeFieldBegin(TYPE_FIELD_DESC);
            oprot.writeI32(this.type);
            oprot.writeFieldEnd();
        }
        if (isSetClear()) {
            oprot.writeFieldBegin(CLEAR_FIELD_DESC);
            oprot.writeBool(this.clear);
            oprot.writeFieldEnd();
        }
        if (isSetIntValue()) {
            oprot.writeFieldBegin(INT_VALUE_FIELD_DESC);
            oprot.writeI32(this.intValue);
            oprot.writeFieldEnd();
        }
        if (isSetLongValue()) {
            oprot.writeFieldBegin(LONG_VALUE_FIELD_DESC);
            oprot.writeI64(this.longValue);
            oprot.writeFieldEnd();
        }
        if (this.stringValue != null && isSetStringValue()) {
            oprot.writeFieldBegin(STRING_VALUE_FIELD_DESC);
            oprot.writeString(this.stringValue);
            oprot.writeFieldEnd();
        }
        if (isSetBoolValue()) {
            oprot.writeFieldBegin(BOOL_VALUE_FIELD_DESC);
            oprot.writeBool(this.boolValue);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OnlineConfigItem(");
        boolean first = true;
        if (isSetKey()) {
            sb.append("key:");
            sb.append(this.key);
            first = false;
        }
        if (isSetType()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("type:");
            sb.append(this.type);
            first = false;
        }
        if (isSetClear()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("clear:");
            sb.append(this.clear);
            first = false;
        }
        if (isSetIntValue()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("intValue:");
            sb.append(this.intValue);
            first = false;
        }
        if (isSetLongValue()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("longValue:");
            sb.append(this.longValue);
            first = false;
        }
        if (isSetStringValue()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("stringValue:");
            if (this.stringValue == null) {
                sb.append("null");
            } else {
                sb.append(this.stringValue);
            }
            first = false;
        }
        if (isSetBoolValue()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("boolValue:");
            sb.append(this.boolValue);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
    }
}
