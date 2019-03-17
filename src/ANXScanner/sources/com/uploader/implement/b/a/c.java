package com.uploader.implement.b.a;

import android.content.Context;
import com.alipay.sdk.util.h;
import java.util.LinkedList;
import java.util.List;
import org.android.spdy.AccsSSLCallback;
import org.android.spdy.SessionCb;
import org.android.spdy.SessionExtraCb;
import org.android.spdy.SessionInfo;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdyErrorException;
import org.android.spdy.SpdyProtocol;
import org.android.spdy.SpdySession;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;
import org.android.spdy.SuperviseConnectInfo;
import org.android.spdy.TnetStatusCode;

/* compiled from: CustomizedSession */
public class c implements SessionCb, SessionExtraCb {
    private com.uploader.implement.c a;
    private SpdyAgent b;
    private SpdySession c;
    private final Context d;
    private final f e;
    private volatile a f;
    private volatile String g = "DISCONNECTED";
    private List<b> h = new LinkedList();
    private final int i;

    /* compiled from: CustomizedSession */
    interface a {
        void a();

        void a(int i);

        void a(int i, int i2);

        void a(byte[] bArr, int i);

        void b(int i);
    }

    /* compiled from: CustomizedSession */
    private static class b {
        byte[] a;
        int b;
        int c;

        public b(byte[] data, int length, int sendSequence) {
            this.a = data;
            this.b = length;
            this.c = sendSequence;
        }

        public String toString() {
            StringBuilder builder = new StringBuilder(32);
            builder.append(hashCode()).append(" WaitingData{ length=").append(this.b).append(", sendSequence=").append(this.c).append(h.d);
            return builder.toString();
        }
    }

    public c(com.uploader.implement.c config, f target) {
        this.a = config;
        this.d = config.c;
        this.e = target;
        this.i = hashCode();
    }

    public void a(a sessionCallback) {
        this.f = sessionCallback;
    }

    public void a() {
        if (c()) {
            try {
                this.g = "CONNECTING";
                SessionInfo info = new SessionInfo(this.e.a, this.e.b, Integer.toString(this.i), null, 0, null, this, this.e.f ? SpdyProtocol.SSSL_0RTT_CUSTOM : 16);
                info.setConnectionTimeoutMs(10000);
                if (this.e.f) {
                    if (2 == this.a.b.getCurrentElement().environment) {
                        info.setPubKeySeqNum(0);
                    } else {
                        info.setPubKeySeqNum(6);
                    }
                }
                if (this.b == null) {
                    d();
                }
                this.c = this.b.createSession(info);
                if (com.uploader.implement.a.a(4)) {
                    com.uploader.implement.a.a(4, "CustomizedSession", this.i + " CustomizedSession createSession,mSession:" + this.c.hashCode() + " getRefCount:" + this.c.getRefCount());
                }
            } catch (SpdyErrorException e) {
                this.g = "CONNECTFAILED";
                if (com.uploader.implement.a.a(16)) {
                    com.uploader.implement.a.a(16, "CustomizedSession", this.i + "CustomizedSession connect failed", e);
                }
                a(e.SpdyErrorGetCode());
            }
        } else if (com.uploader.implement.a.a(8)) {
            Object valueOf;
            String str = "CustomizedSession";
            StringBuilder append = new StringBuilder().append(this.i).append(" CustomizedSession already connected,mSession:");
            if (this.c != null) {
                valueOf = Integer.valueOf(this.c.hashCode());
            } else {
                valueOf = "";
            }
            com.uploader.implement.a.a(8, str, append.append(valueOf).toString());
        }
    }

    public void b() {
        if (this.c != null) {
            this.c.closeSession();
            if (com.uploader.implement.a.a(4)) {
                com.uploader.implement.a.a(4, "CustomizedSession", this.i + " CustomizedSession closeSession,session:" + this.c.hashCode());
            }
        }
        this.g = "DISCONNECTED";
    }

