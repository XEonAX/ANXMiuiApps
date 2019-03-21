package com.xiaomi.smack;

import com.xiaomi.slim.Blob;
import com.xiaomi.smack.packet.Packet;

public interface PacketListener {
    void process(Blob blob);

    void processPacket(Packet packet);
}
