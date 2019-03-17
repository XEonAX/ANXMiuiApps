package org.android.spdy;

import mtopsdk.common.util.SymbolExpUtil;

public class SessionInfo {
    private static int INVALID_PUBLIC_SEQNUM = -1;
    private String certHost = null;
    private int connTimeoutMs;
    private String domain;
    private String host;
    private int mode;
    private int port;
    private String proxyHost;
    private int proxyPort;
    private int pubkey_seqnum;
    private SessionCb sessionCb;
    private Object sessionUserData;

    public SessionInfo(String host, int port, String domain, String proxyHost, int proxyPort, Object sessionUserData, SessionCb sessionCb, int mode) {
        this.host = host;
        this.port = port;
        this.domain = domain;
        this.proxyHost = proxyHost;
        this.proxyPort = proxyPort;
        this.sessionUserData = sessionUserData;
        this.sessionCb = sessionCb;
        this.mode = mode;
        this.pubkey_seqnum = INVALID_PUBLIC_SEQNUM;
        this.connTimeoutMs = -1;
    }

    String getAuthority() {
        if (this.proxyHost == null || this.proxyPort == 0) {
            return this.host + SymbolExpUtil.SYMBOL_COLON + this.port;
        }
        return this.host + SymbolExpUtil.SYMBOL_COLON + this.port + "/" + this.proxyHost + SymbolExpUtil.SYMBOL_COLON + this.proxyPort;
    }

    String getCertHost() {
        if (this.pubkey_seqnum != INVALID_PUBLIC_SEQNUM) {
            return null;
        }
        return this.certHost;
    }

    public void setCertHost(String certHost) {
        this.certHost = certHost;
    }

    Object getSessonUserData() {
        return this.sessionUserData;
    }

    SessionCb getSessionCb() {
        return this.sessionCb;
    }

    int getMode() {
        return this.mode;
    }

    String getDomain() {
        return this.domain;
    }

    public void setConnectionTimeoutMs(int timeout) {
        this.connTimeoutMs = timeout;
    }

    int getConnectionTimeoutMs() {
        return this.connTimeoutMs;
    }

    public void setPubKeySeqNum(int seqnum) {
        this.pubkey_seqnum = seqnum;
    }

    int getPubKeySeqNum() {
        return this.pubkey_seqnum;
    }
}
