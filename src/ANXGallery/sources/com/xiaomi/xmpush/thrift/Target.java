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

public class Target implements Serializable, Cloneable, TBase<Target, Object> {
    private static final TField CHANNEL_ID_FIELD_DESC = new TField("", (byte) 10, (short) 1);
    private static final TField IS_PREVIEW_FIELD_DESC = new TField("", (byte) 2, (short) 5);
    private static final TField RESOURCE_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField SERVER_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TStruct STRUCT_DESC = new TStruct("Target");
    private static final TField TOKEN_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField USER_ID_FIELD_DESC = new TField("", (byte) 11, (short) 2);
    private BitSet __isset_bit_vector = new BitSet(2);
    public long channelId = 5;
    public boolean isPreview = false;
    public String resource = "";
    public String server = "xiaomi.com";
    public String token;
    public String userId;

    public boolean isSetChannelId() {
        return this.__isset_bit_vector.get(0);
    }

    public void setChannelIdIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetUserId() {
        return this.userId != null;
    }

    public boolean isSetServer() {
        return this.server != null;
    }

    public boolean isSetResource() {
        return this.resource != null;
    }

    public boolean isSetIsPreview() {
        return this.__isset_bit_vector.get(1);
    }

    public void setIsPreviewIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetToken() {
        return this.token != null;
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof Target)) {
            return equals((Target) that);
        }
        return false;
    }

    public boolean equals(Target that) {
        if (that == null) {
            return false;
        }
        if (!(1 == null && 1 == null)) {
            if (1 == null || 1 == null) {
                return false;
            }
            if (this.channelId != that.channelId) {
                return false;
            }
        }
        boolean this_present_userId = isSetUserId();
        boolean that_present_userId = that.isSetUserId();
        if (this_present_userId || that_present_userId) {
            if (!this_present_userId || !that_present_userId) {
                return false;
            }
            if (!this.userId.equals(that.userId)) {
                return false;
            }
        }
        boolean this_present_server = isSetServer();
        boolean that_present_server = that.isSetServer();
        if (this_present_server || that_present_server) {
            if (!this_present_server || !that_present_server) {
                return false;
            }
            if (!this.server.equals(that.server)) {
                return false;
            }
        }
        boolean this_present_resource = isSetResource();
        boolean that_present_resource = that.isSetResource();
        if (this_present_resource || that_present_resource) {
            if (!this_present_resource || !that_present_resource) {
                return false;
            }
            if (!this.resource.equals(that.resource)) {
                return false;
            }
        }
        boolean this_present_isPreview = isSetIsPreview();
        boolean that_present_isPreview = that.isSetIsPreview();
        if (this_present_isPreview || that_present_isPreview) {
            if (!this_present_isPreview || !that_present_isPreview) {
                return false;
            }
            if (this.isPreview != that.isPreview) {
                return false;
            }
        }
        boolean this_present_token = isSetToken();
        boolean that_present_token = that.isSetToken();
        if (this_present_token || that_present_token) {
            if (!this_present_token || !that_present_token) {
                return false;
            }
            if (!this.token.equals(that.token)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(Target other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        Target typedOther = other;
        int lastComparison = Boolean.valueOf(isSetChannelId()).compareTo(Boolean.valueOf(typedOther.isSetChannelId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetChannelId()) {
            lastComparison = TBaseHelper.compareTo(this.channelId, typedOther.channelId);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetUserId()).compareTo(Boolean.valueOf(typedOther.isSetUserId()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUserId()) {
            lastComparison = TBaseHelper.compareTo(this.userId, typedOther.userId);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetServer()).compareTo(Boolean.valueOf(typedOther.isSetServer()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetServer()) {
            lastComparison = TBaseHelper.compareTo(this.server, typedOther.server);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetResource()).compareTo(Boolean.valueOf(typedOther.isSetResource()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetResource()) {
            lastComparison = TBaseHelper.compareTo(this.resource, typedOther.resource);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetIsPreview()).compareTo(Boolean.valueOf(typedOther.isSetIsPreview()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetIsPreview()) {
            lastComparison = TBaseHelper.compareTo(this.isPreview, typedOther.isPreview);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetToken()).compareTo(Boolean.valueOf(typedOther.isSetToken()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetToken()) {
            lastComparison = TBaseHelper.compareTo(this.token, typedOther.token);
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
                if (isSetChannelId()) {
                    validate();
                    return;
                }
                throw new TProtocolException("Required field 'channelId' was not found in serialized data! Struct: " + toString());
            }
            switch (field.id) {
                case (short) 1:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.channelId = iprot.readI64();
                    setChannelIdIsSet(true);
                    break;
                case (short) 2:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.userId = iprot.readString();
                        break;
                    }
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.server = iprot.readString();
                        break;
                    }
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.resource = iprot.readString();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.isPreview = iprot.readBool();
                    setIsPreviewIsSet(true);
                    break;
                case (short) 7:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.token = iprot.readString();
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
        oprot.writeFieldBegin(CHANNEL_ID_FIELD_DESC);
        oprot.writeI64(this.channelId);
        oprot.writeFieldEnd();
        if (this.userId != null) {
            oprot.writeFieldBegin(USER_ID_FIELD_DESC);
            oprot.writeString(this.userId);
            oprot.writeFieldEnd();
        }
        if (this.server != null && isSetServer()) {
            oprot.writeFieldBegin(SERVER_FIELD_DESC);
            oprot.writeString(this.server);
            oprot.writeFieldEnd();
        }
        if (this.resource != null && isSetResource()) {
            oprot.writeFieldBegin(RESOURCE_FIELD_DESC);
            oprot.writeString(this.resource);
            oprot.writeFieldEnd();
        }
        if (isSetIsPreview()) {
            oprot.writeFieldBegin(IS_PREVIEW_FIELD_DESC);
            oprot.writeBool(this.isPreview);
            oprot.writeFieldEnd();
        }
        if (this.token != null && isSetToken()) {
            oprot.writeFieldBegin(TOKEN_FIELD_DESC);
            oprot.writeString(this.token);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Target(");
        sb.append("channelId:");
        sb.append(this.channelId);
        if (!false) {
            sb.append(", ");
        }
        sb.append("userId:");
        if (this.userId == null) {
            sb.append("null");
        } else {
            sb.append(this.userId);
        }
        boolean first = false;
        if (isSetServer()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("server:");
            if (this.server == null) {
                sb.append("null");
            } else {
                sb.append(this.server);
            }
            first = false;
        }
        if (isSetResource()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("resource:");
            if (this.resource == null) {
                sb.append("null");
            } else {
                sb.append(this.resource);
            }
            first = false;
        }
        if (isSetIsPreview()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("isPreview:");
            sb.append(this.isPreview);
            first = false;
        }
        if (isSetToken()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("token:");
            if (this.token == null) {
                sb.append("null");
            } else {
                sb.append(this.token);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.userId == null) {
            throw new TProtocolException("Required field 'userId' was not present! Struct: " + toString());
        }
    }
}
