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

public class DataCollectionItem implements Serializable, Cloneable, TBase<DataCollectionItem, Object> {
    private static final TField COLLECTED_AT_FIELD_DESC = new TField("", (byte) 10, (short) 1);
    private static final TField COLLECTION_TYPE_FIELD_DESC = new TField("", (byte) 8, (short) 2);
    private static final TField CONTENT_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TStruct STRUCT_DESC = new TStruct("DataCollectionItem");
    private BitSet __isset_bit_vector = new BitSet(1);
    public long collectedAt;
    public ClientCollectionType collectionType;
    public String content;

    public DataCollectionItem setCollectedAt(long collectedAt) {
        this.collectedAt = collectedAt;
        setCollectedAtIsSet(true);
        return this;
    }

    public boolean isSetCollectedAt() {
        return this.__isset_bit_vector.get(0);
    }

    public void setCollectedAtIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public DataCollectionItem setCollectionType(ClientCollectionType collectionType) {
        this.collectionType = collectionType;
        return this;
    }

    public boolean isSetCollectionType() {
        return this.collectionType != null;
    }

    public String getContent() {
        return this.content;
    }

    public DataCollectionItem setContent(String content) {
        this.content = content;
        return this;
    }

    public boolean isSetContent() {
        return this.content != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof DataCollectionItem)) {
            return equals((DataCollectionItem) that);
        }
        return false;
    }

    public boolean equals(DataCollectionItem that) {
        if (that == null) {
            return false;
        }
        if ((1 != null || 1 != null) && (1 == null || 1 == null || this.collectedAt != that.collectedAt)) {
            return false;
        }
        boolean this_present_collectionType = isSetCollectionType();
        boolean that_present_collectionType = that.isSetCollectionType();
        if ((this_present_collectionType || that_present_collectionType) && (!this_present_collectionType || !that_present_collectionType || !this.collectionType.equals(that.collectionType))) {
            return false;
        }
        boolean this_present_content = isSetContent();
        boolean that_present_content = that.isSetContent();
        if ((this_present_content || that_present_content) && (!this_present_content || !that_present_content || !this.content.equals(that.content))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(DataCollectionItem other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        DataCollectionItem typedOther = other;
        int lastComparison = Boolean.valueOf(isSetCollectedAt()).compareTo(Boolean.valueOf(typedOther.isSetCollectedAt()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCollectedAt()) {
            lastComparison = TBaseHelper.compareTo(this.collectedAt, typedOther.collectedAt);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCollectionType()).compareTo(Boolean.valueOf(typedOther.isSetCollectionType()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCollectionType()) {
            lastComparison = TBaseHelper.compareTo(this.collectionType, typedOther.collectionType);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetContent()).compareTo(Boolean.valueOf(typedOther.isSetContent()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetContent()) {
            lastComparison = TBaseHelper.compareTo(this.content, typedOther.content);
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
                if (isSetCollectedAt()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'collectedAt' was not found in serialized data! Struct: " + toString());
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.collectedAt = iprot.readI64();
                    setCollectedAtIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.collectionType = ClientCollectionType.findByValue(iprot.readI32());
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.content = iprot.readString();
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
        oprot.writeFieldBegin(COLLECTED_AT_FIELD_DESC);
        oprot.writeI64(this.collectedAt);
        oprot.writeFieldEnd();
        if (this.collectionType != null) {
            oprot.writeFieldBegin(COLLECTION_TYPE_FIELD_DESC);
            oprot.writeI32(this.collectionType.getValue());
            oprot.writeFieldEnd();
        }
        if (this.content != null) {
            oprot.writeFieldBegin(CONTENT_FIELD_DESC);
            oprot.writeString(this.content);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DataCollectionItem(");
        sb.append("collectedAt:");
        sb.append(this.collectedAt);
        if (!false) {
            sb.append(", ");
        }
        sb.append("collectionType:");
        if (this.collectionType == null) {
            sb.append("null");
        } else {
            sb.append(this.collectionType);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("content:");
        if (this.content == null) {
            sb.append("null");
        } else {
            sb.append(this.content);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.collectionType == null) {
            throw new TProtocolException("Required field 'collectionType' was not present! Struct: " + toString());
        } else if (this.content == null) {
            throw new TProtocolException("Required field 'content' was not present! Struct: " + toString());
        }
    }
}
