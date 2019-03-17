package org.android.spdy;

import java.util.List;
import java.util.Map;

final class SpdySessionCallBack implements Intenalcb {
    SpdySessionCallBack() {
    }

    public void spdyDataChunkRecvCB(SpdySession session, boolean fin, long streamId, SpdyByteArray data, int index) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyDataChunkRecvCB] - " + session);
        long time = NetTimeGaurd.begin();
        SpdyStreamContext stm = session.getSpdyStream(index);
        if (stm == null || stm.callBack == null) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyDataChunkRecvCB] - no sessionCallBack.");
        } else {
            stm.callBack.spdyDataChunkRecvCB(session, fin, streamId, data, stm.streamContext);
        }
        NetTimeGaurd.end("spdyDataChunkRecvCB", 3, time);
    }

    public void spdyDataRecvCallback(SpdySession session, boolean fin, long streamId, int length, int index) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyDataRecvCallback] - " + session);
        long time = NetTimeGaurd.begin();
        SpdyStreamContext stm = session.getSpdyStream(index);
        if (stm == null || stm.callBack == null) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyDataRecvCallback] - no sessionCallBack.");
        } else {
            stm.callBack.spdyDataRecvCallback(session, fin, streamId, length, stm.streamContext);
        }
        NetTimeGaurd.end("spdyDataRecvCallback", 3, time);
    }

    public void spdyDataSendCallback(SpdySession session, boolean fin, long streamId, int length, int index) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyDataSendCallback] - ");
        SpdyStreamContext stm = session.getSpdyStream(index);
        if (stm == null || stm.callBack == null) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyDataSendCallback] - no sessionCallBack.");
            return;
        }
        stm.callBack.spdyDataSendCallback(session, fin, streamId, length, stm.streamContext);
    }

    public void spdyStreamCloseCallback(SpdySession session, long streamId, int statusCode, int index, SuperviseData data) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyStreamCloseCallback] - " + session);
        long time = NetTimeGaurd.begin();
        SpdyStreamContext stm = session.getSpdyStream(index);
        if (stm == null || stm.callBack == null) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyStreamCloseCallback] - no sessionCallBack.");
        } else {
            spduLog.Logi("tnet-jni", "index=" + index + "    " + "endtime=" + System.currentTimeMillis());
            stm.callBack.spdyStreamCloseCallback(session, streamId, statusCode, stm.streamContext, data);
            session.removeSpdyStream(index);
        }
        NetTimeGaurd.end("spdyStreamCloseCallback", 3, time);
        NetTimeGaurd.finish(3);
    }

    public void spdyRequestRecvCallback(SpdySession session, long stream_id, int index) {
        spduLog.Logd("tnet-jni", "[SpdySessionCallBack.spdyOnStreamResponse] - " + session);
        long time = NetTimeGaurd.begin();
        SpdyStreamContext stm = session.getSpdyStream(index);
        if (stm == null || stm.callBack == null) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyRequestRecvCallback] - no sessionCallBack.");
        } else {
            stm.callBack.spdyRequestRecvCallback(session, stream_id, stm.streamContext);
        }
        NetTimeGaurd.end("spdyPingRecvCallback", 3, time);
    }

    public void spdyOnStreamResponse(SpdySession session, long streamId, Map<String, List<String>> headers, int index) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyOnStreamResponse] - " + session);
        NetTimeGaurd.start(3);
        long time = NetTimeGaurd.begin();
        SpdyStreamContext stm = session.getSpdyStream(index);
        if (stm == null || stm.callBack == null) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyOnStreamResponse] - no sessionCallBack.");
        } else {
            stm.callBack.spdyOnStreamResponse(session, streamId, headers, stm.streamContext);
        }
        NetTimeGaurd.end("spdyOnStreamResponse", 3, time);
    }

    public void spdySessionConnectCB(SpdySession session, SuperviseConnectInfo info) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdySessionConnectCB] - " + session);
        NetTimeGaurd.start(0);
        if (session.sessionCallBack != null) {
            long time = NetTimeGaurd.begin();
            session.sessionCallBack.spdySessionConnectCB(session, info);
            NetTimeGaurd.end("spdySessionConnectCB", 0, time);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdySessionConnectCB] - no sessionCallBack.");
        }
        NetTimeGaurd.finish(0);
    }

    public void spdyPingRecvCallback(SpdySession session, long unique_id, Object sessionUserData) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyPingRecvCallback] - " + session);
        NetTimeGaurd.start(1);
        if (session.sessionCallBack != null) {
            long time = NetTimeGaurd.begin();
            session.sessionCallBack.spdyPingRecvCallback(session, unique_id, sessionUserData);
            NetTimeGaurd.end("spdyPingRecvCallback", 1, time);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyPingRecvCallback] - no sessionCallBack.");
        }
        NetTimeGaurd.finish(1);
    }

    public void spdyCustomControlFrameRecvCallback(SpdySession session, Object sessionUserData, int node, int type, int flags, int length, byte[] data) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - " + session);
        if (session.sessionCallBack != null) {
            session.sessionCallBack.spdyCustomControlFrameRecvCallback(session, sessionUserData, node, type, flags, length, data);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - no sessionCallBack.");
        }
    }

    public void spdyCustomControlFrameFailCallback(SpdySession session, Object sessionUserData, int id, int error) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - " + session);
        if (session.sessionCallBack != null) {
            session.sessionCallBack.spdyCustomControlFrameFailCallback(session, sessionUserData, id, error);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - no sessionCallBack.");
        }
    }

    public void spdySessionFailedError(SpdySession session, int error, Object sessionUserData) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdySessionFailedError] - " + session);
        NetTimeGaurd.start(2);
        if (session.sessionCallBack != null) {
            long time = NetTimeGaurd.begin();
            session.sessionCallBack.spdySessionFailedError(session, error, sessionUserData);
            session.clearAllStreamCb();
            NetTimeGaurd.end("spdySessionFailedError", 2, time);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdySessionFailedError] - no sessionCallBack.");
        }
        NetTimeGaurd.finish(2);
    }

    public void spdySessionOnWritable(SpdySession session, Object sessionUserData, int size) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdySessionOnWritable] - " + session);
        NetTimeGaurd.start(2);
        if (session.sessionCallBack == null || !(session.sessionCallBack instanceof SessionExtraCb)) {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdySessionOnWritable] - no sessionCallBack.");
        } else {
            long time = NetTimeGaurd.begin();
            ((SessionExtraCb) session.sessionCallBack).spdySessionOnWritable(session, sessionUserData, size);
            NetTimeGaurd.end("spdySessionOnWritable", 2, time);
        }
        NetTimeGaurd.finish(2);
    }

    public void spdySessionCloseCallback(SpdySession session, Object userData, SuperviseConnectInfo connInfo, int error) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.spdySessionCloseCallback] - " + session);
        if (session.sessionCallBack != null) {
            session.sessionCallBack.spdySessionCloseCallback(session, userData, connInfo, error);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.spdySessionCloseCallback] - no sessionCallBack.");
        }
    }

    public void bioPingRecvCallback(SpdySession session, int pingId) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.bioPingRecvCallback] - " + session);
        if (session.sessionCallBack != null) {
            session.sessionCallBack.bioPingRecvCallback(session, pingId);
        } else {
            spduLog.Loge("tnet-jni", "[SpdySessionCallBack.bioPingRecvCallback] - no sessionCallBack.");
        }
    }

    public byte[] getSSLMeta(SpdySession session) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.getSSLMeta] - " + session);
        if (session.sessionCallBack != null) {
            return session.sessionCallBack.getSSLMeta(session);
        }
        spduLog.Loge("tnet-jni", "[SpdySessionCallBack.getSSLMeta] - no sessionCallBack.");
        return null;
    }

    public int putSSLMeta(SpdySession session, byte[] sslMeta) {
        spduLog.Logi("tnet-jni", "[SpdySessionCallBack.putSSLMeta] - " + session);
        if (session.sessionCallBack != null) {
            return session.sessionCallBack.putSSLMeta(session, sslMeta);
        }
        spduLog.Loge("tnet-jni", "[SpdySessionCallBack.putSSLMeta] - no sessionCallBack.");
        return -1;
    }
}
