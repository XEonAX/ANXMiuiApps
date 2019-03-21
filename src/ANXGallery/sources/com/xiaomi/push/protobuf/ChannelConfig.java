package com.xiaomi.push.protobuf;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ChannelConfig {

    public static final class PushServiceConfig extends MessageMicro {
        private int cachedSize = -1;
        private int configVersion_ = 0;
        private int connectTimeoutMs_ = 0;
        private boolean enableDynamicPing_ = false;
        private boolean hasConfigVersion;
        private boolean hasConnectTimeoutMs;
        private boolean hasEnableDynamicPing;
        private boolean hasUseBucketV2;
        private List<String> testHosts_ = Collections.emptyList();
        private boolean useBucketV2_ = false;

        public int getConfigVersion() {
            return this.configVersion_;
        }

        public boolean hasConfigVersion() {
            return this.hasConfigVersion;
        }

        public PushServiceConfig setConfigVersion(int value) {
            this.hasConfigVersion = true;
            this.configVersion_ = value;
            return this;
        }

        public boolean getUseBucketV2() {
            return this.useBucketV2_;
        }

        public boolean hasUseBucketV2() {
            return this.hasUseBucketV2;
        }

        public PushServiceConfig setUseBucketV2(boolean value) {
            this.hasUseBucketV2 = true;
            this.useBucketV2_ = value;
            return this;
        }

        public int getConnectTimeoutMs() {
            return this.connectTimeoutMs_;
        }

        public boolean hasConnectTimeoutMs() {
            return this.hasConnectTimeoutMs;
        }

        public PushServiceConfig setConnectTimeoutMs(int value) {
            this.hasConnectTimeoutMs = true;
            this.connectTimeoutMs_ = value;
            return this;
        }

        public boolean getEnableDynamicPing() {
            return this.enableDynamicPing_;
        }

        public boolean hasEnableDynamicPing() {
            return this.hasEnableDynamicPing;
        }

        public PushServiceConfig setEnableDynamicPing(boolean value) {
            this.hasEnableDynamicPing = true;
            this.enableDynamicPing_ = value;
            return this;
        }

        public List<String> getTestHostsList() {
            return this.testHosts_;
        }

        public int getTestHostsCount() {
            return this.testHosts_.size();
        }

        public PushServiceConfig addTestHosts(String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            if (this.testHosts_.isEmpty()) {
                this.testHosts_ = new ArrayList();
            }
            this.testHosts_.add(value);
            return this;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasConfigVersion()) {
                output.writeUInt32(1, getConfigVersion());
            }
            if (hasUseBucketV2()) {
                output.writeBool(2, getUseBucketV2());
            }
            if (hasConnectTimeoutMs()) {
                output.writeInt32(3, getConnectTimeoutMs());
            }
            if (hasEnableDynamicPing()) {
                output.writeBool(4, getEnableDynamicPing());
            }
            for (String element : getTestHostsList()) {
                output.writeString(5, element);
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
            if (hasConfigVersion()) {
                size = 0 + CodedOutputStreamMicro.computeUInt32Size(1, getConfigVersion());
            }
            if (hasUseBucketV2()) {
                size += CodedOutputStreamMicro.computeBoolSize(2, getUseBucketV2());
            }
            if (hasConnectTimeoutMs()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getConnectTimeoutMs());
            }
            if (hasEnableDynamicPing()) {
                size += CodedOutputStreamMicro.computeBoolSize(4, getEnableDynamicPing());
            }
            int dataSize = 0;
            for (String element : getTestHostsList()) {
                dataSize += CodedOutputStreamMicro.computeStringSizeNoTag(element);
            }
            size = (size + dataSize) + (getTestHostsList().size() * 1);
            this.cachedSize = size;
            return size;
        }

        public PushServiceConfig mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        setConfigVersion(input.readUInt32());
                        continue;
                    case 16:
                        setUseBucketV2(input.readBool());
                        continue;
                    case 24:
                        setConnectTimeoutMs(input.readInt32());
                        continue;
                    case 32:
                        setEnableDynamicPing(input.readBool());
                        continue;
                    case 42:
                        addTestHosts(input.readString());
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

        public static PushServiceConfig parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (PushServiceConfig) new PushServiceConfig().mergeFrom(data);
        }

        public static PushServiceConfig parseFrom(CodedInputStreamMicro input) throws IOException {
            return new PushServiceConfig().mergeFrom(input);
        }
    }
}
