package com.xiaomi.push.thrift;

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

public class StatsEvents implements Serializable, Cloneable, TBase<StatsEvents, Object> {
    private static final TField EVENTS_FIELD_DESC = new TField("", (byte) 15, (short) 3);
    private static final TField OPERATOR_FIELD_DESC = new TField("", (byte) 11, (short) 2);
    private static final TStruct STRUCT_DESC = new TStruct("StatsEvents");
    private static final TField UUID_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    public List<StatsEvent> events;
    public String operator;
    public String uuid;

    public StatsEvents(String uuid, List<StatsEvent> events) {
        this();
        this.uuid = uuid;
        this.events = events;
    }

    public boolean isSetUuid() {
        return this.uuid != null;
    }

    public StatsEvents setOperator(String operator) {
        this.operator = operator;
        return this;
    }

    public boolean isSetOperator() {
        return this.operator != null;
    }

    public boolean isSetEvents() {
        return this.events != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof StatsEvents)) {
            return equals((StatsEvents) that);
        }
        return false;
    }

    public boolean equals(StatsEvents that) {
        if (that == null) {
            return false;
        }
        boolean this_present_uuid = isSetUuid();
        boolean that_present_uuid = that.isSetUuid();
        if ((this_present_uuid || that_present_uuid) && (!this_present_uuid || !that_present_uuid || !this.uuid.equals(that.uuid))) {
            return false;
        }
        boolean this_present_operator = isSetOperator();
        boolean that_present_operator = that.isSetOperator();
        if ((this_present_operator || that_present_operator) && (!this_present_operator || !that_present_operator || !this.operator.equals(that.operator))) {
            return false;
        }
        boolean this_present_events = isSetEvents();
        boolean that_present_events = that.isSetEvents();
        if ((this_present_events || that_present_events) && (!this_present_events || !that_present_events || !this.events.equals(that.events))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(StatsEvents other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        StatsEvents typedOther = other;
        int lastComparison = Boolean.valueOf(isSetUuid()).compareTo(Boolean.valueOf(typedOther.isSetUuid()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUuid()) {
            lastComparison = TBaseHelper.compareTo(this.uuid, typedOther.uuid);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetOperator()).compareTo(Boolean.valueOf(typedOther.isSetOperator()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetOperator()) {
            lastComparison = TBaseHelper.compareTo(this.operator, typedOther.operator);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetEvents()).compareTo(Boolean.valueOf(typedOther.isSetEvents()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetEvents()) {
            lastComparison = TBaseHelper.compareTo(this.events, typedOther.events);
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
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.uuid = iprot.readString();
                        break;
                    }
                case (short) 2:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.operator = iprot.readString();
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list0 = iprot.readListBegin();
                    this.events = new ArrayList(_list0.size);
                    for (int _i1 = 0; _i1 < _list0.size; _i1++) {
                        StatsEvent _elem2 = new StatsEvent();
                        _elem2.read(iprot);
                        this.events.add(_elem2);
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
        if (this.uuid != null) {
            oprot.writeFieldBegin(UUID_FIELD_DESC);
            oprot.writeString(this.uuid);
            oprot.writeFieldEnd();
        }
        if (this.operator != null && isSetOperator()) {
            oprot.writeFieldBegin(OPERATOR_FIELD_DESC);
            oprot.writeString(this.operator);
            oprot.writeFieldEnd();
        }
        if (this.events != null) {
            oprot.writeFieldBegin(EVENTS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.events.size()));
            for (StatsEvent _iter3 : this.events) {
                _iter3.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvents(");
        sb.append("uuid:");
        if (this.uuid == null) {
            sb.append("null");
        } else {
            sb.append(this.uuid);
        }
        boolean first = false;
        if (isSetOperator()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("operator:");
            if (this.operator == null) {
                sb.append("null");
            } else {
                sb.append(this.operator);
            }
            first = false;
        }
        if (!first) {
            sb.append(", ");
        }
        sb.append("events:");
        if (this.events == null) {
            sb.append("null");
        } else {
            sb.append(this.events);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.uuid == null) {
            throw new TProtocolException("Required field 'uuid' was not present! Struct: " + toString());
        } else if (this.events == null) {
            throw new TProtocolException("Required field 'events' was not present! Struct: " + toString());
        }
    }
}
