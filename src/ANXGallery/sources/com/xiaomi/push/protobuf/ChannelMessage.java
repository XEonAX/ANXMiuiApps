package com.xiaomi.push.protobuf;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.IOException;

public final class ChannelMessage {

    public static final class ClientHeader extends MessageMicro {
        private int cachedSize = -1;
        private int chid_ = 0;
        private int cipher_ = 0;
        private String cmd_ = "";
        private int dirFlag_ = 1;
        private int errCode_ = 0;
        private String errStr_ = "";
        private boolean hasChid;
        private boolean hasCipher;
        private boolean hasCmd;
        private boolean hasDirFlag;
        private boolean hasErrCode;
        private boolean hasErrStr;
        private boolean hasId;
        private boolean hasResource;
        private boolean hasServer;
        private boolean hasSubcmd;
        private boolean hasUuid;
        private String id_ = "";
        private String resource_ = "";
        private String server_ = "";
        private String subcmd_ = "";
        private long uuid_ = 0;

        public int getChid() {
            return this.chid_;
        }

        public boolean hasChid() {
            return this.hasChid;
        }

        public ClientHeader setChid(int value) {
            this.hasChid = true;
            this.chid_ = value;
            return this;
        }

        public long getUuid() {
            return this.uuid_;
        }

        public boolean hasUuid() {
            return this.hasUuid;
        }

        public ClientHeader setUuid(long value) {
            this.hasUuid = true;
            this.uuid_ = value;
            return this;
        }

        public String getServer() {
            return this.server_;
        }

        public boolean hasServer() {
            return this.hasServer;
        }

        public ClientHeader setServer(String value) {
            this.hasServer = true;
            this.server_ = value;
            return this;
        }

        public String getResource() {
            return this.resource_;
        }

        public boolean hasResource() {
            return this.hasResource;
        }

        public ClientHeader setResource(String value) {
            this.hasResource = true;
            this.resource_ = value;
            return this;
        }

        public String getCmd() {
            return this.cmd_;
        }

        public boolean hasCmd() {
            return this.hasCmd;
        }

        public ClientHeader setCmd(String value) {
            this.hasCmd = true;
            this.cmd_ = value;
            return this;
        }

        public String getSubcmd() {
            return this.subcmd_;
        }

        public boolean hasSubcmd() {
            return this.hasSubcmd;
        }

        public ClientHeader setSubcmd(String value) {
            this.hasSubcmd = true;
            this.subcmd_ = value;
            return this;
        }

        public ClientHeader clearSubcmd() {
            this.hasSubcmd = false;
            this.subcmd_ = "";
            return this;
        }

        public String getId() {
            return this.id_;
        }

        public boolean hasId() {
            return this.hasId;
        }

        public ClientHeader setId(String value) {
            this.hasId = true;
            this.id_ = value;
            return this;
        }

        public boolean hasDirFlag() {
            return this.hasDirFlag;
        }

        public int getDirFlag() {
            return this.dirFlag_;
        }

        public ClientHeader setDirFlag(int value) {
            this.hasDirFlag = true;
            this.dirFlag_ = value;
            return this;
        }

        public int getCipher() {
            return this.cipher_;
        }

        public boolean hasCipher() {
            return this.hasCipher;
        }

        public ClientHeader setCipher(int value) {
            this.hasCipher = true;
            this.cipher_ = value;
            return this;
        }

        public int getErrCode() {
            return this.errCode_;
        }

        public boolean hasErrCode() {
            return this.hasErrCode;
        }

        public ClientHeader setErrCode(int value) {
            this.hasErrCode = true;
            this.errCode_ = value;
            return this;
        }

        public String getErrStr() {
            return this.errStr_;
        }

        public boolean hasErrStr() {
            return this.hasErrStr;
        }

