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

public class XmPushActionRegistrationResult implements Serializable, Cloneable, TBase<XmPushActionRegistrationResult, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 12);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField APP_VERSION_CODE_FIELD_DESC = new TField("", (byte) 8, (short) 18);
    private static final TField APP_VERSION_FIELD_DESC = new TField("", (byte) 11, (short) 15);
    private static final TField CLIENT_ID_FIELD_DESC = new TField("", (byte) 11, (short) 13);
    private static final TField COST_TIME_FIELD_DESC = new TField("", (byte) 10, (short) 14);
    private static final TField DEBUG_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField ERROR_CODE_FIELD_DESC = new TField("", (byte) 10, (short) 6);
    private static final TField HYBRID_PUSH_ENDPOINT_FIELD_DESC = new TField("", (byte) 11, (short) 17);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 10);
    private static final TField PUSH_SDK_VERSION_CODE_FIELD_DESC = new TField("", (byte) 8, (short) 16);
    private static final TField REASON_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField REGION_FIELD_DESC = new TField("", (byte) 11, (short) 19);
    private static final TField REGISTERED_AT_FIELD_DESC = new TField("", (byte) 10, (short) 11);
    private static final TField REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 8);
    private static final TField REG_SECRET_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionRegistrationResult");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private BitSet __isset_bit_vector = new BitSet(5);
    public String aliasName;
    public String appId;
    public String appVersion;
    public int appVersionCode;
    public String clientId;
    public long costTime;
    public String debug;
    public long errorCode;
    public String hybridPushEndpoint;
    public String id;
    public String packageName;
    public int pushSdkVersionCode;
    public String reason;
    public String regId;
    public String regSecret;
    public String region;
    public long registeredAt;
    public Target target;

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

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public long getErrorCode() {
        return this.errorCode;
    }

    public boolean isSetErrorCode() {
        return this.__isset_bit_vector.get(0);
    }

    public void setErrorCodeIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetReason() {
        return this.reason != null;
    }

    public boolean isSetRegId() {
        return this.regId != null;
    }

    public boolean isSetRegSecret() {
        return this.regSecret != null;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public boolean isSetRegisteredAt() {
        return this.__isset_bit_vector.get(1);
    }

    public void setRegisteredAtIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public boolean isSetClientId() {
        return this.clientId != null;
    }

    public boolean isSetCostTime() {
        return this.__isset_bit_vector.get(2);
    }

    public void setCostTimeIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public boolean isSetAppVersion() {
        return this.appVersion != null;
    }

    public boolean isSetPushSdkVersionCode() {
        return this.__isset_bit_vector.get(3);
    }

    public void setPushSdkVersionCodeIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
    }

    public boolean isSetHybridPushEndpoint() {
        return this.hybridPushEndpoint != null;
    }

    public boolean isSetAppVersionCode() {
        return this.__isset_bit_vector.get(4);
    }

    public void setAppVersionCodeIsSet(boolean value) {
        this.__isset_bit_vector.set(4, value);
    }

    public boolean isSetRegion() {
        return this.region != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionRegistrationResult)) {
            return equals((XmPushActionRegistrationResult) that);
        }
        return false;
    }

    public boolean equals(XmPushActionRegistrationResult that) {
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
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.errorCode != that.errorCode) {
                return false;
            }
        }
        boolean this_present_reason = isSetReason();
        boolean that_present_reason = that.isSetReason();
        if (this_present_reason || that_present_reason) {
            if (!this_present_reason || !that_present_reason) {
                return false;
            }
            if (!this.reason.equals(that.reason)) {
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
        boolean this_present_regSecret = isSetRegSecret();
        boolean that_present_regSecret = that.isSetRegSecret();
        if (this_present_regSecret || that_present_regSecret) {
            if (!this_present_regSecret || !that_present_regSecret) {
                return false;
            }
            if (!this.regSecret.equals(that.regSecret)) {
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
        boolean this_present_registeredAt = isSetRegisteredAt();
        boolean that_present_registeredAt = that.isSetRegisteredAt();
        if (this_present_registeredAt || that_present_registeredAt) {
            if (!this_present_registeredAt || !that_present_registeredAt) {
                return false;
            }
            if (this.registeredAt != that.registeredAt) {
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
        boolean this_present_clientId = isSetClientId();
        boolean that_present_clientId = that.isSetClientId();
        if (this_present_clientId || that_present_clientId) {
            if (!this_present_clientId || !that_present_clientId) {
                return false;
            }
            if (!this.clientId.equals(that.clientId)) {
                return false;
            }
        }
        boolean this_present_costTime = isSetCostTime();
        boolean that_present_costTime = that.isSetCostTime();
        if (this_present_costTime || that_present_costTime) {
            if (!this_present_costTime || !that_present_costTime) {
                return false;
            }
            if (this.costTime != that.costTime) {
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
        boolean this_present_pushSdkVersionCode = isSetPushSdkVersionCode();
        boolean that_present_pushSdkVersionCode = that.isSetPushSdkVersionCode();
        if (this_present_pushSdkVersionCode || that_present_pushSdkVersionCode) {
            if (!this_present_pushSdkVersionCode || !that_present_pushSdkVersionCode) {
                return false;
            }
            if (this.pushSdkVersionCode != that.pushSdkVersionCode) {
                return false;
            }
        }
        boolean this_present_hybridPushEndpoint = isSetHybridPushEndpoint();
        boolean that_present_hybridPushEndpoint = that.isSetHybridPushEndpoint();
        if (this_present_hybridPushEndpoint || that_present_hybridPushEndpoint) {
            if (!this_present_hybridPushEndpoint || !that_present_hybridPushEndpoint) {
                return false;
            }
            if (!this.hybridPushEndpoint.equals(that.hybridPushEndpoint)) {
                return false;
            }
        }
        boolean this_present_appVersionCode = isSetAppVersionCode();
        boolean that_present_appVersionCode = that.isSetAppVersionCode();
        if (this_present_appVersionCode || that_present_appVersionCode) {
            if (!this_present_appVersionCode || !that_present_appVersionCode) {
                return false;
            }
            if (this.appVersionCode != that.appVersionCode) {
                return false;
            }
        }
        boolean this_present_region = isSetRegion();
        boolean that_present_region = that.isSetRegion();
        if (this_present_region || that_present_region) {
            if (!this_present_region || !that_present_region) {
                return false;
            }
            if (!this.region.equals(that.region)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionRegistrationResult other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionRegistrationResult typedOther = other;
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
        lastComparison = Boolean.valueOf(isSetErrorCode()).compareTo(Boolean.valueOf(typedOther.isSetErrorCode()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetErrorCode()) {
            lastComparison = TBaseHelper.compareTo(this.errorCode, typedOther.errorCode);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetReason()).compareTo(Boolean.valueOf(typedOther.isSetReason()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetReason()) {
            lastComparison = TBaseHelper.compareTo(this.reason, typedOther.reason);
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
        lastComparison = Boolean.valueOf(isSetRegSecret()).compareTo(Boolean.valueOf(typedOther.isSetRegSecret()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetRegSecret()) {
            lastComparison = TBaseHelper.compareTo(this.regSecret, typedOther.regSecret);
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
        lastComparison = Boolean.valueOf(isSetRegisteredAt()).compareTo(Boolean.valueOf(typedOther.isSetRegisteredAt()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetRegisteredAt()) {
            lastComparison = TBaseHelper.compareTo(this.registeredAt, typedOther.registeredAt);
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
        lastComparison = Boolean.valueOf(isSetClientId()).compareTo(Boolean.valueOf(typedOther.isSetClientId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetClientId()) {
            lastComparison = TBaseHelper.compareTo(this.clientId, typedOther.clientId);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCostTime()).compareTo(Boolean.valueOf(typedOther.isSetCostTime()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCostTime()) {
            lastComparison = TBaseHelper.compareTo(this.costTime, typedOther.costTime);
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
        lastComparison = Boolean.valueOf(isSetPushSdkVersionCode()).compareTo(Boolean.valueOf(typedOther.isSetPushSdkVersionCode()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPushSdkVersionCode()) {
            lastComparison = TBaseHelper.compareTo(this.pushSdkVersionCode, typedOther.pushSdkVersionCode);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetHybridPushEndpoint()).compareTo(Boolean.valueOf(typedOther.isSetHybridPushEndpoint()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetHybridPushEndpoint()) {
            lastComparison = TBaseHelper.compareTo(this.hybridPushEndpoint, typedOther.hybridPushEndpoint);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetAppVersionCode()).compareTo(Boolean.valueOf(typedOther.isSetAppVersionCode()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAppVersionCode()) {
            lastComparison = TBaseHelper.compareTo(this.appVersionCode, typedOther.appVersionCode);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetRegion()).compareTo(Boolean.valueOf(typedOther.isSetRegion()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetRegion()) {
            lastComparison = TBaseHelper.compareTo(this.region, typedOther.region);
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
                if (isSetErrorCode()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
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
                case (short) 6:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.errorCode = iprot.readI64();
                    setErrorCodeIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.reason = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.regId = iprot.readString();
                        break;
                    }
                case (short) 9:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.regSecret = iprot.readString();
                        break;
                    }
                case (short) 10:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 11:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.registeredAt = iprot.readI64();
                    setRegisteredAtIsSet(true);
                    break;
                case (short) 12:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.aliasName = iprot.readString();
                        break;
                    }
                case (short) 13:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.clientId = iprot.readString();
                        break;
                    }
                case (short) 14:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.costTime = iprot.readI64();
                    setCostTimeIsSet(true);
                    break;
                case (short) 15:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.appVersion = iprot.readString();
                        break;
                    }
                case (short) 16:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.pushSdkVersionCode = iprot.readI32();
                    setPushSdkVersionCodeIsSet(true);
                    break;
                case (short) 17:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.hybridPushEndpoint = iprot.readString();
                        break;
                    }
                case (short) 18:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.appVersionCode = iprot.readI32();
                    setAppVersionCodeIsSet(true);
                    break;
                case (short) 19:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.region = iprot.readString();
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
        oprot.writeFieldBegin(ERROR_CODE_FIELD_DESC);
        oprot.writeI64(this.errorCode);
        oprot.writeFieldEnd();
        if (this.reason != null && isSetReason()) {
            oprot.writeFieldBegin(REASON_FIELD_DESC);
            oprot.writeString(this.reason);
            oprot.writeFieldEnd();
        }
        if (this.regId != null && isSetRegId()) {
            oprot.writeFieldBegin(REG_ID_FIELD_DESC);
            oprot.writeString(this.regId);
            oprot.writeFieldEnd();
        }
        if (this.regSecret != null && isSetRegSecret()) {
            oprot.writeFieldBegin(REG_SECRET_FIELD_DESC);
            oprot.writeString(this.regSecret);
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (isSetRegisteredAt()) {
            oprot.writeFieldBegin(REGISTERED_AT_FIELD_DESC);
            oprot.writeI64(this.registeredAt);
            oprot.writeFieldEnd();
        }
        if (this.aliasName != null && isSetAliasName()) {
            oprot.writeFieldBegin(ALIAS_NAME_FIELD_DESC);
            oprot.writeString(this.aliasName);
            oprot.writeFieldEnd();
        }
        if (this.clientId != null && isSetClientId()) {
            oprot.writeFieldBegin(CLIENT_ID_FIELD_DESC);
            oprot.writeString(this.clientId);
            oprot.writeFieldEnd();
        }
        if (isSetCostTime()) {
            oprot.writeFieldBegin(COST_TIME_FIELD_DESC);
            oprot.writeI64(this.costTime);
            oprot.writeFieldEnd();
        }
        if (this.appVersion != null && isSetAppVersion()) {
            oprot.writeFieldBegin(APP_VERSION_FIELD_DESC);
            oprot.writeString(this.appVersion);
            oprot.writeFieldEnd();
        }
        if (isSetPushSdkVersionCode()) {
            oprot.writeFieldBegin(PUSH_SDK_VERSION_CODE_FIELD_DESC);
            oprot.writeI32(this.pushSdkVersionCode);
            oprot.writeFieldEnd();
        }
        if (this.hybridPushEndpoint != null && isSetHybridPushEndpoint()) {
            oprot.writeFieldBegin(HYBRID_PUSH_ENDPOINT_FIELD_DESC);
            oprot.writeString(this.hybridPushEndpoint);
            oprot.writeFieldEnd();
        }
        if (isSetAppVersionCode()) {
            oprot.writeFieldBegin(APP_VERSION_CODE_FIELD_DESC);
            oprot.writeI32(this.appVersionCode);
            oprot.writeFieldEnd();
        }
        if (this.region != null && isSetRegion()) {
            oprot.writeFieldBegin(REGION_FIELD_DESC);
            oprot.writeString(this.region);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionRegistrationResult(");
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
        if (!false) {
            sb.append(", ");
        }
        sb.append("errorCode:");
        sb.append(this.errorCode);
        first = false;
        if (isSetReason()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("reason:");
            if (this.reason == null) {
                sb.append("null");
            } else {
                sb.append(this.reason);
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
        if (isSetRegSecret()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("regSecret:");
            if (this.regSecret == null) {
                sb.append("null");
            } else {
                sb.append(this.regSecret);
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
        if (isSetRegisteredAt()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("registeredAt:");
            sb.append(this.registeredAt);
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
        if (isSetClientId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("clientId:");
            if (this.clientId == null) {
                sb.append("null");
            } else {
                sb.append(this.clientId);
            }
            first = false;
        }
        if (isSetCostTime()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("costTime:");
            sb.append(this.costTime);
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
        if (isSetPushSdkVersionCode()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("pushSdkVersionCode:");
            sb.append(this.pushSdkVersionCode);
            first = false;
        }
        if (isSetHybridPushEndpoint()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("hybridPushEndpoint:");
            if (this.hybridPushEndpoint == null) {
                sb.append("null");
            } else {
                sb.append(this.hybridPushEndpoint);
            }
            first = false;
        }
        if (isSetAppVersionCode()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("appVersionCode:");
            sb.append(this.appVersionCode);
            first = false;
        }
        if (isSetRegion()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("region:");
            if (this.region == null) {
                sb.append("null");
            } else {
                sb.append(this.region);
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
