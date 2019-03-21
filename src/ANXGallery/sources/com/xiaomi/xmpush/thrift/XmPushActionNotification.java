package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TMap;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class XmPushActionNotification implements Serializable, Cloneable, TBase<XmPushActionNotification, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 13);
    private static final TField ALREADY_LOG_CLICK_IN_XMQ_FIELD_DESC = new TField("", (byte) 2, (short) 20);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField BINARY_EXTRA_FIELD_DESC = new TField("", (byte) 11, (short) 14);
    private static final TField CATEGORY_FIELD_DESC = new TField("", (byte) 11, (short) 10);
    private static final TField CREATED_TS_FIELD_DESC = new TField("", (byte) 10, (short) 15);
    private static final TField DEBUG_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField EXTRA_FIELD_DESC = new TField("", (byte) 13, (short) 8);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TField PAYLOAD_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 12);
    private static final TField REQUIRE_ACK_FIELD_DESC = new TField("", (byte) 2, (short) 6);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionNotification");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private static final TField TYPE_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private BitSet __isset_bit_vector;
    public String aliasName;
    public boolean alreadyLogClickInXmq;
    public String appId;
    public ByteBuffer binaryExtra;
    public String category;
    public long createdTs;
    public String debug;
    public Map<String, String> extra;
    public String id;
    public String packageName;
    public String payload;
    public String regId;
    public boolean requireAck;
    public Target target;
    public String type;

    public XmPushActionNotification() {
        this.__isset_bit_vector = new BitSet(3);
        this.requireAck = true;
        this.alreadyLogClickInXmq = false;
    }

    public XmPushActionNotification(String id, boolean requireAck) {
        this();
        this.id = id;
        this.requireAck = requireAck;
        setRequireAckIsSet(true);
    }

    public boolean isSetDebug() {
        return this.debug != null;
    }

    public boolean isSetTarget() {
        return this.target != null;
    }

    public String getId() {
        return this.id;
    }

    public XmPushActionNotification setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public String getAppId() {
        return this.appId;
    }

    public XmPushActionNotification setAppId(String appId) {
        this.appId = appId;
        return this;
    }

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public XmPushActionNotification setType(String type) {
        this.type = type;
        return this;
    }

    public boolean isSetType() {
        return this.type != null;
    }

    public XmPushActionNotification setRequireAck(boolean requireAck) {
        this.requireAck = requireAck;
        setRequireAckIsSet(true);
        return this;
    }

    public boolean isSetRequireAck() {
        return this.__isset_bit_vector.get(0);
    }

    public void setRequireAckIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetPayload() {
        return this.payload != null;
    }

    public void putToExtra(String key, String val) {
        if (this.extra == null) {
            this.extra = new HashMap();
        }
        this.extra.put(key, val);
    }

    public Map<String, String> getExtra() {
        return this.extra;
    }

    public XmPushActionNotification setExtra(Map<String, String> extra) {
        this.extra = extra;
        return this;
    }

    public boolean isSetExtra() {
        return this.extra != null;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public XmPushActionNotification setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public boolean isSetCategory() {
        return this.category != null;
    }

    public boolean isSetRegId() {
        return this.regId != null;
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public byte[] getBinaryExtra() {
        setBinaryExtra(TBaseHelper.rightSize(this.binaryExtra));
        return this.binaryExtra.array();
    }

    public XmPushActionNotification setBinaryExtra(byte[] binaryExtra) {
        setBinaryExtra(ByteBuffer.wrap(binaryExtra));
        return this;
    }

    public XmPushActionNotification setBinaryExtra(ByteBuffer binaryExtra) {
        this.binaryExtra = binaryExtra;
        return this;
    }

    public boolean isSetBinaryExtra() {
        return this.binaryExtra != null;
    }

    public boolean isSetCreatedTs() {
        return this.__isset_bit_vector.get(1);
    }

    public void setCreatedTsIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetAlreadyLogClickInXmq() {
        return this.__isset_bit_vector.get(2);
    }

    public void setAlreadyLogClickInXmqIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionNotification)) {
            return equals((XmPushActionNotification) that);
        }
        return false;
    }

    public boolean equals(XmPushActionNotification that) {
        if (that == null) {
            return false;
        }
        boolean this_present_debug = isSetDebug();
        boolean that_present_debug = that.isSetDebug();
        if (this_present_debug || that_present_debug) {
            if (!this_present_debug || !that_present_debug) {
                return false;
            }
            if (!this.debug.equals(that.debug)) {
                return false;
            }
        }
        boolean this_present_target = isSetTarget();
        boolean that_present_target = that.isSetTarget();
        if (this_present_target || that_present_target) {
            if (!this_present_target || !that_present_target) {
                return false;
            }
            if (!this.target.equals(that.target)) {
                return false;
            }
        }
        boolean this_present_id = isSetId();
        boolean that_present_id = that.isSetId();
        if (this_present_id || that_present_id) {
            if (!this_present_id || !that_present_id) {
                return false;
            }
            if (!this.id.equals(that.id)) {
                return false;
            }
        }
        boolean this_present_appId = isSetAppId();
        boolean that_present_appId = that.isSetAppId();
        if (this_present_appId || that_present_appId) {
            if (!this_present_appId || !that_present_appId) {
                return false;
            }
            if (!this.appId.equals(that.appId)) {
                return false;
            }
        }
        boolean this_present_type = isSetType();
        boolean that_present_type = that.isSetType();
        if (this_present_type || that_present_type) {
            if (!this_present_type || !that_present_type) {
                return false;
            }
            if (!this.type.equals(that.type)) {
                return false;
            }
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.requireAck != that.requireAck) {
                return false;
            }
        }
        boolean this_present_payload = isSetPayload();
        boolean that_present_payload = that.isSetPayload();
        if (this_present_payload || that_present_payload) {
            if (!this_present_payload || !that_present_payload) {
                return false;
            }
            if (!this.payload.equals(that.payload)) {
                return false;
            }
        }
        boolean this_present_extra = isSetExtra();
        boolean that_present_extra = that.isSetExtra();
        if (this_present_extra || that_present_extra) {
            if (!this_present_extra || !that_present_extra) {
                return false;
            }
            if (!this.extra.equals(that.extra)) {
                return false;
            }
        }
        boolean this_present_packageName = isSetPackageName();
        boolean that_present_packageName = that.isSetPackageName();
        if (this_present_packageName || that_present_packageName) {
            if (!this_present_packageName || !that_present_packageName) {
                return false;
            }
            if (!this.packageName.equals(that.packageName)) {
                return false;
            }
        }
        boolean this_present_category = isSetCategory();
        boolean that_present_category = that.isSetCategory();
        if (this_present_category || that_present_category) {
            if (!this_present_category || !that_present_category) {
                return false;
            }
            if (!this.category.equals(that.category)) {
                return false;
            }
        }
        boolean this_present_regId = isSetRegId();
        boolean that_present_regId = that.isSetRegId();
        if (this_present_regId || that_present_regId) {
            if (!this_present_regId || !that_present_regId) {
                return false;
            }
            if (!this.regId.equals(that.regId)) {
                return false;
            }
        }
        boolean this_present_aliasName = isSetAliasName();
        boolean that_present_aliasName = that.isSetAliasName();
        if (this_present_aliasName || that_present_aliasName) {
            if (!this_present_aliasName || !that_present_aliasName) {
                return false;
            }
            if (!this.aliasName.equals(that.aliasName)) {
                return false;
            }
        }
        boolean this_present_binaryExtra = isSetBinaryExtra();
        boolean that_present_binaryExtra = that.isSetBinaryExtra();
        if (this_present_binaryExtra || that_present_binaryExtra) {
            if (!this_present_binaryExtra || !that_present_binaryExtra) {
                return false;
            }
            if (!this.binaryExtra.equals(that.binaryExtra)) {
                return false;
            }
        }
        boolean this_present_createdTs = isSetCreatedTs();
        boolean that_present_createdTs = that.isSetCreatedTs();
        if (this_present_createdTs || that_present_createdTs) {
            if (!this_present_createdTs || !that_present_createdTs) {
                return false;
            }
            if (this.createdTs != that.createdTs) {
                return false;
            }
        }
        boolean this_present_alreadyLogClickInXmq = isSetAlreadyLogClickInXmq();
        boolean that_present_alreadyLogClickInXmq = that.isSetAlreadyLogClickInXmq();
        if (this_present_alreadyLogClickInXmq || that_present_alreadyLogClickInXmq) {
            if (!this_present_alreadyLogClickInXmq || !that_present_alreadyLogClickInXmq) {
                return false;
            }
            if (this.alreadyLogClickInXmq != that.alreadyLogClickInXmq) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionNotification other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionNotification typedOther = other;
        int lastComparison = Boolean.valueOf(isSetDebug()).compareTo(Boolean.valueOf(typedOther.isSetDebug()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetDebug()) {
            lastComparison = TBaseHelper.compareTo(this.debug, typedOther.debug);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetTarget()).compareTo(Boolean.valueOf(typedOther.isSetTarget()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTarget()) {
            lastComparison = TBaseHelper.compareTo(this.target, typedOther.target);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetId()).compareTo(Boolean.valueOf(typedOther.isSetId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetId()) {
            lastComparison = TBaseHelper.compareTo(this.id, typedOther.id);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAppId()).compareTo(Boolean.valueOf(typedOther.isSetAppId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAppId()) {
            lastComparison = TBaseHelper.compareTo(this.appId, typedOther.appId);
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
        lastComparison = Boolean.valueOf(isSetRequireAck()).compareTo(Boolean.valueOf(typedOther.isSetRequireAck()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetRequireAck()) {
            lastComparison = TBaseHelper.compareTo(this.requireAck, typedOther.requireAck);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetPayload()).compareTo(Boolean.valueOf(typedOther.isSetPayload()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPayload()) {
            lastComparison = TBaseHelper.compareTo(this.payload, typedOther.payload);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetExtra()).compareTo(Boolean.valueOf(typedOther.isSetExtra()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetExtra()) {
            lastComparison = TBaseHelper.compareTo(this.extra, typedOther.extra);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetPackageName()).compareTo(Boolean.valueOf(typedOther.isSetPackageName()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPackageName()) {
            lastComparison = TBaseHelper.compareTo(this.packageName, typedOther.packageName);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCategory()).compareTo(Boolean.valueOf(typedOther.isSetCategory()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCategory()) {
            lastComparison = TBaseHelper.compareTo(this.category, typedOther.category);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetRegId()).compareTo(Boolean.valueOf(typedOther.isSetRegId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetRegId()) {
            lastComparison = TBaseHelper.compareTo(this.regId, typedOther.regId);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAliasName()).compareTo(Boolean.valueOf(typedOther.isSetAliasName()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAliasName()) {
            lastComparison = TBaseHelper.compareTo(this.aliasName, typedOther.aliasName);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetBinaryExtra()).compareTo(Boolean.valueOf(typedOther.isSetBinaryExtra()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetBinaryExtra()) {
            lastComparison = TBaseHelper.compareTo(this.binaryExtra, typedOther.binaryExtra);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCreatedTs()).compareTo(Boolean.valueOf(typedOther.isSetCreatedTs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCreatedTs()) {
            lastComparison = TBaseHelper.compareTo(this.createdTs, typedOther.createdTs);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAlreadyLogClickInXmq()).compareTo(Boolean.valueOf(typedOther.isSetAlreadyLogClickInXmq()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAlreadyLogClickInXmq()) {
            lastComparison = TBaseHelper.compareTo(this.alreadyLogClickInXmq, typedOther.alreadyLogClickInXmq);
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
                if (isSetRequireAck()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'requireAck' was not found in serialized data! Struct: " + toString());
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.debug = iprot.readString();
                        break;
                    }
                case (short) 2:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.target = new Target();
                    this.target.read(iprot);
                    break;
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.id = iprot.readString();
                        break;
                    }
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.appId = iprot.readString();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.type = iprot.readString();
                        break;
                    }
                case (short) 6:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.requireAck = iprot.readBool();
                    setRequireAckIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.payload = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map79 = iprot.readMapBegin();
                    this.extra = new HashMap(_map79.size * 2);
                    for (int _i80 = 0; _i80 < _map79.size; _i80++) {
                        this.extra.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
                    break;
                case (short) 9:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 10:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.category = iprot.readString();
                        break;
                    }
                case (short) 12:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.regId = iprot.readString();
                        break;
                    }
                case (short) 13:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.aliasName = iprot.readString();
                        break;
                    }
                case (short) 14:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.binaryExtra = iprot.readBinary();
                        break;
                    }
                case (short) 15:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.createdTs = iprot.readI64();
                    setCreatedTsIsSet(true);
                    break;
                case (short) 20:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.alreadyLogClickInXmq = iprot.readBool();
                    setAlreadyLogClickInXmqIsSet(true);
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
        if (this.debug != null && isSetDebug()) {
            oprot.writeFieldBegin(DEBUG_FIELD_DESC);
            oprot.writeString(this.debug);
            oprot.writeFieldEnd();
        }
        if (this.target != null && isSetTarget()) {
            oprot.writeFieldBegin(TARGET_FIELD_DESC);
            this.target.write(oprot);
            oprot.writeFieldEnd();
        }
        if (this.id != null) {
            oprot.writeFieldBegin(ID_FIELD_DESC);
            oprot.writeString(this.id);
            oprot.writeFieldEnd();
        }
        if (this.appId != null && isSetAppId()) {
            oprot.writeFieldBegin(APP_ID_FIELD_DESC);
            oprot.writeString(this.appId);
            oprot.writeFieldEnd();
        }
        if (this.type != null && isSetType()) {
            oprot.writeFieldBegin(TYPE_FIELD_DESC);
            oprot.writeString(this.type);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldBegin(REQUIRE_ACK_FIELD_DESC);
        oprot.writeBool(this.requireAck);
        oprot.writeFieldEnd();
        if (this.payload != null && isSetPayload()) {
            oprot.writeFieldBegin(PAYLOAD_FIELD_DESC);
            oprot.writeString(this.payload);
            oprot.writeFieldEnd();
        }
        if (this.extra != null && isSetExtra()) {
            oprot.writeFieldBegin(EXTRA_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.extra.size()));
            for (Entry<String, String> _iter83 : this.extra.entrySet()) {
                oprot.writeString((String) _iter83.getKey());
                oprot.writeString((String) _iter83.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (this.category != null && isSetCategory()) {
            oprot.writeFieldBegin(CATEGORY_FIELD_DESC);
            oprot.writeString(this.category);
            oprot.writeFieldEnd();
        }
        if (this.regId != null && isSetRegId()) {
            oprot.writeFieldBegin(REG_ID_FIELD_DESC);
            oprot.writeString(this.regId);
            oprot.writeFieldEnd();
        }
        if (this.aliasName != null && isSetAliasName()) {
            oprot.writeFieldBegin(ALIAS_NAME_FIELD_DESC);
            oprot.writeString(this.aliasName);
            oprot.writeFieldEnd();
        }
        if (this.binaryExtra != null && isSetBinaryExtra()) {
            oprot.writeFieldBegin(BINARY_EXTRA_FIELD_DESC);
            oprot.writeBinary(this.binaryExtra);
            oprot.writeFieldEnd();
        }
        if (isSetCreatedTs()) {
            oprot.writeFieldBegin(CREATED_TS_FIELD_DESC);
            oprot.writeI64(this.createdTs);
            oprot.writeFieldEnd();
        }
        if (isSetAlreadyLogClickInXmq()) {
            oprot.writeFieldBegin(ALREADY_LOG_CLICK_IN_XMQ_FIELD_DESC);
            oprot.writeBool(this.alreadyLogClickInXmq);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionNotification(");
        boolean first = true;
        if (isSetDebug()) {
            sb.append("debug:");
            if (this.debug == null) {
                sb.append("null");
            } else {
                sb.append(this.debug);
            }
            first = false;
        }
        if (isSetTarget()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("target:");
            if (this.target == null) {
                sb.append("null");
            } else {
                sb.append(this.target);
            }
            first = false;
        }
        if (!first) {
            sb.append(", ");
        }
        sb.append("id:");
        if (this.id == null) {
            sb.append("null");
        } else {
            sb.append(this.id);
        }
        first = false;
        if (isSetAppId()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("appId:");
            if (this.appId == null) {
                sb.append("null");
            } else {
                sb.append(this.appId);
            }
            first = false;
        }
        if (isSetType()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("type:");
            if (this.type == null) {
                sb.append("null");
            } else {
                sb.append(this.type);
            }
            first = false;
        }
        if (!first) {
            sb.append(", ");
        }
        sb.append("requireAck:");
        sb.append(this.requireAck);
        first = false;
        if (isSetPayload()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("payload:");
            if (this.payload == null) {
                sb.append("null");
            } else {
                sb.append(this.payload);
            }
            first = false;
        }
        if (isSetExtra()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("extra:");
            if (this.extra == null) {
                sb.append("null");
            } else {
                sb.append(this.extra);
            }
            first = false;
        }
        if (isSetPackageName()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("packageName:");
            if (this.packageName == null) {
                sb.append("null");
            } else {
                sb.append(this.packageName);
            }
            first = false;
        }
        if (isSetCategory()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("category:");
            if (this.category == null) {
                sb.append("null");
            } else {
                sb.append(this.category);
            }
            first = false;
        }
        if (isSetRegId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("regId:");
            if (this.regId == null) {
                sb.append("null");
            } else {
                sb.append(this.regId);
            }
            first = false;
        }
        if (isSetAliasName()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("aliasName:");
            if (this.aliasName == null) {
                sb.append("null");
            } else {
                sb.append(this.aliasName);
            }
            first = false;
        }
        if (isSetBinaryExtra()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("binaryExtra:");
            if (this.binaryExtra == null) {
                sb.append("null");
            } else {
                TBaseHelper.toString(this.binaryExtra, sb);
            }
            first = false;
        }
        if (isSetCreatedTs()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("createdTs:");
            sb.append(this.createdTs);
            first = false;
        }
        if (isSetAlreadyLogClickInXmq()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("alreadyLogClickInXmq:");
            sb.append(this.alreadyLogClickInXmq);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.id == null) {
            throw new TProtocolException("Required field 'id' was not present! Struct: " + toString());
        }
    }
}
