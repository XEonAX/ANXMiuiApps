package com.xiaomi.smack.filter;

import com.xiaomi.smack.packet.Packet;

public interface PacketFilter {
    boolean accept(Packet packet);
}
