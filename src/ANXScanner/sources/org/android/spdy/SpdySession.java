package org.android.spdy;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.atomic.AtomicBoolean;

public final class SpdySession {
    private static volatile int count = 0;
    private SpdyAgent agent;
    private String authority;
    private AtomicBoolean closed = new AtomicBoolean();
    private String domain;
    private Handler handler;
    Intenalcb intenalcb;
    private Object lock = new Object();
    private int mode;
    private ProtectedPointer pptr4sessionNativePtr;
    private int pubkey_seqnum = 0;
    volatile int refcount = 1;
    SessionCb sessionCallBack = null;
    private boolean sessionClearedFromSessionMgr = false;
    private volatile long sessionNativePtr;
    private NetSparseArray<SpdyStreamContext> spdyStream = null;
    private int streamcount = 1;
    private HandlerThread thread;
    private Object userData = null;

    private native int NotifyNotInvokeAnyMoreN(long j);

    private native int sendCustomControlFrameN(long j, int i, int i2, int i3, int i4, byte[] bArr);

    private native int sendHeadersN(long j, int i, String[] strArr, boolean z);

    private native int setOptionN(long j, int i, int i2);

    private native int streamCloseN(long j, int i, int i2);

    private native int streamSendDataN(long j, int i, byte[] bArr, int i2, int i3, boolean z);

    private native int submitBioPingN(long j);

    private native int submitPingN(long j);

    private native int submitRequestN(long j, String str, byte b, String[] strArr, byte[] bArr, boolean z, int i, int i2, int i3);

    SpdySession(long ptr, SpdyAgent agent, String authority, String domain, SessionCb sessioncb, int mode, int pubkey_seqnum, Object userData) {
        this.sessionNativePtr = ptr;
        this.pptr4sessionNativePtr = new ProtectedPointer(this);
        this.pptr4sessionNativePtr.setHow2close(new ProtectedPointerOnClose() {
            public void close(Object data) {
                SpdySession session = (SpdySession) data;
                session.NotifyNotInvokeAnyMoreN(session.sessionNativePtr);
                session.setSessionNativePtr(0);
            }
        });
        this.agent = agent;
        this.authority = authority;
        this.intenalcb = new SpdySessionCallBack();
        this.domain = domain;
        this.spdyStream = new NetSparseArray(5);
        this.sessionCallBack = sessioncb;
        this.pubkey_seqnum = pubkey_seqnum;
        this.mode = mode;
        this.userData = userData;
        this.closed.set(false);
    }

    public int getRefCount() {
        return this.refcount;
    }

    void increRefCount() {
        this.refcount++;
    }

    private String getAuthority() {
        return this.authority;
    }

    public String getDomain() {
        return this.domain;
    }

    public Object getUserData() {
        return this.userData;
    }

