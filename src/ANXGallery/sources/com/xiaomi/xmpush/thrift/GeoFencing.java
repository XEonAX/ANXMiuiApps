package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
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

public class GeoFencing implements Serializable, Cloneable, TBase<GeoFencing, Object> {
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 10, (short) 3);
    private static final TField CIRCLE_CENTER_FIELD_DESC = new TField("", (byte) 12, (short) 7);
    private static final TField CIRCLE_RADIUS_FIELD_DESC = new TField("", (byte) 4, (short) 9);
    private static final TField COORDINATE_PROVIDER_FIELD_DESC = new TField("", (byte) 8, (short) 11);
    private static final TField CREATE_TIME_FIELD_DESC = new TField("", (byte) 10, (short) 5);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 1);
    private static final TField NAME_FIELD_DESC = new TField("", (byte) 11, (short) 2);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField POLYGON_POINTS_FIELD_DESC = new TField("", (byte) 15, (short) 10);
    private static final TStruct STRUCT_DESC = new TStruct("GeoFencing");
    private static final TField TYPE_FIELD_DESC = new TField("", (byte) 8, (short) 6);
    private BitSet __isset_bit_vector = new BitSet(3);
    public long appId;
    public Location circleCenter;
    public double circleRadius;
    public CoordinateProvider coordinateProvider;
    public long createTime;
    public String id;
    public String name;
    public String packageName;
    public List<Location> polygonPoints;
    public GeoType type;

    public String getId() {
        return this.id;
    }

    public GeoFencing setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public String getName() {
        return this.name;
    }

    public GeoFencing setName(String name) {
        this.name = name;
        return this;
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public long getAppId() {
        return this.appId;
    }

    public GeoFencing setAppId(long appId) {
        this.appId = appId;
        setAppIdIsSet(true);
        return this;
    }

    public boolean isSetAppId() {
        return this.__isset_bit_vector.get(0);
    }

    public void setAppIdIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public String getPackageName() {
        return this.packageName;
    }

    public GeoFencing setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public GeoFencing setCreateTime(long createTime) {
        this.createTime = createTime;
        setCreateTimeIsSet(true);
        return this;
    }

    public boolean isSetCreateTime() {
        return this.__isset_bit_vector.get(1);
    }

    public void setCreateTimeIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public GeoType getType() {
        return this.type;
    }

    public GeoFencing setType(GeoType type) {
        this.type = type;
        return this;
    }

    public boolean isSetType() {
        return this.type != null;
    }

    public Location getCircleCenter() {
        return this.circleCenter;
    }

    public GeoFencing setCircleCenter(Location circleCenter) {
        this.circleCenter = circleCenter;
        return this;
    }

    public boolean isSetCircleCenter() {
        return this.circleCenter != null;
    }

    public double getCircleRadius() {
        return this.circleRadius;
    }

    public GeoFencing setCircleRadius(double circleRadius) {
        this.circleRadius = circleRadius;
        setCircleRadiusIsSet(true);
        return this;
    }

    public boolean isSetCircleRadius() {
        return this.__isset_bit_vector.get(2);
    }

    public void setCircleRadiusIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public List<Location> getPolygonPoints() {
        return this.polygonPoints;
    }

    public GeoFencing setPolygonPoints(List<Location> polygonPoints) {
        this.polygonPoints = polygonPoints;
        return this;
    }

    public boolean isSetPolygonPoints() {
        return this.polygonPoints != null;
    }

    public CoordinateProvider getCoordinateProvider() {
        return this.coordinateProvider;
    }

    public GeoFencing setCoordinateProvider(CoordinateProvider coordinateProvider) {
        this.coordinateProvider = coordinateProvider;
        return this;
    }

    public boolean isSetCoordinateProvider() {
        return this.coordinateProvider != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof GeoFencing)) {
            return equals((GeoFencing) that);
        }
        return false;
    }

    public boolean equals(GeoFencing that) {
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
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.appId != that.appId) {
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
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.createTime != that.createTime) {
                return false;
            }
        }
        boolean this_present_type = isSetType();
        boolean that_present_type = that.isSetType();
        if (this_present_type || that_present_type) {
            if (!this_present_type || !that_present_type) {
                return false;
            }
            if (!this.type.equals(that.type)) {
                return false;
            }
        }
        boolean this_present_circleCenter = isSetCircleCenter();
        boolean that_present_circleCenter = that.isSetCircleCenter();
        if (this_present_circleCenter || that_present_circleCenter) {
            if (!this_present_circleCenter || !that_present_circleCenter) {
                return false;
            }
            if (!this.circleCenter.equals(that.circleCenter)) {
                return false;
            }
        }
        boolean this_present_circleRadius = isSetCircleRadius();
        boolean that_present_circleRadius = that.isSetCircleRadius();
        if (this_present_circleRadius || that_present_circleRadius) {
            if (!this_present_circleRadius || !that_present_circleRadius) {
                return false;
            }
            if (this.circleRadius != that.circleRadius) {
                return false;
            }
        }
        boolean this_present_polygonPoints = isSetPolygonPoints();
        boolean that_present_polygonPoints = that.isSetPolygonPoints();
        if (this_present_polygonPoints || that_present_polygonPoints) {
            if (!this_present_polygonPoints || !that_present_polygonPoints) {
                return false;
            }
            if (!this.polygonPoints.equals(that.polygonPoints)) {
                return false;
            }
        }
        boolean this_present_coordinateProvider = isSetCoordinateProvider();
        boolean that_present_coordinateProvider = that.isSetCoordinateProvider();
        if (this_present_coordinateProvider || that_present_coordinateProvider) {
            if (!this_present_coordinateProvider || !that_present_coordinateProvider) {
                return false;
            }
            if (!this.coordinateProvider.equals(that.coordinateProvider)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(GeoFencing other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        GeoFencing typedOther = other;
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
        lastComparison = Boolean.valueOf(isSetCreateTime()).compareTo(Boolean.valueOf(typedOther.isSetCreateTime()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCreateTime()) {
            lastComparison = TBaseHelper.compareTo(this.createTime, typedOther.createTime);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetType()).compareTo(Boolean.valueOf(typedOther.isSetType()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetType()) {
            lastComparison = TBaseHelper.compareTo(this.type, typedOther.type);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCircleCenter()).compareTo(Boolean.valueOf(typedOther.isSetCircleCenter()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCircleCenter()) {
            lastComparison = TBaseHelper.compareTo(this.circleCenter, typedOther.circleCenter);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCircleRadius()).compareTo(Boolean.valueOf(typedOther.isSetCircleRadius()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCircleRadius()) {
            lastComparison = TBaseHelper.compareTo(this.circleRadius, typedOther.circleRadius);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetPolygonPoints()).compareTo(Boolean.valueOf(typedOther.isSetPolygonPoints()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetPolygonPoints()) {
            lastComparison = TBaseHelper.compareTo(this.polygonPoints, typedOther.polygonPoints);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCoordinateProvider()).compareTo(Boolean.valueOf(typedOther.isSetCoordinateProvider()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCoordinateProvider()) {
            lastComparison = TBaseHelper.compareTo(this.coordinateProvider, typedOther.coordinateProvider);
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
                if (!isSetAppId()) {
                    throw new TProtocolException("Required field 'appId' was not found in serialized data! Struct: " + toString());
                } else if (isSetCreateTime()) {
                    validate();
                    return;
                } else {
                    throw new TProtocolException("Required field 'createTime' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.id = iprot.readString();
                        break;
                    }
                case (short) 2:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.name = iprot.readString();
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.appId = iprot.readI64();
                    setAppIdIsSet(true);
                    break;
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.packageName = iprot.readString();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.createTime = iprot.readI64();
                    setCreateTimeIsSet(true);
                    break;
                case (short) 6:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.type = GeoType.findByValue(iprot.readI32());
                        break;
                    }
                case (short) 7:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.circleCenter = new Location();
                    this.circleCenter.read(iprot);
                    break;
                case (short) 9:
                    if (field.type != (byte) 4) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.circleRadius = iprot.readDouble();
                    setCircleRadiusIsSet(true);
                    break;
                case (short) 10:
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list9 = iprot.readListBegin();
                    this.polygonPoints = new ArrayList(_list9.size);
                    for (int _i10 = 0; _i10 < _list9.size; _i10++) {
                        Location _elem11 = new Location();
                        _elem11.read(iprot);
                        this.polygonPoints.add(_elem11);
                    }
                    iprot.readListEnd();
                    break;
                case (short) 11:
                    if (field.type != (byte) 8) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.coordinateProvider = CoordinateProvider.findByValue(iprot.readI32());
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
        if (this.id != null) {
            oprot.writeFieldBegin(ID_FIELD_DESC);
            oprot.writeString(this.id);
            oprot.writeFieldEnd();
        }
        if (this.name != null) {
            oprot.writeFieldBegin(NAME_FIELD_DESC);
            oprot.writeString(this.name);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldBegin(APP_ID_FIELD_DESC);
        oprot.writeI64(this.appId);
        oprot.writeFieldEnd();
        if (this.packageName != null) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldBegin(CREATE_TIME_FIELD_DESC);
        oprot.writeI64(this.createTime);
        oprot.writeFieldEnd();
        if (this.type != null) {
            oprot.writeFieldBegin(TYPE_FIELD_DESC);
            oprot.writeI32(this.type.getValue());
            oprot.writeFieldEnd();
        }
        if (this.circleCenter != null && isSetCircleCenter()) {
            oprot.writeFieldBegin(CIRCLE_CENTER_FIELD_DESC);
            this.circleCenter.write(oprot);
            oprot.writeFieldEnd();
        }
        if (isSetCircleRadius()) {
            oprot.writeFieldBegin(CIRCLE_RADIUS_FIELD_DESC);
            oprot.writeDouble(this.circleRadius);
            oprot.writeFieldEnd();
        }
        if (this.polygonPoints != null && isSetPolygonPoints()) {
            oprot.writeFieldBegin(POLYGON_POINTS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 12, this.polygonPoints.size()));
            for (Location _iter12 : this.polygonPoints) {
                _iter12.write(oprot);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        if (this.coordinateProvider != null) {
            oprot.writeFieldBegin(COORDINATE_PROVIDER_FIELD_DESC);
            oprot.writeI32(this.coordinateProvider.getValue());
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GeoFencing(");
        sb.append("id:");
        if (this.id == null) {
            sb.append("null");
        } else {
            sb.append(this.id);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("name:");
        if (this.name == null) {
            sb.append("null");
        } else {
            sb.append(this.name);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("appId:");
        sb.append(this.appId);
        if (!false) {
            sb.append(", ");
        }
        sb.append("packageName:");
        if (this.packageName == null) {
            sb.append("null");
        } else {
            sb.append(this.packageName);
        }
        if (!false) {
            sb.append(", ");
        }
        sb.append("createTime:");
        sb.append(this.createTime);
        if (!false) {
            sb.append(", ");
        }
        sb.append("type:");
        if (this.type == null) {
            sb.append("null");
        } else {
            sb.append(this.type);
        }
        boolean first = false;
        if (isSetCircleCenter()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("circleCenter:");
            if (this.circleCenter == null) {
                sb.append("null");
            } else {
                sb.append(this.circleCenter);
            }
            first = false;
        }
        if (isSetCircleRadius()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("circleRadius:");
            sb.append(this.circleRadius);
            first = false;
        }
        if (isSetPolygonPoints()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("polygonPoints:");
            if (this.polygonPoints == null) {
                sb.append("null");
            } else {
                sb.append(this.polygonPoints);
            }
            first = false;
        }
        if (!first) {
            sb.append(", ");
        }
        sb.append("coordinateProvider:");
        if (this.coordinateProvider == null) {
            sb.append("null");
        } else {
            sb.append(this.coordinateProvider);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.id == null) {
            throw new TProtocolException("Required field 'id' was not present! Struct: " + toString());
        } else if (this.name == null) {
            throw new TProtocolException("Required field 'name' was not present! Struct: " + toString());
        } else if (this.packageName == null) {
            throw new TProtocolException("Required field 'packageName' was not present! Struct: " + toString());
        } else if (this.type == null) {
            throw new TProtocolException("Required field 'type' was not present! Struct: " + toString());
        } else if (this.coordinateProvider == null) {
            throw new TProtocolException("Required field 'coordinateProvider' was not present! Struct: " + toString());
        }
    }
}
