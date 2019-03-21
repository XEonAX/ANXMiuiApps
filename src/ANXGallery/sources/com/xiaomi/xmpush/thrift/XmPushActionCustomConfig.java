package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
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

public class XmPushActionCustomConfig implements Serializable, Cloneable, TBase<XmPushActionCustomConfig, Object> {
    private static final TField CUSTOM_CONFIGS_FIELD_DESC = new TField("", (byte) 15, (short) 1);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionCustomConfig");
    public List<OnlineConfigItem> customConfigs;

    public List<OnlineConfigItem> getCustomConfigs() {
        return this.customConfigs;
    }

    public boolean isSetCustomConfigs() {
        return this.customConfigs != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionCustomConfig)) {
            return equals((XmPushActionCustomConfig) that);
        }
        return false;
    }

    public boolean equals(XmPushActionCustomConfig that) {
        if (that == null) {
            return false;
        }
        boolean this_present_customConfigs = isSetCustomConfigs();
        boolean that_present_customConfigs = that.isSetCustomConfigs();
        if ((this_present_customConfigs || that_present_customConfigs) && (!this_present_customConfigs || !that_present_customConfigs || !this.customConfigs.equals(that.customConfigs))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionCustomConfig other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionCustomConfig typedOther = other;
        int lastComparison = Boolean.valueOf(isSetCustomConfigs()).compareTo(Boolean.valueOf(typedOther.isSetCustomConfigs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCustomConfigs()) {
            lastComparison = TBaseHelper.compareTo(this.customConfigs, typedOther.customConfigs);
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
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list71 = iprot.readListBegin();
                    this.customConfigs = new ArrayList(_list71.size);
                    for (int _i72 = 0; _i72 < _list71.size; _i72++) {
                        OnlineConfigItem _elem73 = new OnlineConfigItem();
                        _elem73.read(iprot);
                        this.customConfigs.add(_elem73);
                    }
                    iprot.readListEnd();
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
        if (this.customConfigs != null) {
            oprot.writeFieldBegin(CUSTOM_CONFIGS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.customConfigs.size()));
            for (OnlineConfigItem _iter74 : this.customConfigs) {
                _iter74.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCustomConfig(");
        sb.append("customConfigs:");
        if (this.customConfigs == null) {
            sb.append("null");
        } else {
            sb.append(this.customConfigs);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.customConfigs == null) {
            throw new TProtocolException("Required field 'customConfigs' was not present! Struct: " + toString());
        }
    }
}
