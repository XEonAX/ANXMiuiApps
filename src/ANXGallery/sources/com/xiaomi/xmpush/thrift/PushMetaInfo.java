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

public class PushMetaInfo implements Serializable, Cloneable, TBase<PushMetaInfo, Object> {
    private static final TField APS_PROPER_FIELDS_FIELD_DESC = new TField("", (byte) 13, (short) 13);
    private static final TField DESCRIPTION_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TField EXTRA_FIELD_DESC = new TField("", (byte) 13, (short) 10);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField IGNORE_REG_INFO_FIELD_DESC = new TField("", (byte) 2, (short) 12);
    private static final TField INTERNAL_FIELD_DESC = new TField("", (byte) 13, (short) 11);
    private static final TField MESSAGE_TS_FIELD_DESC = new TField("", (byte) 10, (short) 2);
    private static final TField NOTIFY_ID_FIELD_DESC = new TField("", (byte) 8, (short) 9);
    private static final TField NOTIFY_TYPE_FIELD_DESC = new TField("", (byte) 8, (short) 6);
    private static final TField PASS_THROUGH_FIELD_DESC = new TField("", (byte) 8, (short) 8);
    private static final TStruct STRUCT_DESC = new TStruct("PushMetaInfo");
    private static final TField TITLE_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField TOPIC_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField URL_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private BitSet __isset_bit_vector;
    public Map<String, String> apsProperFields;
    public String description;
    public Map<String, String> extra;
    public String id;
    public boolean ignoreRegInfo;
    public Map<String, String> internal;
    public long messageTs;
    public int notifyId;
    public int notifyType;
    public int passThrough;
    public String title;
    public String topic;
    public String url;

    public PushMetaInfo() {
        this.__isset_bit_vector = new BitSet(5);
        this.ignoreRegInfo = false;
    }

    public PushMetaInfo(PushMetaInfo other) {
        this.__isset_bit_vector = new BitSet(5);
        this.__isset_bit_vector.clear();
        this.__isset_bit_vector.or(other.__isset_bit_vector);
        if (other.isSetId()) {
            this.id = other.id;
        }
        this.messageTs = other.messageTs;
        if (other.isSetTopic()) {
            this.topic = other.topic;
        }
        if (other.isSetTitle()) {
            this.title = other.title;
        }
        if (other.isSetDescription()) {
            this.description = other.description;
        }
        this.notifyType = other.notifyType;
        if (other.isSetUrl()) {
            this.url = other.url;
        }
        this.passThrough = other.passThrough;
        this.notifyId = other.notifyId;
        if (other.isSetExtra()) {
            Map<String, String> __this__extra = new HashMap();
            for (Entry<String, String> other_element : other.extra.entrySet()) {
                __this__extra.put((String) other_element.getKey(), (String) other_element.getValue());
            }
            this.extra = __this__extra;
        }
        if (other.isSetInternal()) {
            Map<String, String> __this__internal = new HashMap();
            for (Entry<String, String> other_element2 : other.internal.entrySet()) {
                __this__internal.put((String) other_element2.getKey(), (String) other_element2.getValue());
            }
            this.internal = __this__internal;
        }
        this.ignoreRegInfo = other.ignoreRegInfo;
        if (other.isSetApsProperFields()) {
            Map<String, String> __this__apsProperFields = new HashMap();
            for (Entry<String, String> other_element22 : other.apsProperFields.entrySet()) {
                __this__apsProperFields.put((String) other_element22.getKey(), (String) other_element22.getValue());
            }
            this.apsProperFields = __this__apsProperFields;
        }
    }

    public PushMetaInfo deepCopy() {
        return new PushMetaInfo(this);
    }

    public String getId() {
        return this.id;
    }

    public PushMetaInfo setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public long getMessageTs() {
        return this.messageTs;
    }

    public boolean isSetMessageTs() {
        return this.__isset_bit_vector.get(0);
    }

    public void setMessageTsIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public String getTopic() {
        return this.topic;
    }

    public PushMetaInfo setTopic(String topic) {
        this.topic = topic;
        return this;
    }

    public boolean isSetTopic() {
        return this.topic != null;
    }

    public String getTitle() {
        return this.title;
    }

    public PushMetaInfo setTitle(String title) {
        this.title = title;
        return this;
    }

