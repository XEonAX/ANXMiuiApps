package org.android.spdy;

import android.content.Context;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import mtopsdk.common.util.SymbolExpUtil;

public final class SpdyAgent {
    public static final int ACCS_ONLINE_SERVER = 1;
    public static final int ACCS_TEST_SERVER = 0;
    private static final boolean HAVE_CLOSE = false;
    private static final int KB32 = 32768;
    private static final int KB8 = 8192;
    private static final int MAX_SPDY_SESSION_COUNT = 50;
    private static final int MB5 = 5242880;
    static final int MODE_QUIC = 256;
    static final int SPDY_CUSTOM_CONTROL_FRAME_RECV = 4106;
    static final int SPDY_DATA_CHUNK_RECV = 4097;
    static final int SPDY_DATA_RECV = 4098;
    static final int SPDY_DATA_SEND = 4099;
    static final int SPDY_PING_RECV = 4101;
    static final int SPDY_REQUEST_RECV = 4102;
    static final int SPDY_SESSION_CLOSE = 4103;
    static final int SPDY_SESSION_CREATE = 4096;
    static final int SPDY_SESSION_FAILED_ERROR = 4105;
    static final int SPDY_STREAM_CLOSE = 4100;
    static final int SPDY_STREAM_RESPONSE_RECV = 4104;
    private static final String TNET_SO_VERSION = "tnet-3.1.14";
    private static Object domainHashLock = new Object();
    private static HashMap<String, Integer> domainHashMap = new HashMap();
    public static volatile boolean enableDebug = false;
    public static volatile boolean enableTimeGaurd = false;
    private static volatile SpdyAgent gSingleInstance = null;
    private static volatile boolean loadSucc = false;
    private static Object lock = new Object();
    private static final Lock r = rwLock.readLock();
    private static final ReentrantReadWriteLock rwLock = new ReentrantReadWriteLock();
    private static int totalDomain = 0;
    private static final Lock w = rwLock.writeLock();
    private AccsSSLCallback accsSSLCallback;
    private long agentNativePtr;
    private AtomicBoolean closed = new AtomicBoolean();
    private String proxyPassword = null;
    private String proxyUsername = null;
    private HashMap<String, SpdySession> sessionMgr = new HashMap(5);
    private LinkedList<SpdySession> sessionQueue = new LinkedList();

    private native int closeSessionN(long j);

    private static native int configIpStackModeN(int i);

    private native int configLogFileN(String str, int i, int i2);

    private native int configLogFileN(String str, int i, int i2, int i3);

    private native long createSessionN(long j, SpdySession spdySession, int i, byte[] bArr, char c, byte[] bArr2, char c2, byte[] bArr3, byte[] bArr4, Object obj, int i2, int i3, int i4, byte[] bArr5);

    private native int freeAgent(long j);

    private native long getSession(long j, byte[] bArr, char c);

    private native long initAgent(int i, int i2, int i3);

    private native void logFileCloseN();

    private native void logFileFlushN();

    private native int setConTimeout(long j, int i);

    private native int setSessionKind(long j, int i);

    void clearSpdySession(String authority, String domain, int mode) {
        if (authority != null) {
            w.lock();
            if (authority != null) {
                try {
                    this.sessionMgr.remove(authority + domain + mode);
                } catch (Throwable thr) {
                    thr.printStackTrace();
                    return;
                } finally {
                    w.unlock();
                }
            }
            w.unlock();
        }
    }

    public static SpdyAgent getInstance(Context context, SpdyVersion version, SpdySessionKind kind) throws UnsatisfiedLinkError, SpdyErrorException {
        if (gSingleInstance == null) {
            synchronized (lock) {
                if (gSingleInstance == null) {
                    gSingleInstance = new SpdyAgent(context, version, kind, null);
                }
            }
        }
        return gSingleInstance;
    }

    public static boolean checkLoadSucc() {
        return loadSucc;
    }

