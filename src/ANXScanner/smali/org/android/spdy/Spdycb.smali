.class public interface abstract Lorg/android/spdy/Spdycb;
.super Ljava/lang/Object;
.source "Spdycb.java"


# virtual methods
.method public abstract spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
.end method

.method public abstract spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
.end method

.method public abstract spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
.end method

.method public abstract spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
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
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
.end method

.method public abstract spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
.end method
