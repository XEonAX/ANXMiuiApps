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
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TStruct;

public class LocationInfo implements Serializable, Cloneable, TBase<LocationInfo, Object> {
    private static final TField CELL_LIST_FIELD_DESC = new TField("", (byte) 15, (short) 2);
    private static final TField GPS_FIELD_DESC = new TField("", (byte) 12, (short) 3);
    private static final TStruct STRUCT_DESC = new TStruct("LocationInfo");
    private static final TField WIFI_LIST_FIELD_DESC = new TField("", (byte) 15, (short) 1);
    public List<Cellular> cellList;
    public GPS gps;
    public List<Wifi> wifiList;

    public LocationInfo setWifiList(List<Wifi> wifiList) {
        this.wifiList = wifiList;
        return this;
    }

    public boolean isSetWifiList() {
        return this.wifiList != null;
    }

    public LocationInfo setCellList(List<Cellular> cellList) {
        this.cellList = cellList;
        return this;
    }

    public boolean isSetCellList() {
        return this.cellList != null;
    }

    public GPS getGps() {
        return this.gps;
    }

    public LocationInfo setGps(GPS gps) {
        this.gps = gps;
        return this;
    }

    public boolean isSetGps() {
        return this.gps != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof LocationInfo)) {
            return equals((LocationInfo) that);
        }
        return false;
    }

    public boolean equals(LocationInfo that) {
        if (that == null) {
            return false;
        }
        boolean this_present_wifiList = isSetWifiList();
        boolean that_present_wifiList = that.isSetWifiList();
        if ((this_present_wifiList || that_present_wifiList) && (!this_present_wifiList || !that_present_wifiList || !this.wifiList.equals(that.wifiList))) {
            return false;
        }
        boolean this_present_cellList = isSetCellList();
        boolean that_present_cellList = that.isSetCellList();
        if ((this_present_cellList || that_present_cellList) && (!this_present_cellList || !that_present_cellList || !this.cellList.equals(that.cellList))) {
            return false;
        }
        boolean this_present_gps = isSetGps();
        boolean that_present_gps = that.isSetGps();
        if ((this_present_gps || that_present_gps) && (!this_present_gps || !that_present_gps || !this.gps.equals(that.gps))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(LocationInfo other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        LocationInfo typedOther = other;
        int lastComparison = Boolean.valueOf(isSetWifiList()).compareTo(Boolean.valueOf(typedOther.isSetWifiList()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetWifiList()) {
            lastComparison = TBaseHelper.compareTo(this.wifiList, typedOther.wifiList);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCellList()).compareTo(Boolean.valueOf(typedOther.isSetCellList()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCellList()) {
            lastComparison = TBaseHelper.compareTo(this.cellList, typedOther.cellList);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetGps()).compareTo(Boolean.valueOf(typedOther.isSetGps()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetGps()) {
            lastComparison = TBaseHelper.compareTo(this.gps, typedOther.gps);
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
                    TList _list13 = iprot.readListBegin();
                    this.wifiList = new ArrayList(_list13.size);
                    for (int _i14 = 0; _i14 < _list13.size; _i14++) {
                        Wifi _elem15 = new Wifi();
                        _elem15.read(iprot);
                        this.wifiList.add(_elem15);
                    }
                    iprot.readListEnd();
                    break;
                case (short) 2:
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list16 = iprot.readListBegin();
                    this.cellList = new ArrayList(_list16.size);
                    for (int _i17 = 0; _i17 < _list16.size; _i17++) {
                        Cellular _elem18 = new Cellular();
                        _elem18.read(iprot);
                        this.cellList.add(_elem18);
                    }
                    iprot.readListEnd();
                    break;
                case (short) 3:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.gps = new GPS();
                    this.gps.read(iprot);
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
        if (this.wifiList != null && isSetWifiList()) {
            oprot.writeFieldBegin(WIFI_LIST_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.wifiList.size()));
            for (Wifi _iter19 : this.wifiList) {
                _iter19.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        if (this.cellList != null && isSetCellList()) {
            oprot.writeFieldBegin(CELL_LIST_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.cellList.size()));
            for (Cellular _iter20 : this.cellList) {
                _iter20.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        if (this.gps != null && isSetGps()) {
            oprot.writeFieldBegin(GPS_FIELD_DESC);
            this.gps.write(oprot);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationInfo(");
        boolean first = true;
        if (isSetWifiList()) {
            sb.append("wifiList:");
            if (this.wifiList == null) {
                sb.append("null");
            } else {
                sb.append(this.wifiList);
            }
            first = false;
        }
        if (isSetCellList()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("cellList:");
            if (this.cellList == null) {
                sb.append("null");
            } else {
                sb.append(this.cellList);
            }
            first = false;
        }
        if (isSetGps()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("gps:");
            if (this.gps == null) {
                sb.append("null");
            } else {
                sb.append(this.gps);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
    }
}