    @Deprecated
    public static SpdyAgent getInstance(Context context, SpdyVersion version, SpdySessionKind kind, AccsSSLCallback sslCallback) throws UnsatisfiedLinkError, SpdyErrorException {
        if (gSingleInstance == null) {
            synchronized (lock) {
                if (gSingleInstance == null) {
                    gSingleInstance = new SpdyAgent(context, version, kind, sslCallback);
                }
            }
        }
        return gSingleInstance;
    }

    private int getDomainHashIndex(String domain) {
        Integer ret;
        synchronized (domainHashLock) {
            ret = (Integer) domainHashMap.get(domain);
            if (ret == null) {
                HashMap hashMap = domainHashMap;
                int i = totalDomain + 1;
                totalDomain = i;
                hashMap.put(domain, Integer.valueOf(i));
                ret = Integer.valueOf(totalDomain);
            }
        }
        return ret.intValue();
    }

    private SpdyAgent(Context context, SpdyVersion version, SpdySessionKind kind, AccsSSLCallback sslCallback) throws UnsatisfiedLinkError {
        try {
            SoInstallMgrSdk.init(context);
            loadSucc = SoInstallMgrSdk.initSo(TNET_SO_VERSION, 1);
        } catch (Throwable ep) {
            ep.printStackTrace();
        }
        try {
            this.agentNativePtr = initAgent(version.getInt(), kind.getint(), SslVersion.SLIGHT_VERSION_V1.getint());
            this.accsSSLCallback = sslCallback;
        } catch (UnsatisfiedLinkError ep2) {
            ep2.printStackTrace();
        }
        this.closed.set(false);
    }

    private void checkLoadSo() throws SpdyErrorException {
        if (!loadSucc) {
            try {
                synchronized (lock) {
                    if (loadSucc) {
                        return;
                    } else {
                        loadSucc = SoInstallMgrSdk.initSo(TNET_SO_VERSION, 1);
                        this.agentNativePtr = initAgent(0, 0, 0);
                    }
                }
            } catch (Throwable e) {
                e.printStackTrace();
            }
        } else {
            return;
        }
        if (!loadSucc) {
            throw new SpdyErrorException("TNET_JNI_ERR_LOAD_SO_FAIL", (int) TnetStatusCode.TNET_JNI_ERR_LOAD_SO_FAIL);
        }
    }

    public void setProxyUsernamePassword(String un, String pw) {
        this.proxyUsername = un;
        this.proxyPassword = pw;
    }

    static void securityCheck(int total, int value) {
        if (total >= 32768) {
            throw new SpdyErrorException("SPDY_JNI_ERR_INVALID_PARAM:total=" + total, (int) TnetStatusCode.TNET_JNI_ERR_INVLID_PARAM);
        } else if (value >= 8192) {
            throw new SpdyErrorException("SPDY_JNI_ERR_INVALID_PARAM:value=" + value, (int) TnetStatusCode.TNET_JNI_ERR_INVLID_PARAM);
        }
    }

    static void tableListJudge(int total) {
        if (total >= MB5) {
            throw new SpdyErrorException("SPDY_JNI_ERR_INVALID_PARAM:total=" + total, (int) TnetStatusCode.TNET_JNI_ERR_INVLID_PARAM);
        }
    }

    static void InvlidCharJudge(byte[] key, byte[] value) {
        int j = 0;
        while (j < key.length) {
            if ((key[j] & 255) < 32 || (key[j] & 255) > Opcodes.IAND) {
                key[j] = (byte) 63;
            }
            j++;
        }
        j = 0;
        while (j < value.length) {
            if ((value[j] & 255) < 32 || (value[j] & 255) > Opcodes.IAND) {
                value[j] = (byte) 63;
            }
            j++;
        }
    }

