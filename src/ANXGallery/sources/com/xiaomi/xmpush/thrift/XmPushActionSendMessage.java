package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
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

public class XmPushActionSendMessage implements Serializable, Cloneable, TBase<XmPushActionSendMessage, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField CATEGORY_FIELD_DESC = new TField("", (byte) 11, (short) 11);
    private static final TField DEBUG_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField MESSAGE_FIELD_DESC = new TField("", (byte) 12, (short) 8);
    private static final TField NEED_ACK_FIELD_DESC = new TField("", (byte) 2, (short) 9);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TField PARAMS_FIELD_DESC = new TField("", (byte) 13, (short) 10);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionSendMessage");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private static final TField TOPIC_FIELD_DESC = new TField("", (byte) 11, (short) 6);
    private static final TField USER_ACCOUNT_FIELD_DESC = new TField("", (byte) 11, (short) 12);
    private BitSet __isset_bit_vector = new BitSet(1);
    public String aliasName;
    public String appId;
    public String category;
    public String debug;
    public String id;
    public PushMessage message;
    public boolean needAck = true;
    public String packageName;
    public Map<String, String> params;
    public Target target;
    public String topic;
    public String userAccount;

    public boolean isSetDebug() {
        return this.debug != null;
    }

    public boolean isSetTarget() {
        return this.target != null;
    }

    public String getId() {
        return this.id;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public String getAppId() {
        return this.appId;
    }

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public String getTopic() {
        return this.topic;
    }

    public boolean isSetTopic() {
        return this.topic != null;
    }

    public String getAliasName() {
        return this.aliasName;
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public PushMessage getMessage() {
        return this.message;
    }

    public boolean isSetMessage() {
        return this.message != null;
    }

    public boolean isSetNeedAck() {
        return this.__isset_bit_vector.get(0);
    }

    public void setNeedAckIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetParams() {
        return this.params != null;
    }

    public String getCategory() {
        return this.category;
    }

    public boolean isSetCategory() {
        return this.category != null;
    }

    public String getUserAccount() {
        return this.userAccount;
    }

    public boolean isSetUserAccount() {
        return this.userAccount != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionSendMessage)) {
            return equals((XmPushActionSendMessage) that);
        }
        return false;
    }

    public boolean equals(XmPushActionSendMessage that) {
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
        boolean this_present_topic = isSetTopic();
        boolean that_present_topic = that.isSetTopic();
        if (this_present_topic || that_present_topic) {
            if (!this_present_topic || !that_present_topic) {
                return false;
            }
            if (!this.topic.equals(that.topic)) {
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
        boolean this_present_message = isSetMessage();
        boolean that_present_message = that.isSetMessage();
        if (this_present_message || that_present_message) {
            if (!this_present_message || !that_present_message) {
                return false;
            }
            if (!this.message.equals(that.message)) {
                return false;
            }
        }
        boolean this_present_needAck = isSetNeedAck();
        boolean that_present_needAck = that.isSetNeedAck();
        if (this_present_needAck || that_present_needAck) {
            if (!this_present_needAck || !that_present_needAck) {
                return false;
            }
            if (this.needAck != that.needAck) {
                return false;
            }
        }
        boolean this_present_params = isSetParams();
        boolean that_present_params = that.isSetParams();
        if (this_present_params || that_present_params) {
            if (!this_present_params || !that_present_params) {
                return false;
            }
            if (!this.params.equals(that.params)) {
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
        boolean this_present_userAccount = isSetUserAccount();
        boolean that_present_userAccount = that.isSetUserAccount();
        if (this_present_userAccount || that_present_userAccount) {
            if (!this_present_userAccount || !that_present_userAccount) {
                return false;
            }
            if (!this.userAccount.equals(that.userAccount)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionSendMessage other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionSendMessage typedOther = other;
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
        lastComparison = Boolean.valueOf(isSetTopic()).compareTo(Boolean.valueOf(typedOther.isSetTopic()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTopic()) {
            lastComparison = TBaseHelper.compareTo(this.topic, typedOther.topic);
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
        lastComparison = Boolean.valueOf(isSetMessage()).compareTo(Boolean.valueOf(typedOther.isSetMessage()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetMessage()) {
            lastComparison = TBaseHelper.compareTo(this.message, typedOther.message);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetNeedAck()).compareTo(Boolean.valueOf(typedOther.isSetNeedAck()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetNeedAck()) {
            lastComparison = TBaseHelper.compareTo(this.needAck, typedOther.needAck);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetParams()).compareTo(Boolean.valueOf(typedOther.isSetParams()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetParams()) {
            lastComparison = TBaseHelper.compareTo(this.params, typedOther.params);
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
        lastComparison = Boolean.valueOf(isSetUserAccount()).compareTo(Boolean.valueOf(typedOther.isSetUserAccount()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUserAccount()) {
            lastComparison = TBaseHelper.compareTo(this.userAccount, typedOther.userAccount);
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
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 6:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.topic = iprot.readString();
                        break;
                    }
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.aliasName = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.message = new PushMessage();
                    this.message.read(iprot);
                    break;
                case (short) 9:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.needAck = iprot.readBool();
                    setNeedAckIsSet(true);
                    break;
                case (short) 10:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map44 = iprot.readMapBegin();
                    this.params = new HashMap(_map44.size * 2);
                    for (int _i45 = 0; _i45 < _map44.size; _i45++) {
                        this.params.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
                    break;
                case (short) 11:
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
                        this.userAccount = iprot.readString();
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
        if (this.appId != null) {
            oprot.writeFieldBegin(APP_ID_FIELD_DESC);
            oprot.writeString(this.appId);
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (this.topic != null && isSetTopic()) {
            oprot.writeFieldBegin(TOPIC_FIELD_DESC);
            oprot.writeString(this.topic);
            oprot.writeFieldEnd();
        }
        if (this.aliasName != null && isSetAliasName()) {
            oprot.writeFieldBegin(ALIAS_NAME_FIELD_DESC);
            oprot.writeString(this.aliasName);
            oprot.writeFieldEnd();
        }
        if (this.message != null && isSetMessage()) {
            oprot.writeFieldBegin(MESSAGE_FIELD_DESC);
            this.message.write(oprot);
            oprot.writeFieldEnd();
        }
        if (isSetNeedAck()) {
            oprot.writeFieldBegin(NEED_ACK_FIELD_DESC);
            oprot.writeBool(this.needAck);
            oprot.writeFieldEnd();
        }
        if (this.params != null && isSetParams()) {
            oprot.writeFieldBegin(PARAMS_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.params.size()));
            for (Entry<String, String> _iter48 : this.params.entrySet()) {
                oprot.writeString((String) _iter48.getKey());
                oprot.writeString((String) _iter48.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        if (this.category != null && isSetCategory()) {
            oprot.writeFieldBegin(CATEGORY_FIELD_DESC);
            oprot.writeString(this.category);
            oprot.writeFieldEnd();
        }
        if (this.userAccount != null && isSetUserAccount()) {
            oprot.writeFieldBegin(USER_ACCOUNT_FIELD_DESC);
            oprot.writeString(this.userAccount);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionSendMessage(");
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
        if (!false) {
            sb.append(", ");
        }
        sb.append("appId:");
        if (this.appId == null) {
            sb.append("null");
        } else {
            sb.append(this.appId);
        }
        first = false;
        if (isSetPackageName()) {
            if (null == null) {
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
        if (isSetTopic()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("topic:");
            if (this.topic == null) {
                sb.append("null");
            } else {
                sb.append(this.topic);
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
        if (isSetMessage()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("message:");
            if (this.message == null) {
                sb.append("null");
            } else {
                sb.append(this.message);
            }
            first = false;
        }
        if (isSetNeedAck()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("needAck:");
            sb.append(this.needAck);
            first = false;
        }
        if (isSetParams()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("params:");
            if (this.params == null) {
                sb.append("null");
            } else {
                sb.append(this.params);
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
        if (isSetUserAccount()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("userAccount:");
            if (this.userAccount == null) {
                sb.append("null");
            } else {
                sb.append(this.userAccount);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.id == null) {
            throw new TProtocolException("Required field 'id' was not present! Struct: " + toString());
        } else if (this.appId == null) {
            throw new TProtocolException("Required field 'appId' was not present! Struct: " + toString());
        }
    }
}
