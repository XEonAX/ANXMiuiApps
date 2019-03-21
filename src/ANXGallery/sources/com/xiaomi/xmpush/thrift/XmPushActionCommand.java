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

public class XmPushActionCommand implements Serializable, Cloneable, TBase<XmPushActionCommand, Object> {
    private static final TField APP_ID_FIELD_DESC = new TField("", (byte) 11, (short) 4);
    private static final TField CATEGORY_FIELD_DESC = new TField("", (byte) 11, (short) 9);
    private static final TField CMD_ARGS_FIELD_DESC = new TField("", (byte) 15, (short) 6);
    private static final TField CMD_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 5);
    private static final TField CREATED_TS_FIELD_DESC = new TField("", (byte) 10, (short) 12);
    private static final TField ID_FIELD_DESC = new TField("", (byte) 11, (short) 3);
    private static final TField PACKAGE_NAME_FIELD_DESC = new TField("", (byte) 11, (short) 7);
    private static final TField RESPONSE2_CLIENT_FIELD_DESC = new TField("", (byte) 2, (short) 11);
    private static final TStruct STRUCT_DESC = new TStruct("XmPushActionCommand");
    private static final TField TARGET_FIELD_DESC = new TField("", (byte) 12, (short) 2);
    private static final TField UPDATE_CACHE_FIELD_DESC = new TField("", (byte) 2, (short) 10);
    private BitSet __isset_bit_vector = new BitSet(3);
    public String appId;
    public String category;
    public List<String> cmdArgs;
    public String cmdName;
    public long createdTs;
    public String id;
    public String packageName;
    public boolean response2Client = true;
    public Target target;
    public boolean updateCache = false;

    public boolean isSetTarget() {
        return this.target != null;
    }

    public XmPushActionCommand setId(String id) {
        this.id = id;
        return this;
    }

    public boolean isSetId() {
        return this.id != null;
    }

    public XmPushActionCommand setAppId(String appId) {
        this.appId = appId;
        return this;
    }

    public boolean isSetAppId() {
        return this.appId != null;
    }

    public String getCmdName() {
        return this.cmdName;
    }

    public XmPushActionCommand setCmdName(String cmdName) {
        this.cmdName = cmdName;
        return this;
    }

    public boolean isSetCmdName() {
        return this.cmdName != null;
    }

    public void addToCmdArgs(String elem) {
        if (this.cmdArgs == null) {
            this.cmdArgs = new ArrayList();
        }
        this.cmdArgs.add(elem);
    }

    public XmPushActionCommand setCmdArgs(List<String> cmdArgs) {
        this.cmdArgs = cmdArgs;
        return this;
    }

    public boolean isSetCmdArgs() {
        return this.cmdArgs != null;
    }

    public XmPushActionCommand setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public boolean isSetPackageName() {
        return this.packageName != null;
    }

    public XmPushActionCommand setCategory(String category) {
        this.category = category;
        return this;
    }

    public boolean isSetCategory() {
        return this.category != null;
    }

    public boolean isSetUpdateCache() {
        return this.__isset_bit_vector.get(0);
    }

    public void setUpdateCacheIsSet(boolean value) {
        this.__isset_bit_vector.set(0, value);
    }

    public boolean isSetResponse2Client() {
        return this.__isset_bit_vector.get(1);
    }

    public void setResponse2ClientIsSet(boolean value) {
        this.__isset_bit_vector.set(1, value);
    }

    public boolean isSetCreatedTs() {
        return this.__isset_bit_vector.get(2);
    }

    public void setCreatedTsIsSet(boolean value) {
        this.__isset_bit_vector.set(2, value);
    }

    public boolean equals(Object that) {
        if (that != null && (that instanceof XmPushActionCommand)) {
            return equals((XmPushActionCommand) that);
        }
        return false;
    }

    public boolean equals(XmPushActionCommand that) {
        if (that == null) {
            return false;
        }
        boolean this_present_target = isSetTarget();
        boolean that_present_target = that.isSetTarget();
        if (this_present_target || that_present_target) {
            if (!this_present_target || !that_present_target) {
                return false;
            }
            if (!this.target.equals(that.target)) {
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
        boolean this_present_cmdName = isSetCmdName();
        boolean that_present_cmdName = that.isSetCmdName();
        if (this_present_cmdName || that_present_cmdName) {
            if (!this_present_cmdName || !that_present_cmdName) {
                return false;
            }
            if (!this.cmdName.equals(that.cmdName)) {
                return false;
            }
        }
        boolean this_present_cmdArgs = isSetCmdArgs();
        boolean that_present_cmdArgs = that.isSetCmdArgs();
        if (this_present_cmdArgs || that_present_cmdArgs) {
            if (!this_present_cmdArgs || !that_present_cmdArgs) {
                return false;
            }
            if (!this.cmdArgs.equals(that.cmdArgs)) {
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
        boolean this_present_updateCache = isSetUpdateCache();
        boolean that_present_updateCache = that.isSetUpdateCache();
        if (this_present_updateCache || that_present_updateCache) {
            if (!this_present_updateCache || !that_present_updateCache) {
                return false;
            }
            if (this.updateCache != that.updateCache) {
                return false;
            }
        }
        boolean this_present_response2Client = isSetResponse2Client();
        boolean that_present_response2Client = that.isSetResponse2Client();
        if (this_present_response2Client || that_present_response2Client) {
            if (!this_present_response2Client || !that_present_response2Client) {
                return false;
            }
            if (this.response2Client != that.response2Client) {
                return false;
            }
        }
        boolean this_present_createdTs = isSetCreatedTs();
        boolean that_present_createdTs = that.isSetCreatedTs();
        if (this_present_createdTs || that_present_createdTs) {
            if (!this_present_createdTs || !that_present_createdTs) {
                return false;
            }
            if (this.createdTs != that.createdTs) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return 0;
    }

    public int compareTo(XmPushActionCommand other) {
        if (!getClass().equals(other.getClass())) {
            return getClass().getName().compareTo(other.getClass().getName());
        }
        XmPushActionCommand typedOther = other;
        int lastComparison = Boolean.valueOf(isSetTarget()).compareTo(Boolean.valueOf(typedOther.isSetTarget()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetTarget()) {
            lastComparison = TBaseHelper.compareTo(this.target, typedOther.target);
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
        lastComparison = Boolean.valueOf(isSetCmdName()).compareTo(Boolean.valueOf(typedOther.isSetCmdName()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCmdName()) {
            lastComparison = TBaseHelper.compareTo(this.cmdName, typedOther.cmdName);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCmdArgs()).compareTo(Boolean.valueOf(typedOther.isSetCmdArgs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCmdArgs()) {
            lastComparison = TBaseHelper.compareTo(this.cmdArgs, typedOther.cmdArgs);
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
        lastComparison = Boolean.valueOf(isSetUpdateCache()).compareTo(Boolean.valueOf(typedOther.isSetUpdateCache()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetUpdateCache()) {
            lastComparison = TBaseHelper.compareTo(this.updateCache, typedOther.updateCache);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetResponse2Client()).compareTo(Boolean.valueOf(typedOther.isSetResponse2Client()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetResponse2Client()) {
            lastComparison = TBaseHelper.compareTo(this.response2Client, typedOther.response2Client);
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        lastComparison = Boolean.valueOf(isSetCreatedTs()).compareTo(Boolean.valueOf(typedOther.isSetCreatedTs()));
        if (lastComparison != 0) {
            return lastComparison;
        }
        if (isSetCreatedTs()) {
            lastComparison = TBaseHelper.compareTo(this.createdTs, typedOther.createdTs);
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
                case (short) 2:
                    if (field.type != (byte) 12) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.target = new Target();
                    this.target.read(iprot);
                    break;
                case (short) 3:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.id = iprot.readString();
                        break;
                    }
                case (short) 4:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.appId = iprot.readString();
                        break;
                    }
                case (short) 5:
                    if (field.type != (byte) 11) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    } else {
                        this.cmdName = iprot.readString();
                        break;
                    }
                case (short) 6:
                    if (field.type != (byte) 15) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    TList _list63 = iprot.readListBegin();
                    this.cmdArgs = new ArrayList(_list63.size);
                    for (int _i64 = 0; _i64 < _list63.size; _i64++) {
                        this.cmdArgs.add(iprot.readString());
                    }
                    iprot.readListEnd();
                    break;
                case (short) 7:
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
                        this.category = iprot.readString();
                        break;
                    }
                case (short) 10:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.updateCache = iprot.readBool();
                    setUpdateCacheIsSet(true);
                    break;
                case (short) 11:
                    if (field.type != (byte) 2) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.response2Client = iprot.readBool();
                    setResponse2ClientIsSet(true);
                    break;
                case (short) 12:
                    if (field.type != (byte) 10) {
                        TProtocolUtil.skip(iprot, field.type);
                        break;
                    }
                    this.createdTs = iprot.readI64();
                    setCreatedTsIsSet(true);
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
        if (this.target != null && isSetTarget()) {
            oprot.writeFieldBegin(TARGET_FIELD_DESC);
            this.target.write(oprot);
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
        if (this.cmdName != null) {
            oprot.writeFieldBegin(CMD_NAME_FIELD_DESC);
            oprot.writeString(this.cmdName);
            oprot.writeFieldEnd();
        }
        if (this.cmdArgs != null && isSetCmdArgs()) {
            oprot.writeFieldBegin(CMD_ARGS_FIELD_DESC);
            oprot.writeListBegin(new TList((byte) 11, this.cmdArgs.size()));
            for (String _iter66 : this.cmdArgs) {
                oprot.writeString(_iter66);
            }
            oprot.writeListEnd();
            oprot.writeFieldEnd();
        }
        if (this.packageName != null && isSetPackageName()) {
            oprot.writeFieldBegin(PACKAGE_NAME_FIELD_DESC);
            oprot.writeString(this.packageName);
            oprot.writeFieldEnd();
        }
        if (this.category != null && isSetCategory()) {
            oprot.writeFieldBegin(CATEGORY_FIELD_DESC);
            oprot.writeString(this.category);
            oprot.writeFieldEnd();
        }
        if (isSetUpdateCache()) {
            oprot.writeFieldBegin(UPDATE_CACHE_FIELD_DESC);
            oprot.writeBool(this.updateCache);
            oprot.writeFieldEnd();
        }
        if (isSetResponse2Client()) {
            oprot.writeFieldBegin(RESPONSE2_CLIENT_FIELD_DESC);
            oprot.writeBool(this.response2Client);
            oprot.writeFieldEnd();
        }
        if (isSetCreatedTs()) {
            oprot.writeFieldBegin(CREATED_TS_FIELD_DESC);
            oprot.writeI64(this.createdTs);
            oprot.writeFieldEnd();
        }
        oprot.writeFieldStop();
        oprot.writeStructEnd();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCommand(");
        boolean first = true;
        if (isSetTarget()) {
            sb.append("target:");
            if (this.target == null) {
                sb.append("null");
            } else {
                sb.append(this.target);
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
        sb.append("cmdName:");
        if (this.cmdName == null) {
            sb.append("null");
        } else {
            sb.append(this.cmdName);
        }
        first = false;
        if (isSetCmdArgs()) {
            if (null == null) {
                sb.append(", ");
            }
            sb.append("cmdArgs:");
            if (this.cmdArgs == null) {
                sb.append("null");
            } else {
                sb.append(this.cmdArgs);
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
        if (isSetUpdateCache()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("updateCache:");
            sb.append(this.updateCache);
            first = false;
        }
        if (isSetResponse2Client()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("response2Client:");
            sb.append(this.response2Client);
            first = false;
        }
        if (isSetCreatedTs()) {
            if (!first) {
                sb.append(", ");
            }
            sb.append("createdTs:");
            sb.append(this.createdTs);
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws TException {
        if (this.id == null) {
            throw new TProtocolException("Required field 'id' was not present! Struct: " + toString());
        } else if (this.appId == null) {
            throw new TProtocolException("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.cmdName == null) {
            throw new TProtocolException("Required field 'cmdName' was not present! Struct: " + toString());
        }
    }
}