    public boolean isSetTitle() {
        return this.title != null;
    }

    public String getDescription() {
        return this.description;
    }

    public PushMetaInfo setDescription(String description) {
        this.description = description;
        return this;
    }

    public boolean isSetDescription() {
        return this.description != null;
    }

    public int getNotifyType() {
        return this.notifyType;
    }

    public PushMetaInfo setNotifyType(int notifyType) {
        this.notifyType = notifyType;
        setNotifyTypeIsSet(true);
        return this;
    }

    public boolean isSetNotifyType() {
        return this.__isset_bit_vector.get(1);
    }

    public void setNotifyTypeIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetUrl() {
        return this.url != null;
    }

    public int getPassThrough() {
        return this.passThrough;
    }

    public PushMetaInfo setPassThrough(int passThrough) {
        this.passThrough = passThrough;
        setPassThroughIsSet(true);
        return this;
    }

    public boolean isSetPassThrough() {
        return this.__isset_bit_vector.get(2);
    }

    public void setPassThroughIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public int getNotifyId() {
        return this.notifyId;
    }

    public PushMetaInfo setNotifyId(int notifyId) {
        this.notifyId = notifyId;
        setNotifyIdIsSet(true);
        return this;
    }

    public boolean isSetNotifyId() {
        return this.__isset_bit_vector.get(3);
    }

