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

public class XmPushActionNormalConfig implements Serializable, Cloneable, TBase<XmPushActionNormalConfig, Object> {
    private static final TField NORMAL_CONFIGS_FIELD_DESC = new TField("", (byte) 15, (short) 1);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionNormalConfig");
    public List<NormalConfig> normalConfigs;

    public List<NormalConfig> getNormalConfigs() {
        return this.normalConfigs;
    }

    public boolean isSetNormalConfigs() {
        return this.normalConfigs != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionNormalConfig)) {
            return equals((XmPushActionNormalConfig) that);
        }
        return false;
    }

    public boolean equals(XmPushActionNormalConfig that) {
        if (that == null) {
            return false;
        }
        boolean this_present_normalConfigs = isSetNormalConfigs();
        boolean that_present_normalConfigs = that.isSetNormalConfigs();
        if ((this_present_normalConfigs || that_present_normalConfigs) && (!this_present_normalConfigs || !that_present_normalConfigs || !this.normalConfigs.equals(that.normalConfigs))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionNormalConfig other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionNormalConfig typedOther = other;
        int lastComparison = Boolean.valueOf(isSetNormalConfigs()).compareTo(Boolean.valueOf(typedOther.isSetNormalConfigs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetNormalConfigs()) {
            lastComparison = TBaseHelper.compareTo(this.normalConfigs, typedOther.normalConfigs);
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
                    TList _list75 = iprot.readListBegin();
                    this.normalConfigs = new ArrayList(_list75.size);
                    for (int _i76 = 0; _i76 < _list75.size; _i76++) {
                        NormalConfig _elem77 = new NormalConfig();
                        _elem77.read(iprot);
                        this.normalConfigs.add(_elem77);
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
        if (this.normalConfigs != null) {
            oprot.writeFieldBegin(NORMAL_CONFIGS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.normalConfigs.size()));
            for (NormalConfig _iter78 : this.normalConfigs) {
                _iter78.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionNormalConfig(");
        sb.append("normalConfigs:");
        if (this.normalConfigs == null) {
            sb.append("null");
        } else {
            sb.append(this.normalConfigs);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.normalConfigs == null) {
            throw new TProtocolException("Required field 'normalConfigs' was not present! Struct: " + toString());
        }
    }
}
