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

public class PushMessage implements Serializable, Cloneable, TBase<PushMessage, Object> {
    private static final TField ALIAS_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 13);
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField CATEGORY_FIELD_DESC = new TField("", (byte) 11, (short) 10);
    private static final TField COLLAPSE_KEY_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField CREATE_AT_FIELD_DESC = new TField("", (byte) 10, (short) 5);
    private static final TField DEVICE_ID_FIELD_DESC = new TField("", (byte) 11, (short) 21);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 2);
    private static final TField IMEI_MD5_FIELD_DESC = new TField("", (byte) 11, (short) 20);
    private static final TField IS_ONLINE_FIELD_DESC = new TField("", (byte) 2, (short) 14);
    private static final TField META_INFO_FIELD_DESC = new TField("", (byte) 12, (short) 12);
    private static final TField MIID_FIELD_DESC = new TField("", (byte) 10, (short) 16);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 8);
    private static final TField PAYLOAD_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField REG_ID_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TStruct STRUCT_DESC = new TStruct("PushMessage");
    private static final TField TOPIC_FIELD_DESC = new TField("", (byte) 11, (short) 11);
    private static final TField TO_FIELD_DESC = new TField("", (byte) 12, (short) 1);
    private static final TField TTL_FIELD_DESC = new TField("", (byte) 10, (short) 6);
    private static final TField USER_ACCOUNT_FIELD_DESC = new TField("", (byte) 11, (short) 15);
    private BitSet __isset_bit_vector = new BitSet(4);
    public String aliasName;
    public String appId;
    public String category;
    public String collapseKey;
    public long createAt;
    public String deviceId;
    public String id;
    public String imeiMd5;
    public boolean isOnline = false;
    public PushMetaInfo metaInfo;
    public long miid;
    public String packageName;
    public String payload;
    public String regId;
    public Target to;
    public String topic;
    public long ttl;
    public String userAccount;

    public boolean isSetTo() {
        return this.to != null;
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

    public String getPayload() {
        return this.payload;
    }

    public boolean isSetPayload() {
        return this.payload != null;
    }

    public long getCreateAt() {
        return this.createAt;
    }

    public boolean isSetCreateAt() {
        return this.__isset_bit_vector.get(0);
    }

    public void setCreateAtIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetTtl() {
        return this.__isset_bit_vector.get(1);
    }

    public void setTtlIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetCollapseKey() {
        return this.collapseKey != null;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public boolean isSetRegId() {
        return this.regId != null;
    }

    public boolean isSetCategory() {
        return this.category != null;
    }

    public boolean isSetTopic() {
        return this.topic != null;
    }

    public boolean isSetMetaInfo() {
        return this.metaInfo != null;
    }

    public boolean isSetAliasName() {
        return this.aliasName != null;
    }

    public boolean isSetIsOnline() {
        return this.__isset_bit_vector.get(2);
    }

    public void setIsOnlineIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public boolean isSetUserAccount() {
        return this.userAccount != null;
    }

    public boolean isSetMiid() {
        return this.__isset_bit_vector.get(3);
    }

    public void setMiidIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
    }

    public boolean isSetImeiMd5() {
        return this.imeiMd5 != null;
    }

    public boolean isSetDeviceId() {
        return this.deviceId != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof PushMessage)) {
            return equals((PushMessage) that);
        }
        return false;
    }

    public boolean equals(PushMessage that) {
        if (that == null) {
            return false;
        }
        boolean this_present_to = isSetTo();
        boolean that_present_to = that.isSetTo();
        if (this_present_to || that_present_to) {
            if (!this_present_to || !that_present_to) {
                return false;
            }
            if (!this.to.equals(that.to)) {
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
        boolean this_present_createAt = isSetCreateAt();
        boolean that_present_createAt = that.isSetCreateAt();
        if (this_present_createAt || that_present_createAt) {
            if (!this_present_createAt || !that_present_createAt) {
                return false;
            }
            if (this.createAt != that.createAt) {
                return false;
            }
        }
        boolean this_present_ttl = isSetTtl();
        boolean that_present_ttl = that.isSetTtl();
        if (this_present_ttl || that_present_ttl) {
            if (!this_present_ttl || !that_present_ttl) {
                return false;
            }
            if (this.ttl != that.ttl) {
                return false;
            }
        }
        boolean this_present_collapseKey = isSetCollapseKey();
        boolean that_present_collapseKey = that.isSetCollapseKey();
        if (this_present_collapseKey || that_present_collapseKey) {
            if (!this_present_collapseKey || !that_present_collapseKey) {
                return false;
            }
            if (!this.collapseKey.equals(that.collapseKey)) {
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
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(PushMessage other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        PushMessage typedOther = other;
        int lastComparison = Boolean.valueOf(isSetTo()).compareTo(Boolean.valueOf(typedOther.isSetTo()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTo()) {
            lastComparison = TBaseHelper.compareTo(this.to, typedOther.to);
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
        lastComparison = Boolean.valueOf(isSetCreateAt()).compareTo(Boolean.valueOf(typedOther.isSetCreateAt()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCreateAt()) {
            lastComparison = TBaseHelper.compareTo(this.createAt, typedOther.createAt);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetTtl()).compareTo(Boolean.valueOf(typedOther.isSetTtl()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTtl()) {
            lastComparison = TBaseHelper.compareTo(this.ttl, typedOther.ttl);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCollapseKey()).compareTo(Boolean.valueOf(typedOther.isSetCollapseKey()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCollapseKey()) {
            lastComparison = TBaseHelper.compareTo(this.collapseKey, typedOther.collapseKey);
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
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.to = new Target();
                    this.to.read(iprot);
                    break;
                case (short) 2:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.id = iprot.readString();
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.appId = iprot.readString();
                        break;
                    }
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.payload = iprot.readString();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.createAt = iprot.readI64();
                    setCreateAtIsSet(true);
                    break;
                case (short) 6:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.ttl = iprot.readI64();
                    setTtlIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.collapseKey = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 9:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.regId = iprot.readString();
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
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.topic = iprot.readString();
                        break;
                    }
                case (short) 12:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.metaInfo = new PushMetaInfo();
                    this.metaInfo.read(iprot);
                    break;
                case (short) 13:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.aliasName = iprot.readString();
                        break;
                    }
                case (short) 14:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.isOnline = iprot.readBool();
                    setIsOnlineIsSet(true);
                    break;
                case (short) 15:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.userAccount = iprot.readString();
                        break;
                    }
                case (short) 16:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.miid = iprot.readI64();
                    setMiidIsSet(true);
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
        if (this.to != null && isSetTo()) {
            oprot.writeFieldBegin(TO_FIELD_DESC);
            this.to.write(oprot);
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
        if (this.payload != null) {
            oprot.writeFieldBegin(PAYLOAD_FIELD_DESC);
            oprot.writeString(this.payload);
            oprot.writeFieldEnd();
        }
        if (isSetCreateAt()) {
            oprot.writeFieldBegin(CREATE_AT_FIELD_DESC);
            oprot.writeI64(this.createAt);
            oprot.writeFieldEnd();
        }
        if (isSetTtl()) {
            oprot.writeFieldBegin(TTL_FIELD_DESC);
            oprot.writeI64(this.ttl);
            oprot.writeFieldEnd();
        }
        if (this.collapseKey != null && isSetCollapseKey()) {
            oprot.writeFieldBegin(COLLAPSE_KEY_FIELD_DESC);
            oprot.writeString(this.collapseKey);
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (this.regId != null && isSetRegId()) {
            oprot.writeFieldBegin(REG_ID_FIELD_DESC);
            oprot.writeString(this.regId);
            oprot.writeFieldEnd();
        }
        if (this.category != null && isSetCategory()) {
            oprot.writeFieldBegin(CATEGORY_FIELD_DESC);
            oprot.writeString(this.category);
            oprot.writeFieldEnd();
        }
        if (this.topic != null && isSetTopic()) {
            oprot.writeFieldBegin(TOPIC_FIELD_DESC);
            oprot.writeString(this.topic);
            oprot.writeFieldEnd();
        }
        if (this.metaInfo != null && isSetMetaInfo()) {
            oprot.writeFieldBegin(META_INFO_FIELD_DESC);
            this.metaInfo.write(oprot);
            oprot.writeFieldEnd();
        }
        if (this.aliasName != null && isSetAliasName()) {
            oprot.writeFieldBegin(ALIAS_NAME_FIELD_DESC);
            oprot.writeString(this.aliasName);
            oprot.writeFieldEnd();
        }
        if (isSetIsOnline()) {
            oprot.writeFieldBegin(IS_ONLINE_FIELD_DESC);
            oprot.writeBool(this.isOnline);
            oprot.writeFieldEnd();
        }
        if (this.userAccount != null && isSetUserAccount()) {
            oprot.writeFieldBegin(USER_ACCOUNT_FIELD_DESC);
            oprot.writeString(this.userAccount);
            oprot.writeFieldEnd();
        }
        if (isSetMiid()) {
            oprot.writeFieldBegin(MIID_FIELD_DESC);
            oprot.writeI64(this.miid);
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
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PushMessage(");
        boolean first = true;
        if (isSetTo()) {
            sb.append("to:");
            if (this.to == null) {
                sb.append("null");
            } else {
                sb.append(this.to);
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
        sb.append("payload:");
        if (this.payload == null) {
            sb.append("null");
        } else {
            sb.append(this.payload);
        }
        first = false;
        if (isSetCreateAt()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("createAt:");
            sb.append(this.createAt);
            first = false;
        }
        if (isSetTtl()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("ttl:");
            sb.append(this.ttl);
            first = false;
        }
        if (isSetCollapseKey()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("collapseKey:");
            if (this.collapseKey == null) {
                sb.append("null");
            } else {
                sb.append(this.collapseKey);
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
        if (isSetMetaInfo()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("metaInfo:");
            if (this.metaInfo == null) {
                sb.append("null");
            } else {
                sb.append(this.metaInfo);
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
        if (isSetIsOnline()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("isOnline:");
            sb.append(this.isOnline);
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
        if (isSetMiid()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("miid:");
            sb.append(this.miid);
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
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.id == null) {
            throw new TProtocolException("Required field 'id' was not present! Struct: " + toString());
        } else if (this.appId == null) {
            throw new TProtocolException("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.payload == null) {
            throw new TProtocolException("Required field 'payload' was not present! Struct: " + toString());
        }
    }
}
