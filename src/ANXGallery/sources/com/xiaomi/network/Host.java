package com.xiaomi.network;

import java.net.InetSocketAddress;

public final class Host {
    private String hostAddress;
    private int port;

    public int getPort() {
        return this.port;
    }

    public String getHost() {
        return this.hostAddress;
    }

    public Host(String host, int port) {
        this.hostAddress = host;
        this.port = port;
    }

    public static Host parse(String host, int defaultPort) {
        int pos = host.lastIndexOf(":");
        String hostAddress = host;
        int port = defaultPort;
        if (pos != -1) {
            hostAddress = host.substring(0, pos);
            try {
                port = Integer.parseInt(host.substring(pos + 1));
                if (port <= 0) {
                    port = defaultPort;
                }
            } catch (NumberFormatException e) {
            }
        }
        return new Host(hostAddress, port);
    }

    public static InetSocketAddress from(String hostAddr, int defaultPort) {
        Host host = parse(hostAddr, defaultPort);
        return new InetSocketAddress(host.getHost(), host.getPort());
    }

    public String toString() {
        if (this.port > 0) {
            return this.hostAddress + ":" + this.port;
        }
        return this.hostAddress;
    }
}
