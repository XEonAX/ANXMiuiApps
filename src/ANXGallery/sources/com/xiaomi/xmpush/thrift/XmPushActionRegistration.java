package com.xiaomi.xmpush.thrift;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
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

public class XmPushActionRegistration implements Serializable, Cloneable, TBase<XmPushActionRegistration, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TField ANDROID_ID_FIELD_DESC = new TField("", (byte) 11, (short) 15);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField APP_VERSION_CODE_FIELD_DESC = new TField("", (byte) 8, (short) 14);
    private static final TField APP_VERSION_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TField CLEAN_OLD_REG_INFO_FIELD_DESC = new TField("", (byte) 2, (short) 101);
    private static final TField CONNECTION_ATTRS_FIELD_DESC = new TField("", (byte) 13, (short) 100);
    private static final TField CREATED_TS_FIELD_DESC = new TField("", (byte) 10, (short) 23);
    private static final TField DEBUG_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField DEVICE_ID_FIELD_DESC = new TField("", (byte) 11, (short) 8);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField IMEI_FIELD_DESC = new TField("", (byte) 11, (short) 16);
    private static final TField IMEI_MD5_FIELD_DESC = new TField("", (byte) 11, (short) 18);
    private static final TField MIID_FIELD_DESC = new TField("", (byte) 10, (short) 22);
    private static final TField OLD_REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 102);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 6);
    private static final TField PUSH_SDK_VERSION_CODE_FIELD_DESC = new TField("", (byte) 8, (short) 13);
    private static final TField PUSH_SDK_VERSION_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 12);
    private static final TField REASON_FIELD_DESC = new TField("", (byte) 8, (short) 20);
    private static final TField REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 11);
    private static final TField SDK_VERSION_FIELD_DESC = new TField("", (byte) 11, (short) 10);
    private static final TField SERIAL_FIELD_DESC = new TField("", (byte) 11, (short) 17);
    private static final TField SPACE_ID_FIELD_DESC = new TField("", (byte) 8, (short) 19);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionRegistration");
    private static final TField SUB_IMEI_FIELD_DESC = new TField("", (byte) 11, (short) 24);
    private static final TField SUB_IMEI_MD5_FIELD_DESC = new TField("", (byte) 11, (short) 25);
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private static final TField TOKEN_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField VALIDATE_TOKEN_FIELD_DESC = new TField("", (byte) 2, (short) 21);
    private BitSet __isset_bit_vector = new BitSet(7);
    public String aliasName;
    public String androidId;
    public String appId;
    public String appVersion;
    public int appVersionCode;
    public boolean cleanOldRegInfo = false;
    public Map<String, String> connectionAttrs;
    public long createdTs;
    public String debug;
    public String deviceId;
    public String id;
    public String imei;
    public String imeiMd5;
    public long miid;
    public String oldRegId;
    public String packageName;
    public int pushSdkVersionCode;
    public String pushSdkVersionName;
    public RegistrationReason reason;
    public String regId;
    public String sdkVersion;
    public String serial;
    public int spaceId;
    public String subImei;
    public String subImeiMd5;
    public Target target;
    public String token;
    public boolean validateToken = true;

    public boolean isSetDebug() {
        return this.debug != null;
    }

    public boolean isSetTarget() {
        return this.target != null;
    }

    public String getId() {
        return this.id;
    }

    public XmPushActionRegistration setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public String getAppId() {
        return this.appId;
    }

    public XmPushActionRegistration setAppId(String appId) {
        this.appId = appId;
        return this;
    }

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public XmPushActionRegistration setAppVersion(String appVersion) {
        this.appVersion = appVersion;
        return this;
    }

    public boolean isSetAppVersion() {
        return this.appVersion != null;
    }

    public XmPushActionRegistration setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public String getToken() {
        return this.token;
    }

    public XmPushActionRegistration setToken(String token) {
        this.token = token;
        return this;
    }

    public boolean isSetToken() {
        return this.token != null;
    }

    public XmPushActionRegistration setDeviceId(String deviceId) {
        this.deviceId = deviceId;
        return this;
    }

    public boolean isSetDeviceId() {
        return this.deviceId != null;
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public boolean isSetSdkVersion() {
        return this.sdkVersion != null;
    }

    public boolean isSetRegId() {
        return this.regId != null;
    }

    public XmPushActionRegistration setPushSdkVersionName(String pushSdkVersionName) {
        this.pushSdkVersionName = pushSdkVersionName;
        return this;
    }

    public boolean isSetPushSdkVersionName() {
        return this.pushSdkVersionName != null;
    }

    public XmPushActionRegistration setPushSdkVersionCode(int pushSdkVersionCode) {
        this.pushSdkVersionCode = pushSdkVersionCode;
        setPushSdkVersionCodeIsSet(true);
        return this;
    }

    public boolean isSetPushSdkVersionCode() {
        return this.__isset_bit_vector.get(0);
    }

    public void setPushSdkVersionCodeIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public XmPushActionRegistration setAppVersionCode(int appVersionCode) {
        this.appVersionCode = appVersionCode;
        setAppVersionCodeIsSet(true);
        return this;
    }

    public boolean isSetAppVersionCode() {
        return this.__isset_bit_vector.get(1);
    }

    public void setAppVersionCodeIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public XmPushActionRegistration setAndroidId(String androidId) {
        this.androidId = androidId;
        return this;
    }

    public boolean isSetAndroidId() {
        return this.androidId != null;
    }

    public XmPushActionRegistration setImei(String imei) {
        this.imei = imei;
        return this;
    }

    public boolean isSetImei() {
        return this.imei != null;
    }

    public XmPushActionRegistration setSerial(String serial) {
        this.serial = serial;
        return this;
    }

    public boolean isSetSerial() {
        return this.serial != null;
    }

    public XmPushActionRegistration setImeiMd5(String imeiMd5) {
        this.imeiMd5 = imeiMd5;
        return this;
    }

    public boolean isSetImeiMd5() {
        return this.imeiMd5 != null;
    }

    public XmPushActionRegistration setSpaceId(int spaceId) {
        this.spaceId = spaceId;
        setSpaceIdIsSet(true);
        return this;
    }

    public boolean isSetSpaceId() {
        return this.__isset_bit_vector.get(2);
    }

    public void setSpaceIdIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public XmPushActionRegistration setReason(RegistrationReason reason) {
        this.reason = reason;
        return this;
    }

    public boolean isSetReason() {
        return this.reason != null;
    }

    public boolean isSetValidateToken() {
        return this.__isset_bit_vector.get(3);
    }

    public void setValidateTokenIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
    }

    public boolean isSetMiid() {
        return this.__isset_bit_vector.get(4);
    }

    public void setMiidIsSet(boolean value) {
        this.__isset_bit_vector.set(4, value);
    }

    public boolean isSetCreatedTs() {
        return this.__isset_bit_vector.get(5);
    }

    public void setCreatedTsIsSet(boolean value) {
        this.__isset_bit_vector.set(5, value);
    }

    public boolean isSetSubImei() {
        return this.subImei != null;
    }

    public boolean isSetSubImeiMd5() {
        return this.subImeiMd5 != null;
    }

    public boolean isSetConnectionAttrs() {
        return this.connectionAttrs != null;
    }

    public boolean isSetCleanOldRegInfo() {
        return this.__isset_bit_vector.get(6);
    }

    public void setCleanOldRegInfoIsSet(boolean value) {
        this.__isset_bit_vector.set(6, value);
    }

    public boolean isSetOldRegId() {
        return this.oldRegId != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionRegistration)) {
            return equals((XmPushActionRegistration) that);
        }
        return false;
    }

    public boolean equals(XmPushActionRegistration that) {
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
        boolean this_present_sdkVersion = isSetSdkVersion();
        boolean that_present_sdkVersion = that.isSetSdkVersion();
        if (this_present_sdkVersion || that_present_sdkVersion) {
            if (!this_present_sdkVersion || !that_present_sdkVersion) {
                return false;
            }
            if (!this.sdkVersion.equals(that.sdkVersion)) {
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
        boolean this_present_pushSdkVersionName = isSetPushSdkVersionName();
        boolean that_present_pushSdkVersionName = that.isSetPushSdkVersionName();
        if (this_present_pushSdkVersionName || that_present_pushSdkVersionName) {
            if (!this_present_pushSdkVersionName || !that_present_pushSdkVersionName) {
                return false;
            }
            if (!this.pushSdkVersionName.equals(that.pushSdkVersionName)) {
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
        boolean this_present_androidId = isSetAndroidId();
        boolean that_present_androidId = that.isSetAndroidId();
        if (this_present_androidId || that_present_androidId) {
            if (!this_present_androidId || !that_present_androidId) {
                return false;
            }
            if (!this.androidId.equals(that.androidId)) {
                return false;
            }
        }
        boolean this_present_imei = isSetImei();
        boolean that_present_imei = that.isSetImei();
        if (this_present_imei || that_present_imei) {
            if (!this_present_imei || !that_present_imei) {
                return false;
            }
            if (!this.imei.equals(that.imei)) {
                return false;
            }
        }
        boolean this_present_serial = isSetSerial();
        boolean that_present_serial = that.isSetSerial();
        if (this_present_serial || that_present_serial) {
            if (!this_present_serial || !that_present_serial) {
                return false;
            }
            if (!this.serial.equals(that.serial)) {
                return false;
            }
        }
        boolean this_present_imeiMd5 = isSetImeiMd5();
        boolean that_present_imeiMd5 = that.isSetImeiMd5();
        if (this_present_imeiMd5 || that_present_imeiMd5) {
            if (!this_present_imeiMd5 || !that_present_imeiMd5) {
                return false;
            }
            if (!this.imeiMd5.equals(that.imeiMd5)) {
                return false;
            }
        }
        boolean this_present_spaceId = isSetSpaceId();
        boolean that_present_spaceId = that.isSetSpaceId();
        if (this_present_spaceId || that_present_spaceId) {
            if (!this_present_spaceId || !that_present_spaceId) {
                return false;
            }
            if (this.spaceId != that.spaceId) {
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
        boolean this_present_validateToken = isSetValidateToken();
        boolean that_present_validateToken = that.isSetValidateToken();
        if (this_present_validateToken || that_present_validateToken) {
            if (!this_present_validateToken || !that_present_validateToken) {
                return false;
            }
            if (this.validateToken != that.validateToken) {
                return false;
            }
        }
        boolean this_present_miid = isSetMiid();
        boolean that_present_miid = that.isSetMiid();
        if (this_present_miid || that_present_miid) {
            if (!this_present_miid || !that_present_miid) {
                return false;
            }
            if (this.miid != that.miid) {
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
        boolean this_present_subImei = isSetSubImei();
        boolean that_present_subImei = that.isSetSubImei();
        if (this_present_subImei || that_present_subImei) {
            if (!this_present_subImei || !that_present_subImei) {
                return false;
            }
            if (!this.subImei.equals(that.subImei)) {
                return false;
            }
        }
        boolean this_present_subImeiMd5 = isSetSubImeiMd5();
        boolean that_present_subImeiMd5 = that.isSetSubImeiMd5();
        if (this_present_subImeiMd5 || that_present_subImeiMd5) {
            if (!this_present_subImeiMd5 || !that_present_subImeiMd5) {
                return false;
            }
            if (!this.subImeiMd5.equals(that.subImeiMd5)) {
                return false;
            }
        }
        boolean this_present_connectionAttrs = isSetConnectionAttrs();
        boolean that_present_connectionAttrs = that.isSetConnectionAttrs();
        if (this_present_connectionAttrs || that_present_connectionAttrs) {
            if (!this_present_connectionAttrs || !that_present_connectionAttrs) {
                return false;
            }
            if (!this.connectionAttrs.equals(that.connectionAttrs)) {
                return false;
            }
        }
        boolean this_present_cleanOldRegInfo = isSetCleanOldRegInfo();
        boolean that_present_cleanOldRegInfo = that.isSetCleanOldRegInfo();
        if (this_present_cleanOldRegInfo || that_present_cleanOldRegInfo) {
            if (!this_present_cleanOldRegInfo || !that_present_cleanOldRegInfo) {
                return false;
            }
            if (this.cleanOldRegInfo != that.cleanOldRegInfo) {
                return false;
            }
        }
        boolean this_present_oldRegId = isSetOldRegId();
        boolean that_present_oldRegId = that.isSetOldRegId();
        if (this_present_oldRegId || that_present_oldRegId) {
            if (!this_present_oldRegId || !that_present_oldRegId) {
                return false;
            }
            if (!this.oldRegId.equals(that.oldRegId)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionRegistration other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionRegistration typedOther = other;
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
        lastComparison = Boolean.valueOf(isSetSdkVersion()).compareTo(Boolean.valueOf(typedOther.isSetSdkVersion()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSdkVersion()) {
            lastComparison = TBaseHelper.compareTo(this.sdkVersion, typedOther.sdkVersion);
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
        lastComparison = Boolean.valueOf(isSetPushSdkVersionName()).compareTo(Boolean.valueOf(typedOther.isSetPushSdkVersionName()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPushSdkVersionName()) {
            lastComparison = TBaseHelper.compareTo(this.pushSdkVersionName, typedOther.pushSdkVersionName);
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
        lastComparison = Boolean.valueOf(isSetAndroidId()).compareTo(Boolean.valueOf(typedOther.isSetAndroidId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetAndroidId()) {
            lastComparison = TBaseHelper.compareTo(this.androidId, typedOther.androidId);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetImei()).compareTo(Boolean.valueOf(typedOther.isSetImei()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetImei()) {
            lastComparison = TBaseHelper.compareTo(this.imei, typedOther.imei);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetSerial()).compareTo(Boolean.valueOf(typedOther.isSetSerial()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSerial()) {
            lastComparison = TBaseHelper.compareTo(this.serial, typedOther.serial);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetImeiMd5()).compareTo(Boolean.valueOf(typedOther.isSetImeiMd5()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetImeiMd5()) {
            lastComparison = TBaseHelper.compareTo(this.imeiMd5, typedOther.imeiMd5);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetSpaceId()).compareTo(Boolean.valueOf(typedOther.isSetSpaceId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSpaceId()) {
            lastComparison = TBaseHelper.compareTo(this.spaceId, typedOther.spaceId);
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
        lastComparison = Boolean.valueOf(isSetValidateToken()).compareTo(Boolean.valueOf(typedOther.isSetValidateToken()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetValidateToken()) {
            lastComparison = TBaseHelper.compareTo(this.validateToken, typedOther.validateToken);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetMiid()).compareTo(Boolean.valueOf(typedOther.isSetMiid()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetMiid()) {
            lastComparison = TBaseHelper.compareTo(this.miid, typedOther.miid);
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
        lastComparison = Boolean.valueOf(isSetSubImei()).compareTo(Boolean.valueOf(typedOther.isSetSubImei()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSubImei()) {
            lastComparison = TBaseHelper.compareTo(this.subImei, typedOther.subImei);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetSubImeiMd5()).compareTo(Boolean.valueOf(typedOther.isSetSubImeiMd5()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSubImeiMd5()) {
            lastComparison = TBaseHelper.compareTo(this.subImeiMd5, typedOther.subImeiMd5);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetConnectionAttrs()).compareTo(Boolean.valueOf(typedOther.isSetConnectionAttrs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetConnectionAttrs()) {
            lastComparison = TBaseHelper.compareTo(this.connectionAttrs, typedOther.connectionAttrs);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCleanOldRegInfo()).compareTo(Boolean.valueOf(typedOther.isSetCleanOldRegInfo()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCleanOldRegInfo()) {
            lastComparison = TBaseHelper.compareTo(this.cleanOldRegInfo, typedOther.cleanOldRegInfo);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetOldRegId()).compareTo(Boolean.valueOf(typedOther.isSetOldRegId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetOldRegId()) {
            lastComparison = TBaseHelper.compareTo(this.oldRegId, typedOther.oldRegId);
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
                        this.appVersion = iprot.readString();
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
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.token = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.deviceId = iprot.readString();
                        break;
                    }
                case (short) 9:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.aliasName = iprot.readString();
                        break;
                    }
                case (short) 10:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.sdkVersion = iprot.readString();
                        break;
                    }
                case (short) 11:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.regId = iprot.readString();
                        break;
                    }
                case (short) 12:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.pushSdkVersionName = iprot.readString();
                        break;
                    }
                case (short) 13:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.pushSdkVersionCode = iprot.readI32();
                    setPushSdkVersionCodeIsSet(true);
                    break;
                case (short) 14:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.appVersionCode = iprot.readI32();
                    setAppVersionCodeIsSet(true);
                    break;
                case (short) 15:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.androidId = iprot.readString();
                        break;
                    }
                case (short) 16:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.imei = iprot.readString();
                        break;
                    }
                case (short) 17:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.serial = iprot.readString();
                        break;
                    }
                case (short) 18:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.imeiMd5 = iprot.readString();
                        break;
                    }
                case (short) 19:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.spaceId = iprot.readI32();
                    setSpaceIdIsSet(true);
                    break;
                case (short) 20:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.reason = RegistrationReason.findByValue(iprot.readI32());
                        break;
                    }
                case (short) 21:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.validateToken = iprot.readBool();
                    setValidateTokenIsSet(true);
                    break;
                case (short) 22:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.miid = iprot.readI64();
                    setMiidIsSet(true);
                    break;
                case (short) 23:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.createdTs = iprot.readI64();
                    setCreatedTsIsSet(true);
                    break;
                case (short) 24:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.subImei = iprot.readString();
                        break;
                    }
                case (short) 25:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.subImeiMd5 = iprot.readString();
                        break;
                    }
                case (short) 100:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map89 = iprot.readMapBegin();
                    this.connectionAttrs = new HashMap(_map89.size * 2);
                    for (int _i90 = 0; _i90 < _map89.size; _i90++) {
                        this.connectionAttrs.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
                    break;
                case BaiduSceneResult.SHOOTING /*101*/:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.cleanOldRegInfo = iprot.readBool();
                    setCleanOldRegInfoIsSet(true);
                    break;
                case BaiduSceneResult.TAEKWONDO /*102*/:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.oldRegId = iprot.readString();
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
        if (this.token != null) {
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
        if (this.sdkVersion != null && isSetSdkVersion()) {
            oprot.writeFieldBegin(SDK_VERSION_FIELD_DESC);
            oprot.writeString(this.sdkVersion);
            oprot.writeFieldEnd();
        }
        if (this.regId != null && isSetRegId()) {
            oprot.writeFieldBegin(REG_ID_FIELD_DESC);
            oprot.writeString(this.regId);
            oprot.writeFieldEnd();
        }
        if (this.pushSdkVersionName != null && isSetPushSdkVersionName()) {
            oprot.writeFieldBegin(PUSH_SDK_VERSION_NAME_FIELD_DESC);
            oprot.writeString(this.pushSdkVersionName);
            oprot.writeFieldEnd();
        }
        if (isSetPushSdkVersionCode()) {
            oprot.writeFieldBegin(PUSH_SDK_VERSION_CODE_FIELD_DESC);
            oprot.writeI32(this.pushSdkVersionCode);
            oprot.writeFieldEnd();
        }
        if (isSetAppVersionCode()) {
            oprot.writeFieldBegin(APP_VERSION_CODE_FIELD_DESC);
            oprot.writeI32(this.appVersionCode);
            oprot.writeFieldEnd();
        }
        if (this.androidId != null && isSetAndroidId()) {
            oprot.writeFieldBegin(ANDROID_ID_FIELD_DESC);
            oprot.writeString(this.androidId);
            oprot.writeFieldEnd();
        }
        if (this.imei != null && isSetImei()) {
            oprot.writeFieldBegin(IMEI_FIELD_DESC);
            oprot.writeString(this.imei);
            oprot.writeFieldEnd();
        }
        if (this.serial != null && isSetSerial()) {
            oprot.writeFieldBegin(SERIAL_FIELD_DESC);
            oprot.writeString(this.serial);
            oprot.writeFieldEnd();
        }
        if (this.imeiMd5 != null && isSetImeiMd5()) {
            oprot.writeFieldBegin(IMEI_MD5_FIELD_DESC);
            oprot.writeString(this.imeiMd5);
            oprot.writeFieldEnd();
        }
        if (isSetSpaceId()) {
            oprot.writeFieldBegin(SPACE_ID_FIELD_DESC);
            oprot.writeI32(this.spaceId);
            oprot.writeFieldEnd();
        }
        if (this.reason != null && isSetReason()) {
            oprot.writeFieldBegin(REASON_FIELD_DESC);
            oprot.writeI32(this.reason.getValue());
            oprot.writeFieldEnd();
        }
        if (isSetValidateToken()) {
            oprot.writeFieldBegin(VALIDATE_TOKEN_FIELD_DESC);
            oprot.writeBool(this.validateToken);
            oprot.writeFieldEnd();
        }
        if (isSetMiid()) {
            oprot.writeFieldBegin(MIID_FIELD_DESC);
            oprot.writeI64(this.miid);
            oprot.writeFieldEnd();
        }
        if (isSetCreatedTs()) {
            oprot.writeFieldBegin(CREATED_TS_FIELD_DESC);
            oprot.writeI64(this.createdTs);
            oprot.writeFieldEnd();
        }
        if (this.subImei != null && isSetSubImei()) {
            oprot.writeFieldBegin(SUB_IMEI_FIELD_DESC);
            oprot.writeString(this.subImei);
            oprot.writeFieldEnd();
        }
        if (this.subImeiMd5 != null && isSetSubImeiMd5()) {
            oprot.writeFieldBegin(SUB_IMEI_MD5_FIELD_DESC);
            oprot.writeString(this.subImeiMd5);
            oprot.writeFieldEnd();
        }
        if (this.connectionAttrs != null && isSetConnectionAttrs()) {
            oprot.writeFieldBegin(CONNECTION_ATTRS_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.connectionAttrs.size()));
            for (Entry<String, String> _iter93 : this.connectionAttrs.entrySet()) {
                oprot.writeString((String) _iter93.getKey());
                oprot.writeString((String) _iter93.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        if (isSetCleanOldRegInfo()) {
            oprot.writeFieldBegin(CLEAN_OLD_REG_INFO_FIELD_DESC);
            oprot.writeBool(this.cleanOldRegInfo);
            oprot.writeFieldEnd();
        }
        if (this.oldRegId != null && isSetOldRegId()) {
            oprot.writeFieldBegin(OLD_REG_ID_FIELD_DESC);
            oprot.writeString(this.oldRegId);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionRegistration(");
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
        if (isSetAppVersion()) {
            if (null == null) {
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
        if (isSetDeviceId()) {
            if (null == null) {
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
        if (isSetSdkVersion()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("sdkVersion:");
            if (this.sdkVersion == null) {
                sb.append("null");
            } else {
                sb.append(this.sdkVersion);
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
        if (isSetPushSdkVersionName()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("pushSdkVersionName:");
            if (this.pushSdkVersionName == null) {
                sb.append("null");
            } else {
                sb.append(this.pushSdkVersionName);
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
        if (isSetAppVersionCode()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("appVersionCode:");
            sb.append(this.appVersionCode);
            first = false;
        }
        if (isSetAndroidId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("androidId:");
            if (this.androidId == null) {
                sb.append("null");
            } else {
                sb.append(this.androidId);
            }
            first = false;
        }
        if (isSetImei()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("imei:");
            if (this.imei == null) {
                sb.append("null");
            } else {
                sb.append(this.imei);
            }
            first = false;
        }
        if (isSetSerial()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("serial:");
            if (this.serial == null) {
                sb.append("null");
            } else {
                sb.append(this.serial);
            }
            first = false;
        }
        if (isSetImeiMd5()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("imeiMd5:");
            if (this.imeiMd5 == null) {
                sb.append("null");
            } else {
                sb.append(this.imeiMd5);
            }
            first = false;
        }
        if (isSetSpaceId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("spaceId:");
            sb.append(this.spaceId);
            first = false;
        }
        if (isSetReason()) {
            if (!first) {
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
        if (isSetValidateToken()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("validateToken:");
            sb.append(this.validateToken);
            first = false;
        }
        if (isSetMiid()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("miid:");
            sb.append(this.miid);
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
        if (isSetSubImei()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("subImei:");
            if (this.subImei == null) {
                sb.append("null");
            } else {
                sb.append(this.subImei);
            }
            first = false;
        }
        if (isSetSubImeiMd5()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("subImeiMd5:");
            if (this.subImeiMd5 == null) {
                sb.append("null");
            } else {
                sb.append(this.subImeiMd5);
            }
            first = false;
        }
        if (isSetConnectionAttrs()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("connectionAttrs:");
            if (this.connectionAttrs == null) {
                sb.append("null");
            } else {
                sb.append(this.connectionAttrs);
            }
            first = false;
        }
        if (isSetCleanOldRegInfo()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("cleanOldRegInfo:");
            sb.append(this.cleanOldRegInfo);
            first = false;
        }
        if (isSetOldRegId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("oldRegId:");
            if (this.oldRegId == null) {
                sb.append("null");
            } else {
                sb.append(this.oldRegId);
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
        } else if (this.token == null) {
            throw new TProtocolException("Required field 'token' was not present! Struct: " + toString());
        }
    }
}
