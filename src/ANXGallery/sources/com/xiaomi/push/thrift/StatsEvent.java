package com.xiaomi.push.thrift;

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

public class StatsEvent implements Serializable, Cloneable, TBase<StatsEvent, Object> {
    private static final TField ANNOTATION_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField CHID_FIELD_DESC = new TField("", (byte) 3, (short) 1);
    private static final TField CLIENT_IP_FIELD_DESC = new TField("", (byte) 8, (short) 10);
    private static final TField CONNPT_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField HOST_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TStruct STRUCT_DESC = new TStruct("StatsEvent");
    private static final TField SUBVALUE_FIELD_DESC = new TField("", (byte) 8, (short) 6);
    private static final TField TIME_FIELD_DESC = new TField("", (byte) 8, (short) 9);
    private static final TField TYPE_FIELD_DESC = new TField("", (byte) 8, (short) 2);
    private static final TField USER_FIELD_DESC = new TField("", (byte) 11, (short) 8);
    private static final TField VALUE_FIELD_DESC = new TField("", (byte) 8, (short) 3);
    private BitSet __isset_bit_vector = new BitSet(6);
    public String annotation;
    public byte chid;
    public int clientIp;
    public String connpt;
    public String host;
    public int subvalue;
    public int time;
    public int type;
    public String user;
    public int value;

    public StatsEvent setChid(byte chid) {
        this.chid = chid;
        setChidIsSet(true);
        return this;
    }

    public boolean isSetChid() {
        return this.__isset_bit_vector.get(0);
    }

    public void setChidIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public StatsEvent setType(int type) {
        this.type = type;
        setTypeIsSet(true);
        return this;
    }

    public boolean isSetType() {
        return this.__isset_bit_vector.get(1);
    }

    public void setTypeIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public StatsEvent setValue(int value) {
        this.value = value;
        setValueIsSet(true);
        return this;
    }

    public boolean isSetValue() {
        return this.__isset_bit_vector.get(2);
    }

    public void setValueIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public StatsEvent setConnpt(String connpt) {
        this.connpt = connpt;
        return this;
    }

    public boolean isSetConnpt() {
        return this.connpt != null;
    }

    public StatsEvent setHost(String host) {
        this.host = host;
        return this;
    }

    public boolean isSetHost() {
        return this.host != null;
    }

    public StatsEvent setSubvalue(int subvalue) {
        this.subvalue = subvalue;
        setSubvalueIsSet(true);
        return this;
    }

    public boolean isSetSubvalue() {
        return this.__isset_bit_vector.get(3);
    }

