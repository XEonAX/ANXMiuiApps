package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import org.apache.thrift.TBase;
import org.apache.thrift.TBaseHelper;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TField;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.TProtocolUtil;
import org.apache.thrift.protocol.TSet;
import org.apache.thrift.protocol.TStruct;

public class RegisteredGeoFencing implements Serializable, Cloneable, TBase<RegisteredGeoFencing, Object> {
    private static final TField GEO_FENCINGS_FIELD_DESC = new TField("", (byte) 14, (short) 1);
    private static final TStruct STRUCT_DESC = new TStruct("RegisteredGeoFencing");
    public Set<GeoFencing> geoFencings;

    public Set<GeoFencing> getGeoFencings() {
        return this.geoFencings;
    }

    public RegisteredGeoFencing setGeoFencings(Set<GeoFencing> geoFencings) {
        this.geoFencings = geoFencings;
        return this;
    }

    public boolean isSetGeoFencings() {
        return this.geoFencings != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof RegisteredGeoFencing)) {
            return equals((RegisteredGeoFencing) that);
        }
        return false;
    }

    public boolean equals(RegisteredGeoFencing that) {
        if (that == null) {
            return false;
        }
        boolean this_present_geoFencings = isSetGeoFencings();
        boolean that_present_geoFencings = that.isSetGeoFencings();
        if ((this_present_geoFencings || that_present_geoFencings) && (!this_present_geoFencings || !that_present_geoFencings || !this.geoFencings.equals(that.geoFencings))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(RegisteredGeoFencing other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        RegisteredGeoFencing typedOther = other;
        int lastComparison = Boolean.valueOf(isSetGeoFencings()).compareTo(Boolean.valueOf(typedOther.isSetGeoFencings()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetGeoFencings()) {
            lastComparison = TBaseHelper.compareTo(this.geoFencings, typedOther.geoFencings);
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
                    if (field.type != (byte) 14) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TSet _set40 = iprot.readSetBegin();
                    this.geoFencings = new HashSet(_set40.size * 2);
                    for (int _i41 = 0; _i41 < _set40.size; _i41++) {
                        GeoFencing _elem42 = new GeoFencing();
                        _elem42.read(iprot);
                        this.geoFencings.add(_elem42);
                    }
                    iprot.readSetEnd();
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
        if (this.geoFencings != null) {
            oprot.writeFieldBegin(GEO_FENCINGS_FIELD_DESC);
            oprot.writeSetBegin(new TSet((byte) 12, this.geoFencings.size()));
            for (GeoFencing _iter43 : this.geoFencings) {
                _iter43.write(oprot);
            }
            oprot.writeSetEnd();
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RegisteredGeoFencing(");
        sb.append("geoFencings:");
        if (this.geoFencings == null) {
            sb.append("null");
        } else {
            sb.append(this.geoFencings);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.geoFencings == null) {
            throw new TProtocolException("Required field 'geoFencings' was not present! Struct: " + toString());
        }
    }
}