    static void headJudge(Map<String, String> head) {
        int total = 0;
        if (head != null) {
            for (Entry<String, String> next : head.entrySet()) {
                String key = (String) next.getKey();
                String value = (String) next.getValue();
                InvlidCharJudge(key.getBytes(), value.getBytes());
                total += (key.length() + 1) + value.length();
                securityCheck(total, value.length());
            }
        }
    }

    static String mapBodyToString(Map<String, String> data) {
        int total = 0;
        StringBuilder build = new StringBuilder();
        if (data == null) {
            return null;
        }
        for (Entry<String, String> next : data.entrySet()) {
            String key = (String) next.getKey();
            String value = (String) next.getValue();
            build.append(key).append('=').append(value).append('&');
            total += (key.length() + 1) + value.length();
            tableListJudge(total);
        }
        if (build.length() > 0) {
            build.setLength(build.length() - 1);
        }
        return build.toString();
    }

    static byte[] dataproviderToByteArray(SpdyRequest req, SpdyDataProvider dataPro) {
        headJudge(req.getHeaders());
        if (dataPro == null) {
            return null;
        }
        byte[] data;
        String query = mapBodyToString(dataPro.postBody);
        if (query != null) {
            data = query.getBytes();
        } else {
            data = dataPro.data;
        }
        if (data == null || data.length < MB5) {
            return data;
        }
        throw new SpdyErrorException("SPDY_JNI_ERR_INVALID_PARAM:total=" + data.length, (int) TnetStatusCode.TNET_JNI_ERR_INVLID_PARAM);
    }

    @Deprecated
    public SpdySession createSession(String authority, Object sessionUserData, SessionCb sessioncb, int mode) throws SpdyErrorException {
        return createSession(authority, "", sessionUserData, sessioncb, null, mode, 0);
    }

    @Deprecated
    public SpdySession createSession(String authority, String domain, Object sessionUserData, SessionCb sessioncb, int mode) throws SpdyErrorException {
        return createSession(authority, domain, sessionUserData, sessioncb, null, mode, 0);
    }

    @Deprecated
    public SpdySession createSession(String authority, Object sessionUserData, SessionCb sessioncb, SslCertcb sslctx, int mode) throws SpdyErrorException {
        return createSession(authority, "", sessionUserData, sessioncb, sslctx, mode, 0);
    }

    public SpdySession createSession(SessionInfo info) throws SpdyErrorException {
        return createSession(info.getAuthority(), info.getDomain(), info.getSessonUserData(), info.getSessionCb(), null, info.getMode(), info.getPubKeySeqNum(), info.getConnectionTimeoutMs(), info.getCertHost());
    }

    @Deprecated
    public SpdySession createSession(String authority, String domain, Object sessionUserData, SessionCb sessioncb, SslCertcb sslctx, int mode, int seqnum) throws SpdyErrorException {
        return createSession(authority, domain, sessionUserData, sessioncb, sslctx, mode, seqnum, -1);
    }

    public SpdySession createSession(String authority, String domain, Object sessionUserData, SessionCb sessioncb, SslCertcb sslctx, int mode, int pubkey_seqnum, int connTimeoutM) throws SpdyErrorException {
        return createSession(authority, domain, sessionUserData, sessioncb, sslctx, mode, pubkey_seqnum, connTimeoutM, null);
    }