    public void setNotifyIdIsSet(boolean value) {
        this.__isset_bit_vector.set(3, value);
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

    public PushMetaInfo setExtra(Map<String, String> extra) {
        this.extra = extra;
        return this;
    }

    public boolean isSetExtra() {
        return this.extra != null;
    }

    public void putToInternal(String key, String val) {
        if (this.internal == null) {
            this.internal = new HashMap();
        }
        this.internal.put(key, val);
    }

    public Map<String, String> getInternal() {
        return this.internal;
    }

    public boolean isSetInternal() {
        return this.internal != null;
    }

    public boolean isIgnoreRegInfo() {
        return this.ignoreRegInfo;
    }

    public boolean isSetIgnoreRegInfo() {
        return this.__isset_bit_vector.get(4);
    }

    public void setIgnoreRegInfoIsSet(boolean value) {
        this.__isset_bit_vector.set(4, value);
    }

    public boolean isSetApsProperFields() {
        return this.apsProperFields != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof PushMetaInfo)) {
            return equals((PushMetaInfo) that);
        }
        return false;
    }

    public boolean equals(PushMetaInfo that) {
        if (that == null) {
            return false;
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
        boolean this_present_title = isSetTitle();
        boolean that_present_title = that.isSetTitle();
        if (this_present_title || that_present_title) {
            if (!this_present_title || !that_present_title) {
                return false;
            }
            if (!this.title.equals(that.title)) {
                return false;
            }
        }
        boolean this_present_description = isSetDescription();
        boolean that_present_description = that.isSetDescription();
        if (this_present_description || that_present_description) {
            if (!this_present_description || !that_present_description) {
                return false;
            }
            if (!this.description.equals(that.description)) {
                return false;
            }
        }
        boolean this_present_notifyType = isSetNotifyType();
        boolean that_present_notifyType = that.isSetNotifyType();
        if (this_present_notifyType || that_present_notifyType) {
            if (!this_present_notifyType || !that_present_notifyType) {
                return false;
            }
            if (this.notifyType != that.notifyType) {
                return false;
            }
        }
        boolean this_present_url = isSetUrl();
        boolean that_present_url = that.isSetUrl();
        if (this_present_url || that_present_url) {
            if (!this_present_url || !that_present_url) {
                return false;
            }
            if (!this.url.equals(that.url)) {
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
        boolean this_present_notifyId = isSetNotifyId();
        boolean that_present_notifyId = that.isSetNotifyId();
        if (this_present_notifyId || that_present_notifyId) {
            if (!this_present_notifyId || !that_present_notifyId) {
                return false;
            }
            if (this.notifyId != that.notifyId) {
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
        boolean this_present_internal = isSetInternal();
        boolean that_present_internal = that.isSetInternal();
        if (this_present_internal || that_present_internal) {
            if (!this_present_internal || !that_present_internal) {
                return false;
            }
            if (!this.internal.equals(that.internal)) {
                return false;
            }
        }
        boolean this_present_ignoreRegInfo = isSetIgnoreRegInfo();
        boolean that_present_ignoreRegInfo = that.isSetIgnoreRegInfo();
        if (this_present_ignoreRegInfo || that_present_ignoreRegInfo) {
            if (!this_present_ignoreRegInfo || !that_present_ignoreRegInfo) {
                return false;
            }
            if (this.ignoreRegInfo != that.ignoreRegInfo) {
                return false;
            }
        }
        boolean this_present_apsProperFields = isSetApsProperFields();
        boolean that_present_apsProperFields = that.isSetApsProperFields();
        if (this_present_apsProperFields || that_present_apsProperFields) {
            if (!this_present_apsProperFields || !that_present_apsProperFields) {
                return false;
            }
            if (!this.apsProperFields.equals(that.apsProperFields)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(PushMetaInfo other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        PushMetaInfo typedOther = other;
        int lastComparison = Boolean.valueOf(isSetId()).compareTo(Boolean.valueOf(typedOther.isSetId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetId()) {
            lastComparison = TBaseHelper.compareTo(this.id, typedOther.id);
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
        lastComparison = Boolean.valueOf(isSetTitle()).compareTo(Boolean.valueOf(typedOther.isSetTitle()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTitle()) {
            lastComparison = TBaseHelper.compareTo(this.title, typedOther.title);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetDescription()).compareTo(Boolean.valueOf(typedOther.isSetDescription()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetDescription()) {
            lastComparison = TBaseHelper.compareTo(this.description, typedOther.description);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetNotifyType()).compareTo(Boolean.valueOf(typedOther.isSetNotifyType()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetNotifyType()) {
            lastComparison = TBaseHelper.compareTo(this.notifyType, typedOther.notifyType);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetUrl()).compareTo(Boolean.valueOf(typedOther.isSetUrl()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUrl()) {
            lastComparison = TBaseHelper.compareTo(this.url, typedOther.url);
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
        lastComparison = Boolean.valueOf(isSetNotifyId()).compareTo(Boolean.valueOf(typedOther.isSetNotifyId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetNotifyId()) {
            lastComparison = TBaseHelper.compareTo(this.notifyId, typedOther.notifyId);
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
        lastComparison = Boolean.valueOf(isSetInternal()).compareTo(Boolean.valueOf(typedOther.isSetInternal()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetInternal()) {
            lastComparison = TBaseHelper.compareTo(this.internal, typedOther.internal);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetIgnoreRegInfo()).compareTo(Boolean.valueOf(typedOther.isSetIgnoreRegInfo()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetIgnoreRegInfo()) {
            lastComparison = TBaseHelper.compareTo(this.ignoreRegInfo, typedOther.ignoreRegInfo);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetApsProperFields()).compareTo(Boolean.valueOf(typedOther.isSetApsProperFields()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetApsProperFields()) {
            lastComparison = TBaseHelper.compareTo(this.apsProperFields, typedOther.apsProperFields);
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
                    }
                    this.id = iprot.readString();
                    break;
                case (short) 2:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.messageTs = iprot.readI64();
                    setMessageTsIsSet(true);
                    break;
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.topic = iprot.readString();
                    break;
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.title = iprot.readString();
                    break;
                case (short) 5:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.description = iprot.readString();
                    break;
                case (short) 6:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.notifyType = iprot.readI32();
                    setNotifyTypeIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.url = iprot.readString();
                    break;
                case (short) 8:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.passThrough = iprot.readI32();
                    setPassThroughIsSet(true);
                    break;
                case (short) 9:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.notifyId = iprot.readI32();
                    setNotifyIdIsSet(true);
                    break;
                case (short) 10:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map25 = iprot.readMapBegin();
                    this.extra = new HashMap(_map25.size * 2);
                    for (int _i26 = 0; _i26 < _map25.size; _i26++) {
                        this.extra.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
                    break;
                case (short) 11:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map29 = iprot.readMapBegin();
                    this.internal = new HashMap(_map29.size * 2);
                    for (int _i30 = 0; _i30 < _map29.size; _i30++) {
                        this.internal.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
                    break;
                case (short) 12:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.ignoreRegInfo = iprot.readBool();
                    setIgnoreRegInfoIsSet(true);
                    break;
                case (short) 13:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map33 = iprot.readMapBegin();
                    this.apsProperFields = new HashMap(_map33.size * 2);
                    for (int _i34 = 0; _i34 < _map33.size; _i34++) {
                        this.apsProperFields.put(iprot.readString(), iprot.readString());
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
        if (this.id != null) {
            oprot.writeFieldBegin(ID_FIELD_DESC);
            oprot.writeString(this.id);
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
        if (this.title != null && isSetTitle()) {
            oprot.writeFieldBegin(TITLE_FIELD_DESC);
            oprot.writeString(this.title);
            oprot.writeFieldEnd();
        }
        if (this.description != null && isSetDescription()) {
            oprot.writeFieldBegin(DESCRIPTION_FIELD_DESC);
            oprot.writeString(this.description);
            oprot.writeFieldEnd();
        }
        if (isSetNotifyType()) {
            oprot.writeFieldBegin(NOTIFY_TYPE_FIELD_DESC);
            oprot.writeI32(this.notifyType);
            oprot.writeFieldEnd();
        }
        if (this.url != null && isSetUrl()) {
            oprot.writeFieldBegin(URL_FIELD_DESC);
            oprot.writeString(this.url);
            oprot.writeFieldEnd();
        }
        if (isSetPassThrough()) {
            oprot.writeFieldBegin(PASS_THROUGH_FIELD_DESC);
            oprot.writeI32(this.passThrough);
            oprot.writeFieldEnd();
        }
        if (isSetNotifyId()) {
            oprot.writeFieldBegin(NOTIFY_ID_FIELD_DESC);
            oprot.writeI32(this.notifyId);
            oprot.writeFieldEnd();
        }
        if (this.extra != null && isSetExtra()) {
            oprot.writeFieldBegin(EXTRA_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.extra.size()));
            for (Entry<String, String> _iter37 : this.extra.entrySet()) {
                oprot.writeString((String) _iter37.getKey());
                oprot.writeString((String) _iter37.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        if (this.internal != null && isSetInternal()) {
            oprot.writeFieldBegin(INTERNAL_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.internal.size()));
            for (Entry<String, String> _iter38 : this.internal.entrySet()) {
                oprot.writeString((String) _iter38.getKey());
                oprot.writeString((String) _iter38.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        if (isSetIgnoreRegInfo()) {
            oprot.writeFieldBegin(IGNORE_REG_INFO_FIELD_DESC);
            oprot.writeBool(this.ignoreRegInfo);
            oprot.writeFieldEnd();
        }
        if (this.apsProperFields != null && isSetApsProperFields()) {
            oprot.writeFieldBegin(APS_PROPER_FIELDS_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.apsProperFields.size()));
            for (Entry<String, String> _iter39 : this.apsProperFields.entrySet()) {
                oprot.writeString((String) _iter39.getKey());
                oprot.writeString((String) _iter39.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PushMetaInfo(");
        sb.append("id:");
        if (this.id == null) {
            sb.append("null");
        } else {
            sb.append(this.id);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("messageTs:");
        sb.append(this.messageTs);
        boolean first = false;
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
        if (isSetTitle()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("title:");
            if (this.title == null) {
                sb.append("null");
            } else {
                sb.append(this.title);
            }
            first = false;
        }
        if (isSetDescription()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("description:");
            if (this.description == null) {
                sb.append("null");
            } else {
                sb.append(this.description);
            }
            first = false;
        }
        if (isSetNotifyType()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("notifyType:");
            sb.append(this.notifyType);
            first = false;
        }
        if (isSetUrl()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("url:");
            if (this.url == null) {
                sb.append("null");
            } else {
                sb.append(this.url);
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
        if (isSetNotifyId()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("notifyId:");
            sb.append(this.notifyId);
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
        if (isSetInternal()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("internal:");
            if (this.internal == null) {
                sb.append("null");
            } else {
                sb.append(this.internal);
            }
            first = false;
        }
        if (isSetIgnoreRegInfo()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("ignoreRegInfo:");
            sb.append(this.ignoreRegInfo);
            first = false;
        }
        if (isSetApsProperFields()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("apsProperFields:");
            if (this.apsProperFields == null) {
                sb.append("null");
            } else {
                sb.append(this.apsProperFields);
            }
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