    public void a(int sendSequence, byte[] data, int length) {
        try {
            StringBuilder log;
            if (!c()) {
                this.c.sendCustomControlFrame(sendSequence, -1, -1, length, data);
                if (com.uploader.implement.a.a(4)) {
                    log = new StringBuilder(64);
                    log.append(this.i).append(" send sendCustomControlFrame. sequence=").append(sendSequence);
                    log.append(", length=").append(length).append(", mSession:").append(this.c.hashCode());
                    com.uploader.implement.a.a(4, "CustomizedSession", log.toString());
                }
                if (this.f != null) {
                    this.f.b(sendSequence);
                }
            } else if (com.uploader.implement.a.a(16)) {
                log = new StringBuilder(64);
                log.append(this.i).append(" send failed, needConnect and return, sequence:").append(sendSequence);
                log.append(", length=").append(length).append(", mSession:").append(this.c != null ? Integer.valueOf(this.c.hashCode()) : "");
                com.uploader.implement.a.a(16, "CustomizedSession", log.toString());
            }
        } catch (SpdyErrorException e) {
            int errorCode = e.SpdyErrorGetCode();
            if (TnetStatusCode.EASY_EAGAIN == errorCode) {
                a(new b(data, length, sendSequence));
                return;
            }
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "CustomizedSession", this.i + " send sendCustomControlFrame failed", e);
            }
            if (this.f != null) {
                this.f.a(sendSequence, errorCode);
            }
        }
    }

    private void d() {
        try {
            SpdyAgent.enableDebug = false;
            this.b = SpdyAgent.getInstance(this.d, SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION);
            if (this.e.f) {
                this.b.setAccsSslCallback(new AccsSSLCallback() {
                    public byte[] getSSLPublicKey(int seqnum, byte[] ciphertext) {
                        try {
                            return c.this.a.b.decrypt(c.this.d, SpdyProtocol.TNET_PUBKEY_SG_KEY, ciphertext);
                        } catch (Exception e) {
                            if (com.uploader.implement.a.a(16)) {
                                com.uploader.implement.a.a(16, "CustomizedSession", "call config.decrypt error.", e);
                            }
                            return null;
                        }
                    }
                });
            }
            if (com.uploader.implement.a.a(4)) {
                com.uploader.implement.a.a(4, "CustomizedSession", this.i + " initSpdyAgent");
            }
        } catch (Exception e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "CustomizedSession", this.i + " init SpdyAgent failed.", e);
            }
        }
    }

    public void spdySessionConnectCB(SpdySession session, SuperviseConnectInfo data) {
        this.g = "CONNECTED";
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "CustomizedSession", this.i + " CustomizedSession spdySessionConnectCB,session:" + session.hashCode());
        }
        if (this.f != null) {
            this.f.a();
        }
        e();
    }

    public void spdyPingRecvCallback(SpdySession session, long unique_id, Object sessionUserData) {
    }

    public void spdyCustomControlFrameRecvCallback(SpdySession session, Object sessionUserData, int node, int type, int flags, int length, byte[] data) {
        if (this.f != null) {
            this.f.a(data, length);
        }
    }

    public void spdyCustomControlFrameFailCallback(SpdySession session, Object sessionUserData, int id, int error) {
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "CustomizedSession", this.i + " CustomizedSession spdyCustomControlFrameFailCallback, session:" + session.hashCode() + ", id:" + id + ", error:" + error);
        }
    }

    public void spdySessionFailedError(SpdySession session, int error, Object sessionUserData) {
        if (session != null) {
            session.cleanUp();
        }
        this.g = "CONNECTFAILED";
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "CustomizedSession", this.i + " CustomizedSession spdySessionFailedError,session:" + session + ", error:" + error);
        }
        a(error);
    }

    public void spdySessionCloseCallback(SpdySession session, Object userData, SuperviseConnectInfo connInfo, int error) {
        if (session != null) {
            try {
                session.cleanUp();
                session.clearAllStreamCb();
            } catch (Throwable th) {
            }
        }
        this.g = "DISCONNECTED";
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "CustomizedSession", this.i + " CustomizedSession spdySessionCloseCallback,session:" + (session != null ? Integer.valueOf(session.hashCode()) : "") + ", error:" + error);
        }
        a(error);
    }

    public void bioPingRecvCallback(SpdySession session, int pingId) {
    }

    public byte[] getSSLMeta(SpdySession session) {
        try {
            return this.a.b.getSslTicket(this.d, "ARUP_SSL_TICKET_KEY");
        } catch (Exception e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "CustomizedSession", "CustomizedSession call config.getSslTicket error.", e);
            }
            return null;
        }
    }

    public int putSSLMeta(SpdySession session, byte[] sslMeta) {
        try {
            return this.a.b.putSslTicket(this.d, "ARUP_SSL_TICKET_KEY", sslMeta);
        } catch (Exception e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "CustomizedSession", "CustomizedSession call config.putSslTicket error.", e);
            }
            return -1;
        }
    }

    public void spdySessionOnWritable(SpdySession spdySession, Object userData, int size) {
        if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "CustomizedSession", this.i + " CustomizedSession spdySessionOnWritable session:" + spdySession.hashCode() + ",size:" + size);
        }
        e();
    }

    public boolean c() {
        String status = this.g;
        return ("CONNECTED".equals(status) || "CONNECTING".equals(status)) ? false : true;
    }

    private void a(int error) {
        synchronized (this.h) {
            this.h.clear();
        }
        if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "CustomizedSession", this.i + " CustomizedSession onClose, error:" + error);
        }
        if (this.f != null) {
            this.f.a(error);
        }
    }

    /* JADX WARNING: Missing block: B:8:0x001a, code:
            r3 = r1;
     */
    /* JADX WARNING: Missing block: B:9:0x001b, code:
            if (r3 == null) goto L_?;
     */
    /* JADX WARNING: Missing block: B:10:0x001d, code:
            com.uploader.implement.e.b.a(new com.uploader.implement.b.a.c.AnonymousClass2(r7));
     */
    /* JADX WARNING: Missing block: B:19:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:20:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void e() {
        synchronized (this.h) {
            if (this.h.isEmpty()) {
                return;
            }
            b nextData = (b) this.h.remove(0);
        }
    }

    private void a(b waitingData) {
        synchronized (this.h) {
            this.h.add(waitingData);
            if (com.uploader.implement.a.a(8)) {
                StringBuilder log = new StringBuilder(64);
                log.append(this.i).append(" [addWaitingData] ").append(waitingData).append(", mSession:").append(this.c != null ? Integer.valueOf(this.c.hashCode()) : "");
                com.uploader.implement.a.a(8, "CustomizedSession", log.toString());
            }
        }
    }
}
