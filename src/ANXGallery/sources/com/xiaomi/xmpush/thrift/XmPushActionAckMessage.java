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

public class XmPushActionAckMessage implements Serializable, Cloneable, TBase<XmPushActionAckMessage, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField CALLBACK_URL_FIELD_DESC = new TField("", (byte) 11, (short) 13);
    private static final TField CATEGORY_FIELD_DESC = new TField("", (byte) 11, (short) 10);
    private static final TField DEBUG_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField DEVICE_ID_FIELD_DESC = new TField("", (byte) 11, (short) 21);
    private static final TField DEVICE_STATUS_FIELD_DESC = new TField("", (byte) 6, (short) 15);
    private static final TField EXTRA_FIELD_DESC = new TField("", (byte) 13, (short) 23);
    private static final TField GEO_MSG_STATUS_FIELD_DESC = new TField("", (byte) 6, (short) 16);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField IMEI_MD5_FIELD_DESC = new TField("", (byte) 11, (short) 20);
    private static final TField IS_ONLINE_FIELD_DESC = new TField("", (byte) 2, (short) 11);
    private static final TField MESSAGE_TS_FIELD_DESC = new TField("", (byte) 10, (short) 5);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TField PASS_THROUGH_FIELD_DESC = new TField("", (byte) 8, (short) 22);
    private static final TField REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 12);
    private static final TField REQUEST_FIELD_DESC = new TField("", (byte) 12, (short) 8);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionAckMessage");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private static final TField TOPIC_FIELD_DESC = new TField("", (byte) 11, (short) 6);
    private static final TField USER_ACCOUNT_FIELD_DESC = new TField("", (byte) 11, (short) 14);
    private BitSet __isset_bit_vector = new BitSet(5);
    public String aliasName;
    public String appId;
    public String callbackUrl;
    public String category;
    public String debug;
    public String deviceId;
    public short deviceStatus;
    public Map<String, String> extra;
    public short geoMsgStatus;
    public String id;
    public String imeiMd5;
    public boolean isOnline = false;
    public long messageTs;
    public String packageName;
    public int passThrough;
    public String regId;
    public XmPushActionSendMessage request;
    public Target target;
    public String topic;
    public String userAccount;

    public boolean isSetDebug() {
        return this.debug != null;
    }

    public boolean isSetTarget() {
        return this.target != null;
    }

    public XmPushActionAckMessage setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public XmPushActionAckMessage setAppId(String appId) {
        this.appId = appId;
        return this;
    }

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public XmPushActionAckMessage setMessageTs(long messageTs) {
        this.messageTs = messageTs;
        setMessageTsIsSet(true);
        return this;
    }

    public boolean isSetMessageTs() {
        return this.__isset_bit_vector.get(0);
    }

    public void setMessageTsIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public XmPushActionAckMessage setTopic(String topic) {
        this.topic = topic;
        return this;
    }

    public boolean isSetTopic() {
        return this.topic != null;
    }

    public XmPushActionAckMessage setAliasName(String aliasName) {
        this.aliasName = aliasName;
        return this;
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public boolean isSetRequest() {
        return this.request != null;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public boolean isSetCategory() {
        return this.category != null;
    }

    public boolean isSetIsOnline() {
        return this.__isset_bit_vector.get(1);
    }

    public void setIsOnlineIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetRegId() {
        return this.regId != null;
    }

    public boolean isSetCallbackUrl() {
        return this.callbackUrl != null;
    }

    public boolean isSetUserAccount() {
        return this.userAccount != null;
    }

    public XmPushActionAckMessage setDeviceStatus(short deviceStatus) {
        this.deviceStatus = deviceStatus;
        setDeviceStatusIsSet(true);
        return this;
    }

    public boolean isSetDeviceStatus() {
        return this.__isset_bit_vector.get(2);
    }

    public void setDeviceStatusIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public XmPushActionAckMessage setGeoMsgStatus(short geoMsgStatus) {
        this.geoMsgStatus = geoMsgStatus;
        setGeoMsgStatusIsSet(true);
        return this;
    }

    public boolean isSetGeoMsgStatus() {
        return this.__isset_bit_vector.get(3);
    }

    public void setGeoMsgStatusIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
    }

    public boolean isSetImeiMd5() {
        return this.imeiMd5 != null;
    }

    public boolean isSetDeviceId() {
        return this.deviceId != null;
    }

    public boolean isSetPassThrough() {
        return this.__isset_bit_vector.get(4);
    }

    public void setPassThroughIsSet(boolean value) {
        this.__isset_bit_vector.set(4, value);
    }

    public boolean isSetExtra() {
        return this.extra != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionAckMessage)) {
            return equals((XmPushActionAckMessage) that);
        }
        return false;
    }

    public boolean equals(XmPushActionAckMessage that) {
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
            if (this.messageTs != that.messageTs) {
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
        boolean this_present_request = isSetRequest();
        boolean that_present_request = that.isSetRequest();
        if (this_present_request || that_present_request) {
            if (!this_present_request || !that_present_request) {
                return false;
            }
            if (!this.request.equals(that.request)) {
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
        boolean this_present_isOnline = isSetIsOnline();
        boolean that_present_isOnline = that.isSetIsOnline();
        if (this_present_isOnline || that_present_isOnline) {
            if (!this_present_isOnline || !that_present_isOnline) {
                return false;
            }
            if (this.isOnline != that.isOnline) {
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
        boolean this_present_callbackUrl = isSetCallbackUrl();
        boolean that_present_callbackUrl = that.isSetCallbackUrl();
        if (this_present_callbackUrl || that_present_callbackUrl) {
            if (!this_present_callbackUrl || !that_present_callbackUrl) {
                return false;
            }
            if (!this.callbackUrl.equals(that.callbackUrl)) {
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
        boolean this_present_deviceStatus = isSetDeviceStatus();
        boolean that_present_deviceStatus = that.isSetDeviceStatus();
        if (this_present_deviceStatus || that_present_deviceStatus) {
            if (!this_present_deviceStatus || !that_present_deviceStatus) {
                return false;
            }
            if (this.deviceStatus != that.deviceStatus) {
                return false;
            }
        }
        boolean this_present_geoMsgStatus = isSetGeoMsgStatus();
        boolean that_present_geoMsgStatus = that.isSetGeoMsgStatus();
        if (this_present_geoMsgStatus || that_present_geoMsgStatus) {
            if (!this_present_geoMsgStatus || !that_present_geoMsgStatus) {
                return false;
            }
            if (this.geoMsgStatus != that.geoMsgStatus) {
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
        boolean this_present_passThrough = isSetPassThrough();
        boolean that_present_passThrough = that.isSetPassThrough();
        if (this_present_passThrough || that_present_passThrough) {
            if (!this_present_passThrough || !that_present_passThrough) {
                return false;
            }
            if (this.passThrough != that.passThrough) {
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
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionAckMessage other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionAckMessage typedOther = other;
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
        lastComparison = Boolean.valueOf(isSetMessageTs()).compareTo(Boolean.valueOf(typedOther.isSetMessageTs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetMessageTs()) {
            lastComparison = TBaseHelper.compareTo(this.messageTs, typedOther.messageTs);
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
        lastComparison = Boolean.valueOf(isSetRequest()).compareTo(Boolean.valueOf(typedOther.isSetRequest()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetRequest()) {
            lastComparison = TBaseHelper.compareTo(this.request, typedOther.request);
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
        lastComparison = Boolean.valueOf(isSetIsOnline()).compareTo(Boolean.valueOf(typedOther.isSetIsOnline()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetIsOnline()) {
            lastComparison = TBaseHelper.compareTo(this.isOnline, typedOther.isOnline);
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
        lastComparison = Boolean.valueOf(isSetCallbackUrl()).compareTo(Boolean.valueOf(typedOther.isSetCallbackUrl()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCallbackUrl()) {
            lastComparison = TBaseHelper.compareTo(this.callbackUrl, typedOther.callbackUrl);
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
        lastComparison = Boolean.valueOf(isSetDeviceStatus()).compareTo(Boolean.valueOf(typedOther.isSetDeviceStatus()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetDeviceStatus()) {
            lastComparison = TBaseHelper.compareTo(this.deviceStatus, typedOther.deviceStatus);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetGeoMsgStatus()).compareTo(Boolean.valueOf(typedOther.isSetGeoMsgStatus()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetGeoMsgStatus()) {
            lastComparison = TBaseHelper.compareTo(this.geoMsgStatus, typedOther.geoMsgStatus);
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
        lastComparison = Boolean.valueOf(isSetPassThrough()).compareTo(Boolean.valueOf(typedOther.isSetPassThrough()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPassThrough()) {
            lastComparison = TBaseHelper.compareTo(this.passThrough, typedOther.passThrough);
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
        return 0;
    }

    public void read(TProtocol iprot) throws TException {
        iprot.readStructBegin();
        while (true) {
            TField field = iprot.readFieldBegin();
            if (field.type == (byte) 0) {
                iprot.readStructEnd();
                if (isSetMessageTs()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
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
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.messageTs = iprot.readI64();
                    setMessageTsIsSet(true);
                    break;
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
                    this.request = new XmPushActionSendMessage();
                    this.request.read(iprot);
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
                case (short) 11:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.isOnline = iprot.readBool();
                    setIsOnlineIsSet(true);
                    break;
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
                        this.callbackUrl = iprot.readString();
                        break;
                    }
                case (short) 14:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.userAccount = iprot.readString();
                        break;
                    }
                case (short) 15:
                    if (field.type != (byte) 6) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.deviceStatus = iprot.readI16();
                    setDeviceStatusIsSet(true);
                    break;
                case (short) 16:
                    if (field.type != (byte) 6) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.geoMsgStatus = iprot.readI16();
                    setGeoMsgStatusIsSet(true);
                    break;
                case (short) 20:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.imeiMd5 = iprot.readString();
                        break;
                    }
                case (short) 21:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.deviceId = iprot.readString();
                        break;
                    }
                case (short) 22:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.passThrough = iprot.readI32();
                    setPassThroughIsSet(true);
                    break;
                case (short) 23:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map49 = iprot.readMapBegin();
                    this.extra = new HashMap(_map49.size * 2);
                    for (int _i50 = 0; _i50 < _map49.size; _i50++) {
                        this.extra.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
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
        oprot.writeFieldBegin(MESSAGE_TS_FIELD_DESC);
        oprot.writeI64(this.messageTs);
        oprot.writeFieldEnd();
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
        if (this.request != null && isSetRequest()) {
            oprot.writeFieldBegin(REQUEST_FIELD_DESC);
            this.request.write(oprot);
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
        if (isSetIsOnline()) {
            oprot.writeFieldBegin(IS_ONLINE_FIELD_DESC);
            oprot.writeBool(this.isOnline);
            oprot.writeFieldEnd();
        }
        if (this.regId != null && isSetRegId()) {
            oprot.writeFieldBegin(REG_ID_FIELD_DESC);
            oprot.writeString(this.regId);
            oprot.writeFieldEnd();
        }
        if (this.callbackUrl != null && isSetCallbackUrl()) {
            oprot.writeFieldBegin(CALLBACK_URL_FIELD_DESC);
            oprot.writeString(this.callbackUrl);
            oprot.writeFieldEnd();
        }
        if (this.userAccount != null && isSetUserAccount()) {
            oprot.writeFieldBegin(USER_ACCOUNT_FIELD_DESC);
            oprot.writeString(this.userAccount);
            oprot.writeFieldEnd();
        }
        if (isSetDeviceStatus()) {
            oprot.writeFieldBegin(DEVICE_STATUS_FIELD_DESC);
            oprot.writeI16(this.deviceStatus);
            oprot.writeFieldEnd();
        }
        if (isSetGeoMsgStatus()) {
            oprot.writeFieldBegin(GEO_MSG_STATUS_FIELD_DESC);
            oprot.writeI16(this.geoMsgStatus);
            oprot.writeFieldEnd();
        }
        if (this.imeiMd5 != null && isSetImeiMd5()) {
            oprot.writeFieldBegin(IMEI_MD5_FIELD_DESC);
            oprot.writeString(this.imeiMd5);
            oprot.writeFieldEnd();
        }
        if (this.deviceId != null && isSetDeviceId()) {
            oprot.writeFieldBegin(DEVICE_ID_FIELD_DESC);
            oprot.writeString(this.deviceId);
            oprot.writeFieldEnd();
        }
        if (isSetPassThrough()) {
            oprot.writeFieldBegin(PASS_THROUGH_FIELD_DESC);
            oprot.writeI32(this.passThrough);
            oprot.writeFieldEnd();
        }
        if (this.extra != null && isSetExtra()) {
            oprot.writeFieldBegin(EXTRA_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.extra.size()));
            for (Entry<String, String> _iter53 : this.extra.entrySet()) {
                oprot.writeString((String) _iter53.getKey());
                oprot.writeString((String) _iter53.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionAckMessage(");
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
        sb.append("messageTs:");
        sb.append(this.messageTs);
        first = false;
        if (isSetTopic()) {
            if (null == null) {
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
        if (isSetRequest()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("request:");
            if (this.request == null) {
                sb.append("null");
            } else {
                sb.append(this.request);
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
        if (isSetIsOnline()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("isOnline:");
            sb.append(this.isOnline);
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
        if (isSetCallbackUrl()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("callbackUrl:");
            if (this.callbackUrl == null) {
                sb.append("null");
            } else {
                sb.append(this.callbackUrl);
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
            first = false;
        }
        if (isSetDeviceStatus()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("deviceStatus:");
            sb.append(this.deviceStatus);
            first = false;
        }
        if (isSetGeoMsgStatus()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("geoMsgStatus:");
            sb.append(this.geoMsgStatus);
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
        if (isSetPassThrough()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("passThrough:");
            sb.append(this.passThrough);
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
