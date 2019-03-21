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

public class XmPushActionUnRegistration implements Serializable, Cloneable, TBase<XmPushActionUnRegistration, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 10);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField APP_VERSION_FIELD_DESC = new TField("", (byte) 11, (short) 6);
    private static final TField CREATED_TS_FIELD_DESC = new TField("", (byte) 10, (short) 12);
    private static final TField DEBUG_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField DEVICE_ID_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField NEED_ACK_FIELD_DESC = new TField("", (byte) 2, (short) 11);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionUnRegistration");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private static final TField TOKEN_FIELD_DESC = new TField("", (byte) 11, (short) 8);
    private BitSet __isset_bit_vector = new BitSet(2);
    public String aliasName;
    public String appId;
    public String appVersion;
    public long createdTs;
    public String debug;
    public String deviceId;
    public String id;
    public boolean needAck = true;
    public String packageName;
    public String regId;
    public Target target;
    public String token;

    public boolean isSetDebug() {
        return this.debug != null;
    }

    public boolean isSetTarget() {
        return this.target != null;
    }

    public XmPushActionUnRegistration setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public XmPushActionUnRegistration setAppId(String appId) {
        this.appId = appId;
        return this;
    }

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public XmPushActionUnRegistration setRegId(String regId) {
        this.regId = regId;
        return this;
    }

    public boolean isSetRegId() {
        return this.regId != null;
    }

    public boolean isSetAppVersion() {
        return this.appVersion != null;
    }

    public XmPushActionUnRegistration setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public XmPushActionUnRegistration setToken(String token) {
        this.token = token;
        return this;
    }

    public boolean isSetToken() {
        return this.token != null;
    }

    public boolean isSetDeviceId() {
        return this.deviceId != null;
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public boolean isSetNeedAck() {
        return this.__isset_bit_vector.get(0);
    }

    public void setNeedAckIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetCreatedTs() {
        return this.__isset_bit_vector.get(1);
    }

    public void setCreatedTsIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionUnRegistration)) {
            return equals((XmPushActionUnRegistration) that);
        }
        return false;
    }

    public boolean equals(XmPushActionUnRegistration that) {
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
        boolean this_present_appVersion = isSetAppVersion();
        boolean that_present_appVersion = that.isSetAppVersion();
        if (this_present_appVersion || that_present_appVersion) {
            if (!this_present_appVersion || !that_present_appVersion) {
                return false;
            }
            if (!this.appVersion.equals(that.appVersion)) {
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
        boolean this_present_token = isSetToken();
        boolean that_present_token = that.isSetToken();
        if (this_present_token || that_present_token) {
            if (!this_present_token || !that_present_token) {
                return false;
            }
            if (!this.token.equals(that.token)) {
                return false;
            }
        }
        boolean this_present_deviceId = isSetDeviceId();
        boolean that_present_deviceId = that.isSetDeviceId();
        if (this_present_deviceId || that_present_deviceId) {
            if (!this_present_deviceId || !that_present_deviceId) {
                return false;
            }
            if (!this.deviceId.equals(that.deviceId)) {
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
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionUnRegistration other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionUnRegistration typedOther = other;
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
        lastComparison = Boolean.valueOf(isSetAppVersion()).compareTo(Boolean.valueOf(typedOther.isSetAppVersion()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAppVersion()) {
            lastComparison = TBaseHelper.compareTo(this.appVersion, typedOther.appVersion);
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
        lastComparison = Boolean.valueOf(isSetToken()).compareTo(Boolean.valueOf(typedOther.isSetToken()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetToken()) {
            lastComparison = TBaseHelper.compareTo(this.token, typedOther.token);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetDeviceId()).compareTo(Boolean.valueOf(typedOther.isSetDeviceId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetDeviceId()) {
            lastComparison = TBaseHelper.compareTo(this.deviceId, typedOther.deviceId);
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
                        this.regId = iprot.readString();
                        break;
                    }
                case (short) 6:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.appVersion = iprot.readString();
                        break;
                    }
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.token = iprot.readString();
                        break;
                    }
                case (short) 9:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.deviceId = iprot.readString();
                        break;
                    }
                case (short) 10:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.aliasName = iprot.readString();
                        break;
                    }
                case (short) 11:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.needAck = iprot.readBool();
                    setNeedAckIsSet(true);
                    break;
                case (short) 12:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.createdTs = iprot.readI64();
                    setCreatedTsIsSet(true);
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
        if (this.appId != null) {
            oprot.writeFieldBegin(APP_ID_FIELD_DESC);
            oprot.writeString(this.appId);
            oprot.writeFieldEnd();
        }
        if (this.regId != null && isSetRegId()) {
            oprot.writeFieldBegin(REG_ID_FIELD_DESC);
            oprot.writeString(this.regId);
            oprot.writeFieldEnd();
        }
        if (this.appVersion != null && isSetAppVersion()) {
            oprot.writeFieldBegin(APP_VERSION_FIELD_DESC);
            oprot.writeString(this.appVersion);
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (this.token != null && isSetToken()) {
            oprot.writeFieldBegin(TOKEN_FIELD_DESC);
            oprot.writeString(this.token);
            oprot.writeFieldEnd();
        }
        if (this.deviceId != null && isSetDeviceId()) {
            oprot.writeFieldBegin(DEVICE_ID_FIELD_DESC);
            oprot.writeString(this.deviceId);
            oprot.writeFieldEnd();
        }
        if (this.aliasName != null && isSetAliasName()) {
            oprot.writeFieldBegin(ALIAS_NAME_FIELD_DESC);
            oprot.writeString(this.aliasName);
            oprot.writeFieldEnd();
        }
        if (isSetNeedAck()) {
            oprot.writeFieldBegin(NEED_ACK_FIELD_DESC);
            oprot.writeBool(this.needAck);
            oprot.writeFieldEnd();
        }
        if (isSetCreatedTs()) {
            oprot.writeFieldBegin(CREATED_TS_FIELD_DESC);
            oprot.writeI64(this.createdTs);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionUnRegistration(");
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
        if (isSetRegId()) {
            if (null == null) {
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
        if (isSetAppVersion()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("appVersion:");
            if (this.appVersion == null) {
                sb.append("null");
            } else {
                sb.append(this.appVersion);
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
        if (isSetToken()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("token:");
            if (this.token == null) {
                sb.append("null");
            } else {
                sb.append(this.token);
            }
            first = false;
        }
        if (isSetDeviceId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("deviceId:");
            if (this.deviceId == null) {
                sb.append("null");
            } else {
                sb.append(this.deviceId);
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
        if (isSetNeedAck()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("needAck:");
            sb.append(this.needAck);
            first = false;
        }
        if (isSetCreatedTs()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("createdTs:");
            sb.append(this.createdTs);
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
