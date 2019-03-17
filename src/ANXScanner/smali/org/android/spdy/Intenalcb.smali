.class public interface abstract Lorg/android/spdy/Intenalcb;
.super Ljava/lang/Object;
.source "Intenalcb.java"


# virtual methods
.method public abstract bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
.end method

.method public abstract getSSLMeta(Lorg/android/spdy/SpdySession;)[B
.end method

.method public abstract putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
.end method

.method public abstract spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
.end method

.method public abstract spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
.end method

.method public abstract spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;I)V
.end method

.method public abstract spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V
.end method

.method public abstract spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V
.end method

.method public abstract spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation
.end method

.method public abstract spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
.end method

.method public abstract spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V
.end method

.method public abstract spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
.end method

.method public abstract spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
.end method

.method public abstract spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
.end method

.method public abstract spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
.end method

.method public abstract spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JIILorg/android/spdy/SuperviseData;)V
.end method