    int putSpdyStreamCtx(SpdyStreamContext streamctx) {
        Throwable th;
        synchronized (this.lock) {
            try {
                int old = this.streamcount;
                this.streamcount = old + 1;
                try {
                    this.spdyStream.put(old, streamctx);
                    return old;
                } catch (Throwable th2) {
                    th = th2;
                    int i = old;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }

    SpdyStreamContext getSpdyStream(int index) {
        SpdyStreamContext stm = null;
        if (index > 0) {
            synchronized (this.lock) {
                stm = (SpdyStreamContext) this.spdyStream.get(index);
            }
        }
        return stm;
    }

    void removeSpdyStream(int index) {
        if (index > 0) {
            synchronized (this.lock) {
                this.spdyStream.remove(index);
            }
        }
    }

    public SpdyStreamContext[] getAllStreamCb() {
        SpdyStreamContext[] data = null;
        synchronized (this.lock) {
            int size = this.spdyStream.size();
            if (size > 0) {
                data = new SpdyStreamContext[size];
                this.spdyStream.toArray(data);
            }
        }
        return data;
    }

    public void clearAllStreamCb() {
        spduLog.Logd("tnet-jni", "[SpdySession.clearAllStreamCb] - ");
        synchronized (this.lock) {
            this.spdyStream.clear();
        }
    }

    SpdyAgent getSpdyAgent() {
        return this.agent;
    }

    Handler getMsgHandler() {
        return this.handler;
    }

    long getSessionNativePtr() {
        return this.sessionNativePtr;
    }

    void setSessionNativePtr(long ptr) {
        this.sessionNativePtr = ptr;
    }

    public int setOption(int optname, int optval) throws SpdyErrorException {
        int code;
        sessionIsOpen();
        if (this.pptr4sessionNativePtr.enter()) {
            code = setOptionN(this.sessionNativePtr, optname, optval);
            this.pptr4sessionNativePtr.exit();
        } else {
            code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
        }
        if (code == 0) {
            return code;
        }
        throw new SpdyErrorException("setOption error: " + code, code);
    }

    public int submitPing() throws SpdyErrorException {
        int code;
        sessionIsOpen();
        if (this.pptr4sessionNativePtr.enter()) {
            code = submitPingN(this.sessionNativePtr);
            this.pptr4sessionNativePtr.exit();
        } else {
            code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
        }
        if (code == 0) {
            return code;
        }
        throw new SpdyErrorException("submitPing error: " + code, code);
    }

    @Deprecated
    public int submitBioPing() throws SpdyErrorException {
        int code;
        sessionIsOpen();
        if (this.pptr4sessionNativePtr.enter()) {
            code = submitBioPingN(this.sessionNativePtr);
            this.pptr4sessionNativePtr.exit();
        } else {
            code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
        }
        if (code == 0) {
            return code;
        }
        throw new SpdyErrorException("submitBioPing error: " + code, code);
    }

    public int streamReset(long streamId, int statusCode) throws SpdyErrorException {
        int code;
        sessionIsOpen();
        spduLog.Logd("tnet-jni", "[SpdySession.streamReset] - ");
        if (this.pptr4sessionNativePtr.enter()) {
            code = streamCloseN(this.sessionNativePtr, (int) streamId, statusCode);
            this.pptr4sessionNativePtr.exit();
        } else {
            code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
        }
        if (code == 0) {
            return code;
        }
        throw new SpdyErrorException("streamReset error: " + code, code);
    }

    public int sendCustomControlFrame(int id, int type, int flags, int length, byte[] data) throws SpdyErrorException {
        int code;
        sessionIsOpen();
        if (data != null && data.length <= 0) {
            data = null;
        }
        spduLog.Logi("tnet-jni", "[sendCustomControlFrame] - type: " + type);
        if (this.pptr4sessionNativePtr.enter()) {
            code = sendCustomControlFrameN(this.sessionNativePtr, id, type, flags, length, data);
            this.pptr4sessionNativePtr.exit();
        } else {
            code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
        }
        if (code == 0) {
            return code;
        }
        throw new SpdyErrorException("sendCustomControlFrame error: " + code, code);
    }

    public int submitRequest(SpdyRequest req, SpdyDataProvider dataPro, Object streamUserData, Spdycb streamCallBack) throws SpdyErrorException {
        if (req == null || streamUserData == null || req.getAuthority() == null) {
            throw new SpdyErrorException("submitRequest error: -1102", (int) TnetStatusCode.TNET_JNI_ERR_INVLID_PARAM);
        }
        int code;
        sessionIsOpen();
        byte[] data = SpdyAgent.dataproviderToByteArray(req, dataPro);
        if (data != null && data.length <= 0) {
            data = null;
        }
        boolean finish = true;
        if (dataPro != null) {
            finish = dataPro.finished;
        }
        SpdyStreamContext context = new SpdyStreamContext(streamUserData, streamCallBack);
        int index = putSpdyStreamCtx(context);
        String[] nv = SpdyAgent.mapToByteArray(req.getHeaders());
        spduLog.Logi("tnet-jni", "index=" + index + "  " + "starttime=" + System.currentTimeMillis());
        if (this.pptr4sessionNativePtr.enter()) {
            code = submitRequestN(this.sessionNativePtr, req.getUrlPath(), (byte) req.getPriority(), nv, data, finish, index, req.getRequestTimeoutMs(), req.getRequestRdTimeoutMs());
            this.pptr4sessionNativePtr.exit();
        } else {
            code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
        }
        spduLog.Logi("tnet-jni", "index=" + index + "  " + " calltime=" + System.currentTimeMillis());
        if (code < 0) {
            removeSpdyStream(index);
            throw new SpdyErrorException("submitRequest error: " + code, code);
        }
        context.streamId = code;
        return code;
    }

    void sessionIsOpen() {
        if (this.closed.get()) {
            throw new SpdyErrorException("session is already closed: -1104", (int) TnetStatusCode.TNET_JNI_ERR_ASYNC_CLOSE);
        }
    }

    public int cleanUp() {
        spduLog.Logd("tnet-jni", "[SpdySession.cleanUp] - ");
        if (this.closed.getAndSet(true)) {
            return 0;
        }
        this.agent.removeSession(this);
        return closeprivate();
    }

    int closeInternal() {
        if (this.closed.getAndSet(true)) {
            return 0;
        }
        return closeprivate();
    }

    public int closeSession() {
        spduLog.Logd("tnet-jni", "[SpdySession.closeSession] - ");
        int code = 0;
        synchronized (this.lock) {
            if (!this.sessionClearedFromSessionMgr) {
                spduLog.Logd("tnet-jni", "[SpdySession.closeSession] - " + this.authority);
                this.agent.clearSpdySession(this.authority, this.domain, this.mode);
                this.sessionClearedFromSessionMgr = true;
                if (this.pptr4sessionNativePtr.enter()) {
                    try {
                        code = this.agent.closeSession(this.sessionNativePtr);
                    } catch (UnsatisfiedLinkError ep) {
                        ep.printStackTrace();
                    } finally {
                        this.pptr4sessionNativePtr.exit();
                    }
                } else {
                    code = TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS;
                }
            }
        }
        return code;
    }

    private int closeprivate() {
        synchronized (this.lock) {
            if (!this.sessionClearedFromSessionMgr) {
                this.agent.clearSpdySession(this.authority, this.domain, this.mode);
                this.sessionClearedFromSessionMgr = true;
            }
        }
        synchronized (this.lock) {
            SpdyStreamContext[] stmCbs = getAllStreamCb();
            if (stmCbs != null) {
                for (SpdyStreamContext stm : stmCbs) {
                    spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyStreamCloseCallback] unfinished stm=" + stm.streamId);
                    stm.callBack.spdyStreamCloseCallback(this, (long) stm.streamId, TnetStatusCode.EASY_REASON_CONN_NOT_EXISTS, stm.streamContext, null);
                }
            }
            this.spdyStream.clear();
        }
        return 0;
    }

    void releasePptr() {
        this.pptr4sessionNativePtr.release();
    }
}
