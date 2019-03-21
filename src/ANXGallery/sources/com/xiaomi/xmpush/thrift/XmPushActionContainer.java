package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class XmPushActionContainer implements Serializable, Cloneable, TBase<XmPushActionContainer, Object> {
    private static final TField ACTION_FIELD_DESC = new TField("", (byte) 8, (short) 1);
    private static final TField APPID_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TField ENCRYPT_ACTION_FIELD_DESC = new TField("", (byte) 2, (short) 2);
    private static final TField IS_REQUEST_FIELD_DESC = new TField("", (byte) 2, (short) 3);
    private static final TField META_INFO_FIELD_DESC = new TField("", (byte) 12, (short) 8);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 6);
    private static final TField PUSH_ACTION_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionContainer");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 7);
    private BitSet __isset_bit_vector = new BitSet(2);
    public ActionType action;
    public String appid;
    public boolean encryptAction = true;
    public boolean isRequest = true;
    public PushMetaInfo metaInfo;
    public String packageName;
    public ByteBuffer pushAction;
    public Target target;

    public ActionType getAction() {
        return this.action;
    }

    public XmPushActionContainer setAction(ActionType action) {
        this.action = action;
        return this;
    }

    public boolean isSetAction() {
        return this.action != null;
    }

    public boolean isEncryptAction() {
        return this.encryptAction;
    }

    public XmPushActionContainer setEncryptAction(boolean encryptAction) {
        this.encryptAction = encryptAction;
        setEncryptActionIsSet(true);
        return this;
    }

    public boolean isSetEncryptAction() {
        return this.__isset_bit_vector.get(0);
    }

    public void setEncryptActionIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public XmPushActionContainer setIsRequest(boolean isRequest) {
        this.isRequest = isRequest;
        setIsRequestIsSet(true);
        return this;
    }

    public boolean isSetIsRequest() {
        return this.__isset_bit_vector.get(1);
    }

    public void setIsRequestIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public byte[] getPushAction() {
        setPushAction(TBaseHelper.rightSize(this.pushAction));
        return this.pushAction.array();
    }

    public XmPushActionContainer setPushAction(ByteBuffer pushAction) {
        this.pushAction = pushAction;
        return this;
    }

    public boolean isSetPushAction() {
        return this.pushAction != null;
    }

    public String getAppid() {
        return this.appid;
    }

    public XmPushActionContainer setAppid(String appid) {
        this.appid = appid;
        return this;
    }

    public boolean isSetAppid() {
        return this.appid != null;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public XmPushActionContainer setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public XmPushActionContainer setTarget(Target target) {
        this.target = target;
        return this;
    }

    public boolean isSetTarget() {
        return this.target != null;
    }

    public PushMetaInfo getMetaInfo() {
        return this.metaInfo;
    }

    public XmPushActionContainer setMetaInfo(PushMetaInfo metaInfo) {
        this.metaInfo = metaInfo;
        return this;
    }

    public boolean isSetMetaInfo() {
        return this.metaInfo != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionContainer)) {
            return equals((XmPushActionContainer) that);
        }
        return false;
    }

    public boolean equals(XmPushActionContainer that) {
        if (that == null) {
            return false;
        }
        boolean this_present_action = isSetAction();
        boolean that_present_action = that.isSetAction();
        if (this_present_action || that_present_action) {
            if (!this_present_action || !that_present_action) {
                return false;
            }
            if (!this.action.equals(that.action)) {
                return false;
            }
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.encryptAction != that.encryptAction) {
                return false;
            }
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.isRequest != that.isRequest) {
                return false;
            }
        }
        boolean this_present_pushAction = isSetPushAction();
        boolean that_present_pushAction = that.isSetPushAction();
        if (this_present_pushAction || that_present_pushAction) {
            if (!this_present_pushAction || !that_present_pushAction) {
                return false;
            }
            if (!this.pushAction.equals(that.pushAction)) {
                return false;
            }
        }
        boolean this_present_appid = isSetAppid();
        boolean that_present_appid = that.isSetAppid();
        if (this_present_appid || that_present_appid) {
            if (!this_present_appid || !that_present_appid) {
                return false;
            }
            if (!this.appid.equals(that.appid)) {
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
        boolean this_present_metaInfo = isSetMetaInfo();
        boolean that_present_metaInfo = that.isSetMetaInfo();
        if (this_present_metaInfo || that_present_metaInfo) {
            if (!this_present_metaInfo || !that_present_metaInfo) {
                return false;
            }
            if (!this.metaInfo.equals(that.metaInfo)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionContainer other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionContainer typedOther = other;
        int lastComparison = Boolean.valueOf(isSetAction()).compareTo(Boolean.valueOf(typedOther.isSetAction()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAction()) {
            lastComparison = TBaseHelper.compareTo(this.action, typedOther.action);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetEncryptAction()).compareTo(Boolean.valueOf(typedOther.isSetEncryptAction()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetEncryptAction()) {
            lastComparison = TBaseHelper.compareTo(this.encryptAction, typedOther.encryptAction);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetIsRequest()).compareTo(Boolean.valueOf(typedOther.isSetIsRequest()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetIsRequest()) {
            lastComparison = TBaseHelper.compareTo(this.isRequest, typedOther.isRequest);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetPushAction()).compareTo(Boolean.valueOf(typedOther.isSetPushAction()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPushAction()) {
            lastComparison = TBaseHelper.compareTo(this.pushAction, typedOther.pushAction);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAppid()).compareTo(Boolean.valueOf(typedOther.isSetAppid()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAppid()) {
            lastComparison = TBaseHelper.compareTo(this.appid, typedOther.appid);
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
        lastComparison = Boolean.valueOf(isSetMetaInfo()).compareTo(Boolean.valueOf(typedOther.isSetMetaInfo()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetMetaInfo()) {
            lastComparison = TBaseHelper.compareTo(this.metaInfo, typedOther.metaInfo);
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
                if (!isSetEncryptAction()) {
                    throw new TProtocolException("Required field 'encryptAction' was not found in serialized data! Struct: " + toString());
                } else if (isSetIsRequest()) {
                    validate();
                    return;
                } else {
                    throw new TProtocolException("Required field 'isRequest' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.action = ActionType.findByValue(iprot.readI32());
                        break;
                    }
                case (short) 2:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.encryptAction = iprot.readBool();
                    setEncryptActionIsSet(true);
                    break;
                case (short) 3:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.isRequest = iprot.readBool();
                    setIsRequestIsSet(true);
                    break;
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.pushAction = iprot.readBinary();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.appid = iprot.readString();
                        break;
                    }
                case (short) 6:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 7:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.target = new Target();
                    this.target.read(iprot);
                    break;
                case (short) 8:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.metaInfo = new PushMetaInfo();
                    this.metaInfo.read(iprot);
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
        if (this.action != null) {
            oprot.writeFieldBegin(ACTION_FIELD_DESC);
            oprot.writeI32(this.action.getValue());
            oprot.writeFieldEnd();
        }
        oprot.writeFieldBegin(ENCRYPT_ACTION_FIELD_DESC);
        oprot.writeBool(this.encryptAction);
        oprot.writeFieldEnd();
        oprot.writeFieldBegin(IS_REQUEST_FIELD_DESC);
        oprot.writeBool(this.isRequest);
        oprot.writeFieldEnd();
        if (this.pushAction != null) {
            oprot.writeFieldBegin(PUSH_ACTION_FIELD_DESC);
            oprot.writeBinary(this.pushAction);
            oprot.writeFieldEnd();
        }
        if (this.appid != null && isSetAppid()) {
            oprot.writeFieldBegin(APPID_FIELD_DESC);
            oprot.writeString(this.appid);
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (this.target != null) {
            oprot.writeFieldBegin(TARGET_FIELD_DESC);
            this.target.write(oprot);
            oprot.writeFieldEnd();
        }
        if (this.metaInfo != null && isSetMetaInfo()) {
            oprot.writeFieldBegin(META_INFO_FIELD_DESC);
            this.metaInfo.write(oprot);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionContainer(");
        sb.append("action:");
        if (this.action == null) {
            sb.append("null");
        } else {
            sb.append(this.action);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("encryptAction:");
        sb.append(this.encryptAction);
        if (!false) {
            sb.append(", ");
        }
        sb.append("isRequest:");
        sb.append(this.isRequest);
        if (!false) {
            sb.append(", ");
        }
        sb.append("pushAction:");
        if (this.pushAction == null) {
            sb.append("null");
        } else {
            TBaseHelper.toString(this.pushAction, sb);
        }
        boolean first = false;
        if (isSetAppid()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("appid:");
            if (this.appid == null) {
                sb.append("null");
            } else {
                sb.append(this.appid);
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
        if (!first) {
            sb.append(", ");
        }
        sb.append("target:");
        if (this.target == null) {
            sb.append("null");
        } else {
            sb.append(this.target);
        }
        if (isSetMetaInfo()) {
            if (!false) {
                sb.append(", ");
            }
            sb.append("metaInfo:");
            if (this.metaInfo == null) {
                sb.append("null");
            } else {
                sb.append(this.metaInfo);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.action == null) {
            throw new TProtocolException("Required field 'action' was not present! Struct: " + toString());
        } else if (this.pushAction == null) {
            throw new TProtocolException("Required field 'pushAction' was not present! Struct: " + toString());
        } else if (this.target == null) {
            throw new TProtocolException("Required field 'target' was not present! Struct: " + toString());
        }
    }
}
