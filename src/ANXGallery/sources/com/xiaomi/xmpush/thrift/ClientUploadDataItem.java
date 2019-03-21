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
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class ClientUploadDataItem implements Serializable, Cloneable, TBase<ClientUploadDataItem, Object> {
    private static final TField CATEGORY_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField CHANNEL_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField COUNTER_FIELD_DESC = new TField("", (byte) 10, (short) 4);
    private static final TField DATA_FIELD_DESC = new TField("", (byte) 11, (short) 2);
    private static final TField EXTRA_FIELD_DESC = new TField("", (byte) 13, (short) 10);
    private static final TField FROM_SDK_FIELD_DESC = new TField("", (byte) 2, (short) 6);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TField NAME_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField PKG_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 11);
    private static final TField SOURCE_PACKAGE_FIELD_DESC = new TField("", (byte) 11, (short) 8);
    private static final TStruct STRUCT_DESC = new TStruct("ClientUploadDataItem");
    private static final TField TIMESTAMP_FIELD_DESC = new TField("", (byte) 10, (short) 5);
    private BitSet __isset_bit_vector = new BitSet(3);
    public String category;
    public String channel;
    public long counter;
    public String data;
    public Map<String, String> extra;
    public boolean fromSdk;
    public String id;
    public String name;
    public String pkgName;
    public String sourcePackage;
    public long timestamp;

    public String getChannel() {
        return this.channel;
    }

    public ClientUploadDataItem setChannel(String channel) {
        this.channel = channel;
        return this;
    }

    public boolean isSetChannel() {
        return this.channel != null;
    }

    public ClientUploadDataItem setData(String data) {
        this.data = data;
        return this;
    }

    public boolean isSetData() {
        return this.data != null;
    }

    public String getName() {
        return this.name;
    }

    public ClientUploadDataItem setName(String name) {
        this.name = name;
        return this;
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public ClientUploadDataItem setCounter(long counter) {
        this.counter = counter;
        setCounterIsSet(true);
        return this;
    }

    public boolean isSetCounter() {
        return this.__isset_bit_vector.get(0);
    }

    public void setCounterIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public ClientUploadDataItem setTimestamp(long timestamp) {
        this.timestamp = timestamp;
        setTimestampIsSet(true);
        return this;
    }

    public boolean isSetTimestamp() {
        return this.__isset_bit_vector.get(1);
    }

    public void setTimestampIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public ClientUploadDataItem setFromSdk(boolean fromSdk) {
        this.fromSdk = fromSdk;
        setFromSdkIsSet(true);
        return this;
    }

    public boolean isSetFromSdk() {
        return this.__isset_bit_vector.get(2);
    }

    public void setFromSdkIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public ClientUploadDataItem setCategory(String category) {
        this.category = category;
        return this;
    }

    public boolean isSetCategory() {
        return this.category != null;
    }

    public String getSourcePackage() {
        return this.sourcePackage;
    }

    public ClientUploadDataItem setSourcePackage(String sourcePackage) {
        this.sourcePackage = sourcePackage;
        return this;
    }

    public boolean isSetSourcePackage() {
        return this.sourcePackage != null;
    }

    public String getId() {
        return this.id;
    }

    public ClientUploadDataItem setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public boolean isSetExtra() {
        return this.extra != null;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public ClientUploadDataItem setPkgName(String pkgName) {
        this.pkgName = pkgName;
        return this;
    }

    public boolean isSetPkgName() {
        return this.pkgName != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof ClientUploadDataItem)) {
            return equals((ClientUploadDataItem) that);
        }
        return false;
    }

    public boolean equals(ClientUploadDataItem that) {
        if (that == null) {
            return false;
        }
        boolean this_present_channel = isSetChannel();
        boolean that_present_channel = that.isSetChannel();
        if (this_present_channel || that_present_channel) {
            if (!this_present_channel || !that_present_channel) {
                return false;
            }
            if (!this.channel.equals(that.channel)) {
                return false;
            }
        }
        boolean this_present_data = isSetData();
        boolean that_present_data = that.isSetData();
        if (this_present_data || that_present_data) {
            if (!this_present_data || !that_present_data) {
                return false;
            }
            if (!this.data.equals(that.data)) {
                return false;
            }
        }
        boolean this_present_name = isSetName();
        boolean that_present_name = that.isSetName();
        if (this_present_name || that_present_name) {
            if (!this_present_name || !that_present_name) {
                return false;
            }
            if (!this.name.equals(that.name)) {
                return false;
            }
        }
        boolean this_present_counter = isSetCounter();
        boolean that_present_counter = that.isSetCounter();
        if (this_present_counter || that_present_counter) {
            if (!this_present_counter || !that_present_counter) {
                return false;
            }
            if (this.counter != that.counter) {
                return false;
            }
        }
        boolean this_present_timestamp = isSetTimestamp();
        boolean that_present_timestamp = that.isSetTimestamp();
        if (this_present_timestamp || that_present_timestamp) {
            if (!this_present_timestamp || !that_present_timestamp) {
                return false;
            }
            if (this.timestamp != that.timestamp) {
                return false;
            }
        }
        boolean this_present_fromSdk = isSetFromSdk();
        boolean that_present_fromSdk = that.isSetFromSdk();
        if (this_present_fromSdk || that_present_fromSdk) {
            if (!this_present_fromSdk || !that_present_fromSdk) {
                return false;
            }
            if (this.fromSdk != that.fromSdk) {
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
        boolean this_present_sourcePackage = isSetSourcePackage();
        boolean that_present_sourcePackage = that.isSetSourcePackage();
        if (this_present_sourcePackage || that_present_sourcePackage) {
            if (!this_present_sourcePackage || !that_present_sourcePackage) {
                return false;
            }
            if (!this.sourcePackage.equals(that.sourcePackage)) {
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
        boolean this_present_pkgName = isSetPkgName();
        boolean that_present_pkgName = that.isSetPkgName();
        if (this_present_pkgName || that_present_pkgName) {
            if (!this_present_pkgName || !that_present_pkgName) {
                return false;
            }
            if (!this.pkgName.equals(that.pkgName)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(ClientUploadDataItem other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        ClientUploadDataItem typedOther = other;
        int lastComparison = Boolean.valueOf(isSetChannel()).compareTo(Boolean.valueOf(typedOther.isSetChannel()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetChannel()) {
            lastComparison = TBaseHelper.compareTo(this.channel, typedOther.channel);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetData()).compareTo(Boolean.valueOf(typedOther.isSetData()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetData()) {
            lastComparison = TBaseHelper.compareTo(this.data, typedOther.data);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetName()).compareTo(Boolean.valueOf(typedOther.isSetName()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetName()) {
            lastComparison = TBaseHelper.compareTo(this.name, typedOther.name);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCounter()).compareTo(Boolean.valueOf(typedOther.isSetCounter()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCounter()) {
            lastComparison = TBaseHelper.compareTo(this.counter, typedOther.counter);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetTimestamp()).compareTo(Boolean.valueOf(typedOther.isSetTimestamp()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTimestamp()) {
            lastComparison = TBaseHelper.compareTo(this.timestamp, typedOther.timestamp);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetFromSdk()).compareTo(Boolean.valueOf(typedOther.isSetFromSdk()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetFromSdk()) {
            lastComparison = TBaseHelper.compareTo(this.fromSdk, typedOther.fromSdk);
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
        lastComparison = Boolean.valueOf(isSetSourcePackage()).compareTo(Boolean.valueOf(typedOther.isSetSourcePackage()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetSourcePackage()) {
            lastComparison = TBaseHelper.compareTo(this.sourcePackage, typedOther.sourcePackage);
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
        lastComparison = Boolean.valueOf(isSetPkgName()).compareTo(Boolean.valueOf(typedOther.isSetPkgName()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPkgName()) {
            lastComparison = TBaseHelper.compareTo(this.pkgName, typedOther.pkgName);
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
                        this.channel = iprot.readString();
                        break;
                    }
                case (short) 2:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.data = iprot.readString();
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.name = iprot.readString();
                        break;
                    }
                case (short) 4:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.counter = iprot.readI64();
                    setCounterIsSet(true);
                    break;
                case (short) 5:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.timestamp = iprot.readI64();
                    setTimestampIsSet(true);
                    break;
                case (short) 6:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.fromSdk = iprot.readBool();
                    setFromSdkIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.category = iprot.readString();
                        break;
                    }
                case (short) 8:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.sourcePackage = iprot.readString();
                        break;
                    }
                case (short) 9:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.id = iprot.readString();
                        break;
                    }
                case (short) 10:
                    if (field.type != (byte) 13) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TMap _map0 = iprot.readMapBegin();
                    this.extra = new HashMap(_map0.size * 2);
                    for (int _i1 = 0; _i1 < _map0.size; _i1++) {
                        this.extra.put(iprot.readString(), iprot.readString());
                    }
                    iprot.readMapEnd();
                    break;
                case (short) 11:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.pkgName = iprot.readString();
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
        if (this.channel != null && isSetChannel()) {
            oprot.writeFieldBegin(CHANNEL_FIELD_DESC);
            oprot.writeString(this.channel);
            oprot.writeFieldEnd();
        }
        if (this.data != null && isSetData()) {
            oprot.writeFieldBegin(DATA_FIELD_DESC);
            oprot.writeString(this.data);
            oprot.writeFieldEnd();
        }
        if (this.name != null && isSetName()) {
            oprot.writeFieldBegin(NAME_FIELD_DESC);
            oprot.writeString(this.name);
            oprot.writeFieldEnd();
        }
        if (isSetCounter()) {
            oprot.writeFieldBegin(COUNTER_FIELD_DESC);
            oprot.writeI64(this.counter);
            oprot.writeFieldEnd();
        }
        if (isSetTimestamp()) {
            oprot.writeFieldBegin(TIMESTAMP_FIELD_DESC);
            oprot.writeI64(this.timestamp);
            oprot.writeFieldEnd();
        }
        if (isSetFromSdk()) {
            oprot.writeFieldBegin(FROM_SDK_FIELD_DESC);
            oprot.writeBool(this.fromSdk);
            oprot.writeFieldEnd();
        }
        if (this.category != null && isSetCategory()) {
            oprot.writeFieldBegin(CATEGORY_FIELD_DESC);
            oprot.writeString(this.category);
            oprot.writeFieldEnd();
        }
        if (this.sourcePackage != null && isSetSourcePackage()) {
            oprot.writeFieldBegin(SOURCE_PACKAGE_FIELD_DESC);
            oprot.writeString(this.sourcePackage);
            oprot.writeFieldEnd();
        }
        if (this.id != null && isSetId()) {
            oprot.writeFieldBegin(ID_FIELD_DESC);
            oprot.writeString(this.id);
            oprot.writeFieldEnd();
        }
        if (this.extra != null && isSetExtra()) {
            oprot.writeFieldBegin(EXTRA_FIELD_DESC);
            oprot.writeMapBegin(new TMap((byte) 11, (byte) 11, this.extra.size()));
            for (Entry<String, String> _iter4 : this.extra.entrySet()) {
                oprot.writeString((String) _iter4.getKey());
                oprot.writeString((String) _iter4.getValue());
            }
            oprot.writeMapEnd();
            oprot.writeFieldEnd();
        }
        if (this.pkgName != null && isSetPkgName()) {
            oprot.writeFieldBegin(PKG_NAME_FIELD_DESC);
            oprot.writeString(this.pkgName);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientUploadDataItem(");
        boolean first = true;
        if (isSetChannel()) {
            sb.append("channel:");
            if (this.channel == null) {
                sb.append("null");
            } else {
                sb.append(this.channel);
            }
            first = false;
        }
        if (isSetData()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("data:");
            if (this.data == null) {
                sb.append("null");
            } else {
                sb.append(this.data);
            }
            first = false;
        }
        if (isSetName()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("name:");
            if (this.name == null) {
                sb.append("null");
            } else {
                sb.append(this.name);
            }
            first = false;
        }
        if (isSetCounter()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("counter:");
            sb.append(this.counter);
            first = false;
        }
        if (isSetTimestamp()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("timestamp:");
            sb.append(this.timestamp);
            first = false;
        }
        if (isSetFromSdk()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("fromSdk:");
            sb.append(this.fromSdk);
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
        if (isSetSourcePackage()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("sourcePackage:");
            if (this.sourcePackage == null) {
                sb.append("null");
            } else {
                sb.append(this.sourcePackage);
            }
            first = false;
        }
        if (isSetId()) {
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
        if (isSetPkgName()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("pkgName:");
            if (this.pkgName == null) {
                sb.append("null");
            } else {
                sb.append(this.pkgName);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
    }
}