    public void setSubvalueIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
    }

    public StatsEvent setAnnotation(String annotation) {
        this.annotation = annotation;
        return this;
    }

    public boolean isSetAnnotation() {
        return this.annotation != null;
    }

    public StatsEvent setUser(String user) {
        this.user = user;
        return this;
    }

    public boolean isSetUser() {
        return this.user != null;
    }

    public StatsEvent setTime(int time) {
        this.time = time;
        setTimeIsSet(true);
        return this;
    }

    public boolean isSetTime() {
        return this.__isset_bit_vector.get(4);
    }

    public void setTimeIsSet(boolean value) {
        this.__isset_bit_vector.set(4, value);
    }

    public boolean isSetClientIp() {
        return this.__isset_bit_vector.get(5);
    }

    public void setClientIpIsSet(boolean value) {
        this.__isset_bit_vector.set(5, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof StatsEvent)) {
            return equals((StatsEvent) that);
        }
        return false;
    }

    public boolean equals(StatsEvent that) {
        if (that == null) {
            return false;
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.chid != that.chid) {
                return false;
            }
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.type != that.type) {
                return false;
            }
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.value != that.value) {
                return false;
            }
        }
        boolean this_present_connpt = isSetConnpt();
        boolean that_present_connpt = that.isSetConnpt();
        if (this_present_connpt || that_present_connpt) {
            if (!this_present_connpt || !that_present_connpt) {
                return false;
            }
            if (!this.connpt.equals(that.connpt)) {
                return false;
            }
        }
        boolean this_present_host = isSetHost();
        boolean that_present_host = that.isSetHost();
        if (this_present_host || that_present_host) {
            if (!this_present_host || !that_present_host) {
                return false;
            }
            if (!this.host.equals(that.host)) {
                return false;
            }
        }
        boolean this_present_subvalue = isSetSubvalue();
        boolean that_present_subvalue = that.isSetSubvalue();
        if (this_present_subvalue || that_present_subvalue) {
            if (!this_present_subvalue || !that_present_subvalue) {
                return false;
            }
            if (this.subvalue != that.subvalue) {
                return false;
            }
        }
        boolean this_present_annotation = isSetAnnotation();
        boolean that_present_annotation = that.isSetAnnotation();
        if (this_present_annotation || that_present_annotation) {
            if (!this_present_annotation || !that_present_annotation) {
                return false;
            }
            if (!this.annotation.equals(that.annotation)) {
                return false;
            }
        }
        boolean this_present_user = isSetUser();
        boolean that_present_user = that.isSetUser();
        if (this_present_user || that_present_user) {
            if (!this_present_user || !that_present_user) {
                return false;
            }
            if (!this.user.equals(that.user)) {
                return false;
            }
        }
        boolean this_present_time = isSetTime();
        boolean that_present_time = that.isSetTime();
        if (this_present_time || that_present_time) {
            if (!this_present_time || !that_present_time) {
                return false;
            }
            if (this.time != that.time) {
                return false;
            }
        }
        boolean this_present_clientIp = isSetClientIp();
        boolean that_present_clientIp = that.isSetClientIp();
        if (this_present_clientIp || that_present_clientIp) {
            if (!this_present_clientIp || !that_present_clientIp) {
                return false;
            }
            if (this.clientIp != that.clientIp) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(StatsEvent other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        StatsEvent typedOther = other;
        int lastComparison = Boolean.valueOf(isSetChid()).compareTo(Boolean.valueOf(typedOther.isSetChid()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetChid()) {
            lastComparison = TBaseHelper.compareTo(this.chid, typedOther.chid);
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
        lastComparison = Boolean.valueOf(isSetValue()).compareTo(Boolean.valueOf(typedOther.isSetValue()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetValue()) {
            lastComparison = TBaseHelper.compareTo(this.value, typedOther.value);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetConnpt()).compareTo(Boolean.valueOf(typedOther.isSetConnpt()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetConnpt()) {
            lastComparison = TBaseHelper.compareTo(this.connpt, typedOther.connpt);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetHost()).compareTo(Boolean.valueOf(typedOther.isSetHost()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetHost()) {
            lastComparison = TBaseHelper.compareTo(this.host, typedOther.host);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetSubvalue()).compareTo(Boolean.valueOf(typedOther.isSetSubvalue()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSubvalue()) {
            lastComparison = TBaseHelper.compareTo(this.subvalue, typedOther.subvalue);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAnnotation()).compareTo(Boolean.valueOf(typedOther.isSetAnnotation()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAnnotation()) {
            lastComparison = TBaseHelper.compareTo(this.annotation, typedOther.annotation);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetUser()).compareTo(Boolean.valueOf(typedOther.isSetUser()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUser()) {
            lastComparison = TBaseHelper.compareTo(this.user, typedOther.user);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetTime()).compareTo(Boolean.valueOf(typedOther.isSetTime()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTime()) {
            lastComparison = TBaseHelper.compareTo(this.time, typedOther.time);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetClientIp()).compareTo(Boolean.valueOf(typedOther.isSetClientIp()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetClientIp()) {
            lastComparison = TBaseHelper.compareTo(this.clientIp, typedOther.clientIp);
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
                if (!isSetChid()) {
                    throw new TProtocolException("Required field 'chid' was not found in serialized data! Struct: " + toString());
                } else if (!isSetType()) {
                    throw new TProtocolException("Required field 'type' was not found in serialized data! Struct: " + toString());
                } else if (isSetValue()) {
                    validate();
                    return;
                } else {
                    throw new TProtocolException("Required field 'value' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 3) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.chid = iprot.readByte();
                    setChidIsSet(true);
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
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.value = iprot.readI32();
                    setValueIsSet(true);
                    break;
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.connpt = iprot.readString();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.host = iprot.readString();
                        break;
                    }
                case (short) 6:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.subvalue = iprot.readI32();
                    setSubvalueIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.annotation = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.user = iprot.readString();
                        break;
                    }
                case (short) 9:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.time = iprot.readI32();
                    setTimeIsSet(true);
                    break;
                case (short) 10:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.clientIp = iprot.readI32();
                    setClientIpIsSet(true);
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
        oprot.writeFieldBegin(CHID_FIELD_DESC);
        oprot.writeByte(this.chid);
        oprot.writeFieldEnd();
        oprot.writeFieldBegin(TYPE_FIELD_DESC);
        oprot.writeI32(this.type);
        oprot.writeFieldEnd();
        oprot.writeFieldBegin(VALUE_FIELD_DESC);
        oprot.writeI32(this.value);
        oprot.writeFieldEnd();
        if (this.connpt != null) {
            oprot.writeFieldBegin(CONNPT_FIELD_DESC);
            oprot.writeString(this.connpt);
            oprot.writeFieldEnd();
        }
        if (this.host != null && isSetHost()) {
            oprot.writeFieldBegin(HOST_FIELD_DESC);
            oprot.writeString(this.host);
            oprot.writeFieldEnd();
        }
        if (isSetSubvalue()) {
            oprot.writeFieldBegin(SUBVALUE_FIELD_DESC);
            oprot.writeI32(this.subvalue);
            oprot.writeFieldEnd();
        }
        if (this.annotation != null && isSetAnnotation()) {
            oprot.writeFieldBegin(ANNOTATION_FIELD_DESC);
            oprot.writeString(this.annotation);
            oprot.writeFieldEnd();
        }
        if (this.user != null && isSetUser()) {
            oprot.writeFieldBegin(USER_FIELD_DESC);
            oprot.writeString(this.user);
            oprot.writeFieldEnd();
        }
        if (isSetTime()) {
            oprot.writeFieldBegin(TIME_FIELD_DESC);
            oprot.writeI32(this.time);
            oprot.writeFieldEnd();
        }
        if (isSetClientIp()) {
            oprot.writeFieldBegin(CLIENT_IP_FIELD_DESC);
            oprot.writeI32(this.clientIp);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvent(");
        sb.append("chid:");
        sb.append(this.chid);
        if (!false) {
            sb.append(", ");
        }
        sb.append("type:");
        sb.append(this.type);
        if (!false) {
            sb.append(", ");
        }
        sb.append("value:");
        sb.append(this.value);
        if (!false) {
            sb.append(", ");
        }
        sb.append("connpt:");
        if (this.connpt == null) {
            sb.append("null");
        } else {
            sb.append(this.connpt);
        }
        boolean first = false;
        if (isSetHost()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("host:");
            if (this.host == null) {
                sb.append("null");
            } else {
                sb.append(this.host);
            }
            first = false;
        }
        if (isSetSubvalue()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("subvalue:");
            sb.append(this.subvalue);
            first = false;
        }
        if (isSetAnnotation()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("annotation:");
            if (this.annotation == null) {
                sb.append("null");
            } else {
                sb.append(this.annotation);
            }
            first = false;
        }
        if (isSetUser()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("user:");
            if (this.user == null) {
                sb.append("null");
            } else {
                sb.append(this.user);
            }
            first = false;
        }
        if (isSetTime()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("time:");
            sb.append(this.time);
            first = false;
        }
        if (isSetClientIp()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("clientIp:");
            sb.append(this.clientIp);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.connpt == null) {
            throw new TProtocolException("Required field 'connpt' was not present! Struct: " + toString());
        }
    }
}
