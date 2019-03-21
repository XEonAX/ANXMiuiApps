package com.xiaomi.slim;

import java.nio.ByteBuffer;

public final class Ping extends Blob {
    public Ping() {
        setCmd("PING", null);
        setPacketID("0");
        setChannelId(0);
    }

    public int getSerializedSize() {
        if (getPayload().length == 0) {
            return 0;
        }
        return super.getSerializedSize();
    }

    ByteBuffer toByteArray(ByteBuffer buffer) {
        return getPayload().length == 0 ? buffer : super.toByteArray(buffer);
    }
}