        public ClientHeader setErrStr(String value) {
            this.hasErrStr = true;
            this.errStr_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasChid()) {
                output.writeInt32(1, getChid());
            }
            if (hasUuid()) {
                output.writeInt64(2, getUuid());
            }
            if (hasServer()) {
                output.writeString(3, getServer());
            }
            if (hasResource()) {
                output.writeString(4, getResource());
            }
            if (hasCmd()) {
                output.writeString(5, getCmd());
            }
            if (hasSubcmd()) {
                output.writeString(6, getSubcmd());
            }
            if (hasId()) {
                output.writeString(7, getId());
            }
            if (hasDirFlag()) {
                output.writeInt32(8, getDirFlag());
            }
            if (hasCipher()) {
                output.writeInt32(9, getCipher());
            }
            if (hasErrCode()) {
                output.writeInt32(10, getErrCode());
            }
            if (hasErrStr()) {
                output.writeString(11, getErrStr());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasChid()) {
                size = 0 + CodedOutputStreamMicro.computeInt32Size(1, getChid());
            }
            if (hasUuid()) {
                size += CodedOutputStreamMicro.computeInt64Size(2, getUuid());
            }
            if (hasServer()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getServer());
            }
            if (hasResource()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getResource());
            }
            if (hasCmd()) {
                size += CodedOutputStreamMicro.computeStringSize(5, getCmd());
            }
            if (hasSubcmd()) {
                size += CodedOutputStreamMicro.computeStringSize(6, getSubcmd());
            }
            if (hasId()) {
                size += CodedOutputStreamMicro.computeStringSize(7, getId());
            }
            if (hasDirFlag()) {
                size += CodedOutputStreamMicro.computeInt32Size(8, getDirFlag());
            }
            if (hasCipher()) {
                size += CodedOutputStreamMicro.computeInt32Size(9, getCipher());
            }
            if (hasErrCode()) {
                size += CodedOutputStreamMicro.computeInt32Size(10, getErrCode());
            }
            if (hasErrStr()) {
                size += CodedOutputStreamMicro.computeStringSize(11, getErrStr());
            }
            this.cachedSize = size;
            return size;
        }

        public ClientHeader mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        setChid(input.readInt32());
                        continue;
                    case 16:
                        setUuid(input.readInt64());
                        continue;
                    case 26:
                        setServer(input.readString());
                        continue;
                    case 34:
                        setResource(input.readString());
                        continue;
                    case 42:
                        setCmd(input.readString());
                        continue;
                    case 50:
                        setSubcmd(input.readString());
                        continue;
                    case 58:
                        setId(input.readString());
                        continue;
                    case 64:
                        setDirFlag(input.readInt32());
                        continue;
                    case 72:
                        setCipher(input.readInt32());
                        continue;
                    case BaiduSceneResult.SKI /*80*/:
                        setErrCode(input.readInt32());
                        continue;
                    case 90:
                        setErrStr(input.readString());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }
    }

    public static final class PushServiceConfigMsg extends MessageMicro {
        private int cachedSize = -1;
        private int clientVersion_ = 0;
        private int cloudVersion_ = 0;
        private int dots_ = 0;
        private boolean fetchBucket_ = false;
        private boolean hasClientVersion;
        private boolean hasCloudVersion;
        private boolean hasDots;
        private boolean hasFetchBucket;

        public boolean getFetchBucket() {
            return this.fetchBucket_;
        }

        public boolean hasFetchBucket() {
            return this.hasFetchBucket;
        }

        public PushServiceConfigMsg setFetchBucket(boolean value) {
            this.hasFetchBucket = true;
            this.fetchBucket_ = value;
            return this;
        }

        public int getClientVersion() {
            return this.clientVersion_;
        }

        public boolean hasClientVersion() {
            return this.hasClientVersion;
        }

        public PushServiceConfigMsg setClientVersion(int value) {
            this.hasClientVersion = true;
            this.clientVersion_ = value;
            return this;
        }

        public int getCloudVersion() {
            return this.cloudVersion_;
        }

        public boolean hasCloudVersion() {
            return this.hasCloudVersion;
        }

        public PushServiceConfigMsg setCloudVersion(int value) {
            this.hasCloudVersion = true;
            this.cloudVersion_ = value;
            return this;
        }

        public int getDots() {
            return this.dots_;
        }

        public boolean hasDots() {
            return this.hasDots;
        }

        public PushServiceConfigMsg setDots(int value) {
            this.hasDots = true;
            this.dots_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasFetchBucket()) {
                output.writeBool(1, getFetchBucket());
            }
            if (hasClientVersion()) {
                output.writeInt32(3, getClientVersion());
            }
            if (hasCloudVersion()) {
                output.writeInt32(4, getCloudVersion());
            }
            if (hasDots()) {
                output.writeInt32(5, getDots());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasFetchBucket()) {
                size = 0 + CodedOutputStreamMicro.computeBoolSize(1, getFetchBucket());
            }
            if (hasClientVersion()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getClientVersion());
            }
            if (hasCloudVersion()) {
                size += CodedOutputStreamMicro.computeInt32Size(4, getCloudVersion());
            }
            if (hasDots()) {
                size += CodedOutputStreamMicro.computeInt32Size(5, getDots());
            }
            this.cachedSize = size;
            return size;
        }

        public PushServiceConfigMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        setFetchBucket(input.readBool());
                        continue;
                    case 24:
                        setClientVersion(input.readInt32());
                        continue;
                    case 32:
                        setCloudVersion(input.readInt32());
                        continue;
                    case 40:
                        setDots(input.readInt32());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static PushServiceConfigMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (PushServiceConfigMsg) new PushServiceConfigMsg().mergeFrom(data);
        }
    }

    public static final class XMMsgBind extends MessageMicro {
        private int cachedSize = -1;
        private String clientAttrs_ = "";
        private String cloudAttrs_ = "";
        private boolean hasClientAttrs;
        private boolean hasCloudAttrs;
        private boolean hasKick;
        private boolean hasMethod;
        private boolean hasSig;
        private boolean hasToken;
        private String kick_ = "";
        private String method_ = "";
        private String sig_ = "";
        private String token_ = "";

        public String getToken() {
            return this.token_;
        }

        public boolean hasToken() {
            return this.hasToken;
        }

        public XMMsgBind setToken(String value) {
            this.hasToken = true;
            this.token_ = value;
            return this;
        }

        public String getKick() {
            return this.kick_;
        }

        public boolean hasKick() {
            return this.hasKick;
        }

        public XMMsgBind setKick(String value) {
            this.hasKick = true;
            this.kick_ = value;
            return this;
        }

        public String getMethod() {
            return this.method_;
        }

        public boolean hasMethod() {
            return this.hasMethod;
        }

        public XMMsgBind setMethod(String value) {
            this.hasMethod = true;
            this.method_ = value;
            return this;
        }

        public String getClientAttrs() {
            return this.clientAttrs_;
        }

        public boolean hasClientAttrs() {
            return this.hasClientAttrs;
        }

        public XMMsgBind setClientAttrs(String value) {
            this.hasClientAttrs = true;
            this.clientAttrs_ = value;
            return this;
        }

        public String getCloudAttrs() {
            return this.cloudAttrs_;
        }

        public boolean hasCloudAttrs() {
            return this.hasCloudAttrs;
        }

        public XMMsgBind setCloudAttrs(String value) {
            this.hasCloudAttrs = true;
            this.cloudAttrs_ = value;
            return this;
        }

        public String getSig() {
            return this.sig_;
        }

        public boolean hasSig() {
            return this.hasSig;
        }

        public XMMsgBind setSig(String value) {
            this.hasSig = true;
            this.sig_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasToken()) {
                output.writeString(1, getToken());
            }
            if (hasKick()) {
                output.writeString(2, getKick());
            }
            if (hasMethod()) {
                output.writeString(3, getMethod());
            }
            if (hasClientAttrs()) {
                output.writeString(4, getClientAttrs());
            }
            if (hasCloudAttrs()) {
                output.writeString(5, getCloudAttrs());
            }
            if (hasSig()) {
                output.writeString(6, getSig());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasToken()) {
                size = 0 + CodedOutputStreamMicro.computeStringSize(1, getToken());
            }
            if (hasKick()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getKick());
            }
            if (hasMethod()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getMethod());
            }
            if (hasClientAttrs()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getClientAttrs());
            }
            if (hasCloudAttrs()) {
                size += CodedOutputStreamMicro.computeStringSize(5, getCloudAttrs());
            }
            if (hasSig()) {
                size += CodedOutputStreamMicro.computeStringSize(6, getSig());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgBind mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        setToken(input.readString());
                        continue;
                    case 18:
                        setKick(input.readString());
                        continue;
                    case 26:
                        setMethod(input.readString());
                        continue;
                    case 34:
                        setClientAttrs(input.readString());
                        continue;
                    case 42:
                        setCloudAttrs(input.readString());
                        continue;
                    case 50:
                        setSig(input.readString());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }
    }

    public static final class XMMsgBindResp extends MessageMicro {
        private int cachedSize = -1;
        private String errorDesc_ = "";
        private String errorReason_ = "";
        private String errorType_ = "";
        private boolean hasErrorDesc;
        private boolean hasErrorReason;
        private boolean hasErrorType;
        private boolean hasResult;
        private boolean result_ = false;

        public boolean getResult() {
            return this.result_;
        }

        public boolean hasResult() {
            return this.hasResult;
        }

        public XMMsgBindResp setResult(boolean value) {
            this.hasResult = true;
            this.result_ = value;
            return this;
        }

        public String getErrorType() {
            return this.errorType_;
        }

        public boolean hasErrorType() {
            return this.hasErrorType;
        }

        public XMMsgBindResp setErrorType(String value) {
            this.hasErrorType = true;
            this.errorType_ = value;
            return this;
        }

        public String getErrorReason() {
            return this.errorReason_;
        }

        public boolean hasErrorReason() {
            return this.hasErrorReason;
        }

        public XMMsgBindResp setErrorReason(String value) {
            this.hasErrorReason = true;
            this.errorReason_ = value;
            return this;
        }

        public String getErrorDesc() {
            return this.errorDesc_;
        }

        public boolean hasErrorDesc() {
            return this.hasErrorDesc;
        }

        public XMMsgBindResp setErrorDesc(String value) {
            this.hasErrorDesc = true;
            this.errorDesc_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasResult()) {
                output.writeBool(1, getResult());
            }
            if (hasErrorType()) {
                output.writeString(2, getErrorType());
            }
            if (hasErrorReason()) {
                output.writeString(3, getErrorReason());
            }
            if (hasErrorDesc()) {
                output.writeString(4, getErrorDesc());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasResult()) {
                size = 0 + CodedOutputStreamMicro.computeBoolSize(1, getResult());
            }
            if (hasErrorType()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getErrorType());
            }
            if (hasErrorReason()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getErrorReason());
            }
            if (hasErrorDesc()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getErrorDesc());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgBindResp mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        setResult(input.readBool());
                        continue;
                    case 18:
                        setErrorType(input.readString());
                        continue;
                    case 26:
                        setErrorReason(input.readString());
                        continue;
                    case 34:
                        setErrorDesc(input.readString());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgBindResp parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgBindResp) new XMMsgBindResp().mergeFrom(data);
        }
    }

    public static final class XMMsgConn extends MessageMicro {
        private int andver_ = 0;
        private int cachedSize = -1;
        private String connpt_ = "";
        private boolean hasAndver;
        private boolean hasConnpt;
        private boolean hasHost;
        private boolean hasLocale;
        private boolean hasModel;
        private boolean hasOs;
        private boolean hasPsc;
        private boolean hasSdk;
        private boolean hasUdid;
        private boolean hasVersion;
        private String host_ = "";
        private String locale_ = "";
        private String model_ = "";
        private String os_ = "";
        private PushServiceConfigMsg psc_ = null;
        private int sdk_ = 0;
        private String udid_ = "";
        private int version_ = 0;

        public int getVersion() {
            return this.version_;
        }

        public boolean hasVersion() {
            return this.hasVersion;
        }

        public XMMsgConn setVersion(int value) {
            this.hasVersion = true;
            this.version_ = value;
            return this;
        }

        public String getModel() {
            return this.model_;
        }

        public boolean hasModel() {
            return this.hasModel;
        }

        public XMMsgConn setModel(String value) {
            this.hasModel = true;
            this.model_ = value;
            return this;
        }

        public String getOs() {
            return this.os_;
        }

        public boolean hasOs() {
            return this.hasOs;
        }

        public XMMsgConn setOs(String value) {
            this.hasOs = true;
            this.os_ = value;
            return this;
        }

        public String getUdid() {
            return this.udid_;
        }

        public boolean hasUdid() {
            return this.hasUdid;
        }

        public XMMsgConn setUdid(String value) {
            this.hasUdid = true;
            this.udid_ = value;
            return this;
        }

        public int getSdk() {
            return this.sdk_;
        }

        public boolean hasSdk() {
            return this.hasSdk;
        }

        public XMMsgConn setSdk(int value) {
            this.hasSdk = true;
            this.sdk_ = value;
            return this;
        }

        public String getConnpt() {
            return this.connpt_;
        }

        public boolean hasConnpt() {
            return this.hasConnpt;
        }

        public XMMsgConn setConnpt(String value) {
            this.hasConnpt = true;
            this.connpt_ = value;
            return this;
        }

        public String getHost() {
            return this.host_;
        }

        public boolean hasHost() {
            return this.hasHost;
        }

        public XMMsgConn setHost(String value) {
            this.hasHost = true;
            this.host_ = value;
            return this;
        }

        public String getLocale() {
            return this.locale_;
        }

        public boolean hasLocale() {
            return this.hasLocale;
        }

        public XMMsgConn setLocale(String value) {
            this.hasLocale = true;
            this.locale_ = value;
            return this;
        }

        public boolean hasPsc() {
            return this.hasPsc;
        }

        public PushServiceConfigMsg getPsc() {
            return this.psc_;
        }

        public XMMsgConn setPsc(PushServiceConfigMsg value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasPsc = true;
            this.psc_ = value;
            return this;
        }

        public int getAndver() {
            return this.andver_;
        }

        public boolean hasAndver() {
            return this.hasAndver;
        }

        public XMMsgConn setAndver(int value) {
            this.hasAndver = true;
            this.andver_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasVersion()) {
                output.writeUInt32(1, getVersion());
            }
            if (hasModel()) {
                output.writeString(2, getModel());
            }
            if (hasOs()) {
                output.writeString(3, getOs());
            }
            if (hasUdid()) {
                output.writeString(4, getUdid());
            }
            if (hasSdk()) {
                output.writeInt32(5, getSdk());
            }
            if (hasConnpt()) {
                output.writeString(6, getConnpt());
            }
            if (hasHost()) {
                output.writeString(7, getHost());
            }
            if (hasLocale()) {
                output.writeString(8, getLocale());
            }
            if (hasPsc()) {
                output.writeMessage(9, getPsc());
            }
            if (hasAndver()) {
                output.writeInt32(10, getAndver());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasVersion()) {
                size = 0 + CodedOutputStreamMicro.computeUInt32Size(1, getVersion());
            }
            if (hasModel()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getModel());
            }
            if (hasOs()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getOs());
            }
            if (hasUdid()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getUdid());
            }
            if (hasSdk()) {
                size += CodedOutputStreamMicro.computeInt32Size(5, getSdk());
            }
            if (hasConnpt()) {
                size += CodedOutputStreamMicro.computeStringSize(6, getConnpt());
            }
            if (hasHost()) {
                size += CodedOutputStreamMicro.computeStringSize(7, getHost());
            }
            if (hasLocale()) {
                size += CodedOutputStreamMicro.computeStringSize(8, getLocale());
            }
            if (hasPsc()) {
                size += CodedOutputStreamMicro.computeMessageSize(9, getPsc());
            }
            if (hasAndver()) {
                size += CodedOutputStreamMicro.computeInt32Size(10, getAndver());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgConn mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        setVersion(input.readUInt32());
                        continue;
                    case 18:
                        setModel(input.readString());
                        continue;
                    case 26:
                        setOs(input.readString());
                        continue;
                    case 34:
                        setUdid(input.readString());
                        continue;
                    case 40:
                        setSdk(input.readInt32());
                        continue;
                    case 50:
                        setConnpt(input.readString());
                        continue;
                    case 58:
                        setHost(input.readString());
                        continue;
                    case 66:
                        setLocale(input.readString());
                        continue;
                    case 74:
                        PushServiceConfigMsg value = new PushServiceConfigMsg();
                        input.readMessage(value);
                        setPsc(value);
                        continue;
                    case BaiduSceneResult.SKI /*80*/:
                        setAndver(input.readInt32());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }
    }

    public static final class XMMsgConnResp extends MessageMicro {
        private int cachedSize = -1;
        private String challenge_ = "";
        private boolean hasChallenge;
        private boolean hasHost;
        private boolean hasPsc;
        private String host_ = "";
        private PushServiceConfigMsg psc_ = null;

        public String getChallenge() {
            return this.challenge_;
        }

        public boolean hasChallenge() {
            return this.hasChallenge;
        }

        public XMMsgConnResp setChallenge(String value) {
            this.hasChallenge = true;
            this.challenge_ = value;
            return this;
        }

        public String getHost() {
            return this.host_;
        }

        public boolean hasHost() {
            return this.hasHost;
        }

        public XMMsgConnResp setHost(String value) {
            this.hasHost = true;
            this.host_ = value;
            return this;
        }

        public boolean hasPsc() {
            return this.hasPsc;
        }

        public PushServiceConfigMsg getPsc() {
            return this.psc_;
        }

        public XMMsgConnResp setPsc(PushServiceConfigMsg value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasPsc = true;
            this.psc_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasChallenge()) {
                output.writeString(1, getChallenge());
            }
            if (hasHost()) {
                output.writeString(2, getHost());
            }
            if (hasPsc()) {
                output.writeMessage(3, getPsc());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasChallenge()) {
                size = 0 + CodedOutputStreamMicro.computeStringSize(1, getChallenge());
            }
            if (hasHost()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getHost());
            }
            if (hasPsc()) {
                size += CodedOutputStreamMicro.computeMessageSize(3, getPsc());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgConnResp mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        setChallenge(input.readString());
                        continue;
                    case 18:
                        setHost(input.readString());
                        continue;
                    case 26:
                        PushServiceConfigMsg value = new PushServiceConfigMsg();
                        input.readMessage(value);
                        setPsc(value);
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgConnResp parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgConnResp) new XMMsgConnResp().mergeFrom(data);
        }
    }

    public static final class XMMsgKick extends MessageMicro {
        private int cachedSize = -1;
        private String desc_ = "";
        private boolean hasDesc;
        private boolean hasReason;
        private boolean hasType;
        private String reason_ = "";
        private String type_ = "";

        public String getType() {
            return this.type_;
        }

        public boolean hasType() {
            return this.hasType;
        }

        public XMMsgKick setType(String value) {
            this.hasType = true;
            this.type_ = value;
            return this;
        }

        public String getReason() {
            return this.reason_;
        }

        public boolean hasReason() {
            return this.hasReason;
        }

        public XMMsgKick setReason(String value) {
            this.hasReason = true;
            this.reason_ = value;
            return this;
        }

        public String getDesc() {
            return this.desc_;
        }

        public boolean hasDesc() {
            return this.hasDesc;
        }

        public XMMsgKick setDesc(String value) {
            this.hasDesc = true;
            this.desc_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasType()) {
                output.writeString(1, getType());
            }
            if (hasReason()) {
                output.writeString(2, getReason());
            }
            if (hasDesc()) {
                output.writeString(3, getDesc());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasType()) {
                size = 0 + CodedOutputStreamMicro.computeStringSize(1, getType());
            }
            if (hasReason()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getReason());
            }
            if (hasDesc()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getDesc());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgKick mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        setType(input.readString());
                        continue;
                    case 18:
                        setReason(input.readString());
                        continue;
                    case 26:
                        setDesc(input.readString());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgKick parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgKick) new XMMsgKick().mergeFrom(data);
        }
    }

    public static final class XMMsgNotify extends MessageMicro {
        private int cachedSize = -1;
        private int errCode_ = 0;
        private String errStr_ = "";
        private boolean hasErrCode;
        private boolean hasErrStr;

        public int getErrCode() {
            return this.errCode_;
        }

        public boolean hasErrCode() {
            return this.hasErrCode;
        }

        public XMMsgNotify setErrCode(int value) {
            this.hasErrCode = true;
            this.errCode_ = value;
            return this;
        }

        public String getErrStr() {
            return this.errStr_;
        }

        public boolean hasErrStr() {
            return this.hasErrStr;
        }

        public XMMsgNotify setErrStr(String value) {
            this.hasErrStr = true;
            this.errStr_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasErrCode()) {
                output.writeInt32(1, getErrCode());
            }
            if (hasErrStr()) {
                output.writeString(2, getErrStr());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasErrCode()) {
                size = 0 + CodedOutputStreamMicro.computeInt32Size(1, getErrCode());
            }
            if (hasErrStr()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getErrStr());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgNotify mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        setErrCode(input.readInt32());
                        continue;
                    case 18:
                        setErrStr(input.readString());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgNotify parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgNotify) new XMMsgNotify().mergeFrom(data);
        }
    }

    public static final class XMMsgP extends MessageMicro {
        private int cachedSize = -1;
        private ByteStringMicro cookie_ = ByteStringMicro.EMPTY;
        private boolean hasCookie;

        public ByteStringMicro getCookie() {
            return this.cookie_;
        }

        public boolean hasCookie() {
            return this.hasCookie;
        }

        public XMMsgP setCookie(ByteStringMicro value) {
            this.hasCookie = true;
            this.cookie_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasCookie()) {
                output.writeBytes(1, getCookie());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasCookie()) {
                size = 0 + CodedOutputStreamMicro.computeBytesSize(1, getCookie());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgP mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        setCookie(input.readBytes());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgP parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgP) new XMMsgP().mergeFrom(data);
        }
    }

    public static final class XMMsgPing extends MessageMicro {
        private int cachedSize = -1;
        private boolean hasPsc;
        private boolean hasStats;
        private PushServiceConfigMsg psc_ = null;
        private ByteStringMicro stats_ = ByteStringMicro.EMPTY;

        public ByteStringMicro getStats() {
            return this.stats_;
        }

        public boolean hasStats() {
            return this.hasStats;
        }

        public XMMsgPing setStats(ByteStringMicro value) {
            this.hasStats = true;
            this.stats_ = value;
            return this;
        }

        public boolean hasPsc() {
            return this.hasPsc;
        }

        public PushServiceConfigMsg getPsc() {
            return this.psc_;
        }

        public XMMsgPing setPsc(PushServiceConfigMsg value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasPsc = true;
            this.psc_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasStats()) {
                output.writeBytes(1, getStats());
            }
            if (hasPsc()) {
                output.writeMessage(2, getPsc());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasStats()) {
                size = 0 + CodedOutputStreamMicro.computeBytesSize(1, getStats());
            }
            if (hasPsc()) {
                size += CodedOutputStreamMicro.computeMessageSize(2, getPsc());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgPing mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        setStats(input.readBytes());
                        continue;
                    case 18:
                        PushServiceConfigMsg value = new PushServiceConfigMsg();
                        input.readMessage(value);
                        setPsc(value);
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgPing parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgPing) new XMMsgPing().mergeFrom(data);
        }
    }

    public static final class XMMsgU extends MessageMicro {
        private int cachedSize = -1;
        private long end_ = 0;
        private boolean force_ = false;
        private boolean hasEnd;
        private boolean hasForce;
        private boolean hasMaxlen;
        private boolean hasStart;
        private boolean hasToken;
        private boolean hasUrl;
        private int maxlen_ = 0;
        private long start_ = 0;
        private String token_ = "";
        private String url_ = "";

        public String getUrl() {
            return this.url_;
        }

        public boolean hasUrl() {
            return this.hasUrl;
        }

        public XMMsgU setUrl(String value) {
            this.hasUrl = true;
            this.url_ = value;
            return this;
        }

        public String getToken() {
            return this.token_;
        }

        public boolean hasToken() {
            return this.hasToken;
        }

        public XMMsgU setToken(String value) {
            this.hasToken = true;
            this.token_ = value;
            return this;
        }

        public long getStart() {
            return this.start_;
        }

        public boolean hasStart() {
            return this.hasStart;
        }

        public XMMsgU setStart(long value) {
            this.hasStart = true;
            this.start_ = value;
            return this;
        }

        public long getEnd() {
            return this.end_;
        }

        public boolean hasEnd() {
            return this.hasEnd;
        }

        public XMMsgU setEnd(long value) {
            this.hasEnd = true;
            this.end_ = value;
            return this;
        }

        public boolean getForce() {
            return this.force_;
        }

        public boolean hasForce() {
            return this.hasForce;
        }

        public XMMsgU setForce(boolean value) {
            this.hasForce = true;
            this.force_ = value;
            return this;
        }

        public int getMaxlen() {
            return this.maxlen_;
        }

        public boolean hasMaxlen() {
            return this.hasMaxlen;
        }

        public XMMsgU setMaxlen(int value) {
            this.hasMaxlen = true;
            this.maxlen_ = value;
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasUrl()) {
                output.writeString(1, getUrl());
            }
            if (hasToken()) {
                output.writeString(2, getToken());
            }
            if (hasStart()) {
                output.writeUInt64(3, getStart());
            }
            if (hasEnd()) {
                output.writeUInt64(4, getEnd());
            }
            if (hasForce()) {
                output.writeBool(5, getForce());
            }
            if (hasMaxlen()) {
                output.writeInt32(6, getMaxlen());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasUrl()) {
                size = 0 + CodedOutputStreamMicro.computeStringSize(1, getUrl());
            }
            if (hasToken()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getToken());
            }
            if (hasStart()) {
                size += CodedOutputStreamMicro.computeUInt64Size(3, getStart());
            }
            if (hasEnd()) {
                size += CodedOutputStreamMicro.computeUInt64Size(4, getEnd());
            }
            if (hasForce()) {
                size += CodedOutputStreamMicro.computeBoolSize(5, getForce());
            }
            if (hasMaxlen()) {
                size += CodedOutputStreamMicro.computeInt32Size(6, getMaxlen());
            }
            this.cachedSize = size;
            return size;
        }

        public XMMsgU mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        setUrl(input.readString());
                        continue;
                    case 18:
                        setToken(input.readString());
                        continue;
                    case 24:
                        setStart(input.readUInt64());
                        continue;
                    case 32:
                        setEnd(input.readUInt64());
                        continue;
                    case 40:
                        setForce(input.readBool());
                        continue;
                    case 48:
                        setMaxlen(input.readInt32());
                        continue;
                    default:
                        if (!parseUnknownField(input, tag)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public static XMMsgU parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (XMMsgU) new XMMsgU().mergeFrom(data);
        }
    }
}