    public SpdySession createSession(String authority, String domain, Object sessionUserData, SessionCb sessioncb, SslCertcb sslctx, int mode, int pubkey_seqnum, int connTimeoutMs, String certHost) throws SpdyErrorException {
        Throwable th;
        if (authority == null) {
            throw new SpdyErrorException("SPDY_JNI_ERR_INVALID_PARAM", (int) TnetStatusCode.TNET_JNI_ERR_INVLID_PARAM);
        }
        String complteAuthority = authority;
        String[] hosts = authority.split("/");
        String[] addr = hosts[0].split(SymbolExpUtil.SYMBOL_COLON);
        byte[] proxyIp = "0.0.0.0".getBytes();
        char proxyPort = 0;
        if (hosts.length != 1) {
            String[] proxyAddr = hosts[1].split(SymbolExpUtil.SYMBOL_COLON);
            proxyIp = proxyAddr[0].getBytes();
            proxyPort = (char) Integer.parseInt(proxyAddr[1]);
        } else {
            complteAuthority = complteAuthority + "/0.0.0.0:0";
        }
        agentIsOpen();
        boolean exceed = false;
        r.lock();
        try {
            SpdySession oldsession = (SpdySession) this.sessionMgr.get(complteAuthority + domain + mode);
            if (this.sessionMgr.size() >= 50) {
                exceed = true;
            }
            r.unlock();
            if (exceed) {
                throw new SpdyErrorException("SPDY_SESSION_EXCEED_MAXED: session count exceed max", (int) TnetStatusCode.TNET_SESSION_EXCEED_MAXED);
            } else if (oldsession != null) {
                oldsession.increRefCount();
                return oldsession;
            } else {
                w.lock();
                try {
                    oldsession = (SpdySession) this.sessionMgr.get(complteAuthority + domain + mode);
                } catch (Throwable th2) {
                    oldsession = null;
                }
                if (oldsession != null) {
                    w.unlock();
                    oldsession.increRefCount();
                    return oldsession;
                }
                SpdySession session;
                try {
                    session = new SpdySession(0, this, complteAuthority, domain, sessioncb, mode, pubkey_seqnum, sessionUserData);
                    byte[] cert_host_b = certHost == null ? null : certHost.getBytes();
                    try {
                        long ret;
                        long ptr;
                        int err;
                        int domainIndex = getDomainHashIndex(domain + mode);
                        if (this.proxyUsername == null || this.proxyPassword == null) {
                            ret = createSessionN(this.agentNativePtr, session, domainIndex, addr[0].getBytes(), (char) Integer.parseInt(addr[1]), proxyIp, proxyPort, null, null, sessionUserData, mode, pubkey_seqnum, connTimeoutMs, cert_host_b);
                        } else {
                            ret = createSessionN(this.agentNativePtr, session, domainIndex, addr[0].getBytes(), (char) Integer.parseInt(addr[1]), proxyIp, proxyPort, this.proxyUsername.getBytes(), this.proxyPassword.getBytes(), sessionUserData, mode, pubkey_seqnum, connTimeoutMs, cert_host_b);
                        }
                        spduLog.Logi("tnet-jni", " create new session: " + authority);
                        if ((1 & ret) == 1) {
                            ptr = 0;
                            err = (int) (ret >> 1);
                        } else {
                            ptr = ret;
                            err = 0;
                        }
                        if (ptr != 0) {
                            session.setSessionNativePtr(ptr);
                            this.sessionMgr.put(complteAuthority + domain + mode, session);
                            this.sessionQueue.add(session);
                        } else if (err != 0) {
                            throw new SpdyErrorException("create session error: " + err, err);
                        } else {
                            session = null;
                        }
                        w.unlock();
                        return session;
                    } catch (Throwable th3) {
                        th = th3;
                        w.unlock();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    session = null;
                    w.unlock();
                    throw th;
                }
            }
        } catch (Throwable th5) {
            r.unlock();
        }
    }

    @Deprecated
    public SpdySession submitRequest(SpdyRequest req, SpdyDataProvider dataPro, Object sessionUserData, Object streamUserData, Spdycb streamCallback, SessionCb sessioncb, SslCertcb sslctx, int sessionMode) throws SpdyErrorException {
        SpdySession session = createSession(req.getAuthority(), req.getDomain(), sessionUserData, sessioncb, sslctx, sessionMode, 0, req.getConnectionTimeoutMs());
        session.submitRequest(req, dataPro, streamUserData, streamCallback);
        return session;
    }

    @Deprecated
    public SpdySession submitRequest(SpdyRequest req, SpdyDataProvider dataPro, Object sessionUserData, Object streamUserData, Spdycb streamCallback, SessionCb sessioncb, SslCertcb sslctx, int sessionMode, int pubkey_seqnum) throws SpdyErrorException {
        SpdySession session = createSession(req.getAuthority(), req.getDomain(), sessionUserData, sessioncb, sslctx, sessionMode, pubkey_seqnum, req.getConnectionTimeoutMs());
        session.submitRequest(req, dataPro, streamUserData, streamCallback);
        return session;
    }

    public SpdySession submitRequest(SpdyRequest req, SpdyDataProvider dataPro, Object sessionUserData, Object streamUserData, Spdycb streamCallback, SessionCb sessioncb, int sessionMode, int pubkey_seqnum) throws SpdyErrorException {
        return submitRequest(req, dataPro, sessionUserData, streamUserData, streamCallback, sessioncb, null, sessionMode, pubkey_seqnum);
    }

    @Deprecated
    public SpdySession submitRequest(SpdyRequest req, SpdyDataProvider dataPro, Object sessionUserData, Object streamUserData, Spdycb streamCallback, SessionCb sessioncb, int sessionMode) throws SpdyErrorException {
        return submitRequest(req, dataPro, sessionUserData, streamUserData, streamCallback, sessioncb, null, sessionMode);
    }

    private void agentIsOpen() {
        if (this.closed.get()) {
            throw new SpdyErrorException("SPDY_JNI_ERR_ASYNC_CLOSE", (int) TnetStatusCode.TNET_JNI_ERR_ASYNC_CLOSE);
        }
        checkLoadSo();
    }

    public void close() {
    }

    void removeSession(SpdySession session) {
        w.lock();
        try {
            this.sessionQueue.remove(session);
        } finally {
            w.unlock();
        }
    }

    int closeSession(long ptr) {
        return closeSessionN(ptr);
    }

    static String[] mapToByteArray(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        String[] array = new String[(map.size() * 2)];
        int i = 0;
        for (Entry<String, String> next : map.entrySet()) {
            array[i] = (String) next.getKey();
            array[i + 1] = (String) next.getValue();
            i += 2;
        }
        return array;
    }

    static Map<String, List<String>> stringArrayToMap(String[] data) {
        if (data == null) {
            return null;
        }
        Map<String, List<String>> map = new HashMap(5);
        int i = 0;
        while (i + 2 <= data.length) {
            if (data[i] == null || data[i + 1] == null) {
                return null;
            }
            List<String> value = (List) map.get(data[i]);
            if (value == null) {
                value = new ArrayList(1);
                map.put(data[i], value);
            }
            value.add(data[i + 1]);
            i += 2;
        }
        return map;
    }

    @Deprecated
    public int setSessionKind(SpdySessionKind kind) {
        int old = -1;
        agentIsOpen();
        try {
            return setSessionKind(this.agentNativePtr, kind.getint());
        } catch (UnsatisfiedLinkError ep) {
            ep.printStackTrace();
            return old;
        }
    }

    @Deprecated
    public int setConnectTimeOut(int timeout) {
        int err = 0;
        agentIsOpen();
        try {
            return setConTimeout(this.agentNativePtr, timeout);
        } catch (UnsatisfiedLinkError ep) {
            ep.printStackTrace();
            return err;
        }
    }

    public void setAccsSslCallback(AccsSSLCallback cb) {
        spduLog.Logi("tnet-jni", "[setAccsSslCallback] - " + cb.getClass());
        this.accsSSLCallback = cb;
    }

    private void spdySessionConnectCB(SpdySession session, SuperviseConnectInfo info) {
        spduLog.Logi("tnet-jni", "[spdySessionConnectCB] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdySessionConnectCB] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdySessionConnectCB] - session.intenalcb is null");
        } else {
            session.intenalcb.spdySessionConnectCB(session, info);
        }
    }

