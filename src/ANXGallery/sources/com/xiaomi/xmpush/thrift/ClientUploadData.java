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

public class ClientUploadData implements Serializable, Cloneable, TBase<ClientUploadData, Object> {
    private static final TStruct STRUCT_DESC = new TStruct("ClientUploadData");
    private static final TField UPLOAD_DATA_ITEMS_FIELD_DESC = new TField("", (byte) 15, (short) 1);
    public List<ClientUploadDataItem> uploadDataItems;

    public int getUploadDataItemsSize() {
        return this.uploadDataItems == null ? 0 : this.uploadDataItems.size();
    }

    public void addToUploadDataItems(ClientUploadDataItem elem) {
        if (this.uploadDataItems == null) {
            this.uploadDataItems = new ArrayList();
        }
        this.uploadDataItems.add(elem);
    }

    public boolean isSetUploadDataItems() {
        return this.uploadDataItems != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof ClientUploadData)) {
            return equals((ClientUploadData) that);
        }
        return false;
    }

    public boolean equals(ClientUploadData that) {
        if (that == null) {
            return false;
        }
        boolean this_present_uploadDataItems = isSetUploadDataItems();
        boolean that_present_uploadDataItems = that.isSetUploadDataItems();
        if ((this_present_uploadDataItems || that_present_uploadDataItems) && (!this_present_uploadDataItems || !that_present_uploadDataItems || !this.uploadDataItems.equals(that.uploadDataItems))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(ClientUploadData other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        ClientUploadData typedOther = other;
        int lastComparison = Boolean.valueOf(isSetUploadDataItems()).compareTo(Boolean.valueOf(typedOther.isSetUploadDataItems()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUploadDataItems()) {
            lastComparison = TBaseHelper.compareTo(this.uploadDataItems, typedOther.uploadDataItems);
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
                    TList _list5 = iprot.readListBegin();
                    this.uploadDataItems = new ArrayList(_list5.size);
                    for (int _i6 = 0; _i6 < _list5.size; _i6++) {
                        ClientUploadDataItem _elem7 = new ClientUploadDataItem();
                        _elem7.read(iprot);
                        this.uploadDataItems.add(_elem7);
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
        if (this.uploadDataItems != null) {
            oprot.writeFieldBegin(UPLOAD_DATA_ITEMS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.uploadDataItems.size()));
            for (ClientUploadDataItem _iter8 : this.uploadDataItems) {
                _iter8.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientUploadData(");
        sb.append("uploadDataItems:");
        if (this.uploadDataItems == null) {
            sb.append("null");
        } else {
            sb.append(this.uploadDataItems);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.uploadDataItems == null) {
            throw new TProtocolException("Required field 'uploadDataItems' was not present! Struct: " + toString());
        }
    }
}
