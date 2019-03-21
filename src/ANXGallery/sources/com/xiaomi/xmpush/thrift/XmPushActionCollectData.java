package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TList;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class XmPushActionCollectData implements Serializable, Cloneable, TBase<XmPushActionCollectData, Object> {
    private static final TField DATA_COLLECTION_ITEMS_FIELD_DESC = new TField("", (byte) 15, (short) 1);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionCollectData");
    public List<DataCollectionItem> dataCollectionItems;

    public XmPushActionCollectData setDataCollectionItems(List<DataCollectionItem> dataCollectionItems) {
        this.dataCollectionItems = dataCollectionItems;
        return this;
    }

    public boolean isSetDataCollectionItems() {
        return this.dataCollectionItems != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionCollectData)) {
            return equals((XmPushActionCollectData) that);
        }
        return false;
    }

    public boolean equals(XmPushActionCollectData that) {
        if (that == null) {
            return false;
        }
        boolean this_present_dataCollectionItems = isSetDataCollectionItems();
        boolean that_present_dataCollectionItems = that.isSetDataCollectionItems();
        if ((this_present_dataCollectionItems || that_present_dataCollectionItems) && (!this_present_dataCollectionItems || !that_present_dataCollectionItems || !this.dataCollectionItems.equals(that.dataCollectionItems))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionCollectData other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionCollectData typedOther = other;
        int lastComparison = Boolean.valueOf(isSetDataCollectionItems()).compareTo(Boolean.valueOf(typedOther.isSetDataCollectionItems()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetDataCollectionItems()) {
            lastComparison = TBaseHelper.compareTo(this.dataCollectionItems, typedOther.dataCollectionItems);
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
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list59 = iprot.readListBegin();
                    this.dataCollectionItems = new ArrayList(_list59.size);
                    for (int _i60 = 0; _i60 < _list59.size; _i60++) {
                        DataCollectionItem _elem61 = new DataCollectionItem();
                        _elem61.read(iprot);
                        this.dataCollectionItems.add(_elem61);
                    }
                    iprot.readListEnd();
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
        if (this.dataCollectionItems != null) {
            oprot.writeFieldBegin(DATA_COLLECTION_ITEMS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.dataCollectionItems.size()));
            for (DataCollectionItem _iter62 : this.dataCollectionItems) {
                _iter62.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCollectData(");
        sb.append("dataCollectionItems:");
        if (this.dataCollectionItems == null) {
            sb.append("null");
        } else {
            sb.append(this.dataCollectionItems);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.dataCollectionItems == null) {
            throw new TProtocolException("Required field 'dataCollectionItems' was not present! Struct: " + toString());
        }
    }
}