    private void spdyDataChunkRecvCB(SpdySession session, boolean fin, int streamId, SpdyByteArray data, int userData) {
        spduLog.Logi("tnet-jni", "[spdyDataChunkRecvCB] - ");
        long stmid = ((long) streamId) & 4294967295L;
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyDataChunkRecvCB] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyDataChunkRecvCB] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyDataChunkRecvCB(session, fin, stmid, data, userData);
        }
    }

    private void spdyDataRecvCallback(SpdySession session, boolean fin, int streamId, int length, int userData) {
        spduLog.Logi("tnet-jni", "[spdyDataRecvCallback] - ");
        long stmid = ((long) streamId) & 4294967295L;
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyDataRecvCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyDataRecvCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyDataRecvCallback(session, fin, stmid, length, userData);
        }
    }

    private void spdyDataSendCallback(SpdySession session, boolean fin, int streamId, int length, int userData) {
        long stmid = ((long) streamId) & 4294967295L;
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyDataSendCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyDataSendCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyDataSendCallback(session, fin, stmid, length, userData);
        }
    }

    private void spdyStreamCloseCallback(SpdySession session, int streamId, int statusCode, int userData, SuperviseData supData) {
        spduLog.Logi("tnet-jni", "[spdyStreamCloseCallback] - ");
        long stmid = ((long) streamId) & 4294967295L;
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyStreamCloseCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyStreamCloseCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyStreamCloseCallback(session, stmid, statusCode, userData, supData);
        }
    }

    private void spdyPingRecvCallback(SpdySession session, int unique_id, Object userData) {
        spduLog.Logi("tnet-jni", "[spdyPingRecvCallback] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyPingRecvCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyPingRecvCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyPingRecvCallback(session, (long) unique_id, userData);
        }
    }

    private void spdyCustomControlFrameRecvCallback(SpdySession session, Object userData, int node, int type, int flags, int length, byte[] data) {
        spduLog.Logi("tnet-jni", "[spdyCustomControlFrameRecvCallback] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyCustomControlFrameRecvCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyCustomControlFrameRecvCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyCustomControlFrameRecvCallback(session, userData, node, type, flags, length, data);
        }
    }

    private void spdyCustomControlFrameFailCallback(SpdySession session, Object userData, int id, int error) {
        spduLog.Logi("tnet-jni", "[spdyCustomControlFrameFailCallback] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyCustomControlFrameFailCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyCustomControlFrameFailCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyCustomControlFrameFailCallback(session, userData, id, error);
        }
    }

    private void bioPingRecvCallback(SpdySession session, int pingId) {
        spduLog.Logi("tnet-jni", "[bioPingRecvCallback] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[bioPingRecvCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[bioPingRecvCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.bioPingRecvCallback(session, pingId);
        }
    }

    private void spdyRequestRecvCallback(SpdySession session, int streamId, int userData) {
        long stmid = ((long) streamId) & 4294967295L;
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyRequestRecvCallback] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyRequestRecvCallback] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyRequestRecvCallback(session, stmid, userData);
        }
    }

    private void spdyStreamResponseRecv(SpdySession session, int streamId, String[] headers, int userData) {
        spduLog.Logi("tnet-jni", "[spdyStreamResponseRecv] - ");
        Map<String, List<String>> map = stringArrayToMap(headers);
        long stmid = ((long) streamId) & 4294967295L;
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdyStreamResponseRecv] - session is null");
        } else if (session.intenalcb == null) {
            spduLog.Logi("tnet-jni", "[spdyStreamResponseRecv] - session.intenalcb is null");
        } else {
            session.intenalcb.spdyOnStreamResponse(session, stmid, map, userData);
        }
    }

    private void spdySessionCloseCallback(SpdySession session, Object userData, SuperviseConnectInfo connInfo, int error) {
        spduLog.Logi("tnet-jni", "[spdySessionCloseCallback] - errorCode = " + error);
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdySessionCloseCallback] - session is null");
        } else {
            try {
                if (session.intenalcb == null) {
                    spduLog.Logi("tnet-jni", "[spdySessionCloseCallback] - session.intenalcb is null");
                } else {
                    session.intenalcb.spdySessionCloseCallback(session, userData, connInfo, error);
                }
                session.cleanUp();
            } catch (Throwable th) {
                session.cleanUp();
            }
        }
        session.releasePptr();
    }

    private void spdySessionFailedError(SpdySession session, int error, Object sessionUserData) {
        spduLog.Logi("tnet-jni", "[spdySessionFailedError] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdySessionFailedError] - session is null");
        } else {
            try {
                if (session.intenalcb == null) {
                    spduLog.Logi("tnet-jni", "[spdySessionFailedError] - session.intenalcb is null");
                } else {
                    session.intenalcb.spdySessionFailedError(session, error, sessionUserData);
                }
                session.cleanUp();
            } catch (Throwable th) {
                session.cleanUp();
            }
        }
        session.releasePptr();
    }

    private void spdySessionOnWritable(SpdySession session, Object sessionUserData, int size) {
        spduLog.Logi("tnet-jni", "[spdySessionOnWritable] - ");
        if (session == null) {
            spduLog.Logi("tnet-jni", "[spdySessionOnWritable] - session is null");
            return;
        }
        try {
            if (session.intenalcb == null) {
                spduLog.Logi("tnet-jni", "[spdySessionOnWritable] - session.intenalcb is null");
            } else {
                session.intenalcb.spdySessionOnWritable(session, sessionUserData, size);
            }
        } catch (Throwable e) {
            spduLog.Loge("tnet-jni", "[spdySessionOnWritable] - exception:" + e);
        }
    }

    private byte[] getSSLPublicKey(int seqnum, byte[] ciphertext) {
        if (this.accsSSLCallback != null) {
            return this.accsSSLCallback.getSSLPublicKey(seqnum, ciphertext);
        }
        spduLog.Logd("tnet-jni", "[getSSLPublicKey] - accsSSLCallback is null.");
        return null;
    }

    private int putSSLMeta(SpdySession session, byte[] sslMeta) {
        if (session == null) {
            spduLog.Logi("tnet-jni", "[putSSLMeta] - session is null");
            return -1;
        } else if (session.intenalcb != null) {
            return session.intenalcb.putSSLMeta(session, sslMeta);
        } else {
            spduLog.Logi("tnet-jni", "[putSSLMeta] - session.intenalcb is null");
            return -1;
        }
    }

    private byte[] getSSLMeta(SpdySession session) {
        if (session == null) {
            spduLog.Logi("tnet-jni", "[getSSLMeta] - session is null");
            return null;
        } else if (session.intenalcb != null) {
            return session.intenalcb.getSSLMeta(session);
        } else {
            spduLog.Logi("tnet-jni", "[getSSLMeta] - session.intenalcb is null");
            return null;
        }
    }

    private void getPerformance(SpdySession session, SslPermData perm) {
    }

    public HashMap<String, SpdySession> getAllSession() {
        return this.sessionMgr;
    }

    private static void crashReporter(int error) {
    }

    public int configLogFile(String path, int fileSize, int fileNum) {
        return loadSucc ? configLogFileN(path, fileSize, fileNum) : -1;
    }

    public int configLogFile(String path, int fileSize, int fileNum, int bufferSize) {
        return loadSucc ? configLogFileN(path, fileSize, fileNum, bufferSize) : -1;
    }

    public void logFileFlush() {
        if (loadSucc) {
            logFileFlushN();
        }
    }

    public void logFileClose() {
        if (loadSucc) {
            logFileFlushN();
            logFileCloseN();
        }
    }

    @Deprecated
    public void switchAccsServer(int serverMode) {
    }

    @Deprecated
    public static void inspect(String message) {
    }

    public static int configIpStackMode(int mode) {
        spduLog.Logi("tnet-jni", "[configIpStackMode] - " + mode);
        return configIpStackModeN(mode);
    }
}
