.class public Lcn/kuaipan/android/kss/download/KssDownloader;
.super Ljava/lang/Object;
.source "KssDownloader.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# instance fields
.field private final mTransmitter:Lcn/kuaipan/android/http/KscHttpTransmitter;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpTransmitter;)V
    .locals 0
    .param p1, "transmitter"    # Lcn/kuaipan/android/http/KscHttpTransmitter;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/KssDownloader;->mTransmitter:Lcn/kuaipan/android/http/KscHttpTransmitter;

    .line 32
    return-void
.end method

.method private download(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/kss/download/KssAccessor;Lcn/kuaipan/android/kss/download/LoadMap;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 33
    .param p1, "request"    # Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    .param p2, "accessor"    # Lcn/kuaipan/android/kss/download/KssAccessor;
    .param p3, "map"    # Lcn/kuaipan/android/kss/download/LoadMap;
    .param p4, "retry"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/security/InvalidKeyException;,
            Lcn/kuaipan/android/exception/KscException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->obtainRecorder()Lcn/kuaipan/android/kss/download/LoadRecorder;

    move-result-object v23

    .line 132
    .local v23, "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    :goto_0
    if-eqz v23, :cond_f

    .line 133
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 137
    :cond_0
    invoke-virtual/range {v23 .. v23}, Lcn/kuaipan/android/kss/download/LoadRecorder;->getSpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v6

    invoke-virtual {v6}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->getStart()J

    move-result-wide v28

    .line 139
    .local v28, "start":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getBlockUrls(J)[Ljava/lang/String;

    move-result-object v27

    .line 142
    .local v27, "urls":[Ljava/lang/String;
    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/kss/download/LoadMap;->getBlockStart(J)J

    move-result-wide v30

    sub-long v20, v28, v30

    .line 144
    .local v20, "range":J
    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    array-length v6, v0

    if-gtz v6, :cond_2

    .line 145
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v30, "No available urls to download."

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    :cond_2
    new-instance v22, Lcn/kuaipan/android/kss/RC4Encoder;

    invoke-interface/range {p1 .. p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getSecureKey()[B

    move-result-object v6

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcn/kuaipan/android/kss/RC4Encoder;-><init>([B)V

    .line 149
    .local v22, "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, v27

    array-length v6, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    .line 150
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 154
    :cond_3
    const/16 v24, 0x0

    .line 155
    .local v24, "req":Lcn/kuaipan/android/http/KscHttpRequest;
    const/16 v26, 0x0

    .line 156
    .local v26, "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    const/4 v14, 0x0

    .line 158
    .local v14, "completed":Z
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lcn/kuaipan/android/kss/RC4Encoder;->init()V

    .line 160
    aget-object v7, v27, v17

    .line 161
    .local v7, "url":Ljava/lang/String;
    new-instance v25, Lcn/kuaipan/android/http/KscHttpRequest;

    sget-object v6, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v7, v1, v2}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v24    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .local v25, "req":Lcn/kuaipan/android/http/KscHttpRequest;
    const-wide/16 v30, 0x0

    cmp-long v6, v20, v30

    if-lez v6, :cond_4

    .line 163
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    const-string v30, "Range"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "bytes="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 167
    .local v18, "execStartTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/kuaipan/android/kss/download/KssDownloader;->mTransmitter:Lcn/kuaipan/android/http/KscHttpTransmitter;

    const/16 v30, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lcn/kuaipan/android/http/KscHttpTransmitter;->execute(Lcn/kuaipan/android/http/KscHttpRequest;I)Lcn/kuaipan/android/http/KscHttpResponse;

    move-result-object v26

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v8, v30, v18

    .line 169
    .local v8, "timeCost":J
    const-wide/16 v10, 0x0

    .line 170
    .local v10, "size":J
    invoke-virtual/range {v26 .. v26}, Lcn/kuaipan/android/http/KscHttpResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 171
    invoke-virtual/range {v26 .. v26}, Lcn/kuaipan/android/http/KscHttpResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 172
    .local v16, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v16, :cond_5

    .line 173
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 176
    .end local v16    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    invoke-virtual/range {v26 .. v26}, Lcn/kuaipan/android/http/KscHttpResponse;->getStatusCode()I

    move-result v12

    .line 177
    .local v12, "statusCode":I
    const-string v13, ""

    .line 178
    .local v13, "exceptionName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcn/kuaipan/android/http/KscHttpResponse;->getError()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 179
    invoke-virtual/range {v26 .. v26}, Lcn/kuaipan/android/http/KscHttpResponse;->getError()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    .line 181
    :cond_6
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 182
    invoke-static/range {v26 .. v26}, Lcn/kuaipan/android/exception/ErrorHelper;->throwError(Lcn/kuaipan/android/http/KscHttpResponse;)V

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/kuaipan/android/kss/download/KssDownloader;->save(Lcn/kuaipan/android/http/KscHttpResponse;Lcn/kuaipan/android/kss/download/KssAccessor;Lcn/kuaipan/android/kss/download/LoadRecorder;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 186
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lcn/kuaipan/android/kss/download/LoadMap;->verify(Lcn/kuaipan/android/kss/download/KssAccessor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    const/4 v14, 0x1

    .line 196
    if-nez v14, :cond_8

    if-eqz v25, :cond_8

    .line 197
    invoke-virtual/range {v25 .. v25}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 201
    :goto_2
    if-eqz v23, :cond_7

    .line 202
    invoke-virtual/range {v23 .. v23}, Lcn/kuaipan/android/kss/download/LoadRecorder;->recycle()V

    .line 207
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "timeCost":J
    .end local v10    # "size":J
    .end local v12    # "statusCode":I
    .end local v13    # "exceptionName":Ljava/lang/String;
    .end local v14    # "completed":Z
    .end local v18    # "execStartTime":J
    .end local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .end local v26    # "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->obtainRecorder()Lcn/kuaipan/android/kss/download/LoadRecorder;

    move-result-object v23

    .line 208
    goto/16 :goto_0

    .line 199
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v8    # "timeCost":J
    .restart local v10    # "size":J
    .restart local v12    # "statusCode":I
    .restart local v13    # "exceptionName":Ljava/lang/String;
    .restart local v14    # "completed":Z
    .restart local v18    # "execStartTime":J
    .restart local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v26    # "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/kuaipan/android/kss/download/KssDownloader;->releaseResponse(Lcn/kuaipan/android/http/KscHttpResponse;)V

    goto :goto_2

    .line 189
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "timeCost":J
    .end local v10    # "size":J
    .end local v12    # "statusCode":I
    .end local v13    # "exceptionName":Ljava/lang/String;
    .end local v18    # "execStartTime":J
    .end local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v24    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    :catch_0
    move-exception v15

    .line 190
    .local v15, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-static {v15}, Lcn/kuaipan/android/exception/ErrorHelper;->handleInterruptException(Ljava/lang/Throwable;)V

    .line 191
    move-object/from16 v0, v27

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v17

    if-lt v0, v6, :cond_b

    .line 192
    if-nez v26, :cond_a

    const-string v6, "No response."

    :goto_4
    invoke-static {v15, v6}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-nez v14, :cond_e

    if-eqz v24, :cond_e

    .line 197
    invoke-virtual/range {v24 .. v24}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 201
    :goto_6
    if-eqz v23, :cond_9

    .line 202
    invoke-virtual/range {v23 .. v23}, Lcn/kuaipan/android/kss/download/LoadRecorder;->recycle()V

    :cond_9
    throw v6

    .line 193
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    goto :goto_4

    .line 196
    :cond_b
    if-nez v14, :cond_d

    if-eqz v24, :cond_d

    .line 197
    invoke-virtual/range {v24 .. v24}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 201
    :goto_7
    if-eqz v23, :cond_c

    .line 202
    invoke-virtual/range {v23 .. v23}, Lcn/kuaipan/android/kss/download/LoadRecorder;->recycle()V

    .line 149
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 199
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/kuaipan/android/kss/download/KssDownloader;->releaseResponse(Lcn/kuaipan/android/http/KscHttpResponse;)V

    goto :goto_7

    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcn/kuaipan/android/kss/download/KssDownloader;->releaseResponse(Lcn/kuaipan/android/http/KscHttpResponse;)V

    goto :goto_6

    .line 209
    .end local v14    # "completed":Z
    .end local v17    # "i":I
    .end local v20    # "range":J
    .end local v22    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    .end local v24    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .end local v26    # "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    .end local v27    # "urls":[Ljava/lang/String;
    .end local v28    # "start":J
    :cond_f
    return-void

    .line 196
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v14    # "completed":Z
    .restart local v17    # "i":I
    .restart local v20    # "range":J
    .restart local v22    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    .restart local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v26    # "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    .restart local v27    # "urls":[Ljava/lang/String;
    .restart local v28    # "start":J
    :catchall_1
    move-exception v6

    move-object/from16 v24, v25

    .end local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v24    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    goto :goto_5

    .line 189
    .end local v24    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    :catch_1
    move-exception v15

    move-object/from16 v24, v25

    .end local v25    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v24    # "req":Lcn/kuaipan/android/http/KscHttpRequest;
    goto :goto_3
.end method

.method private releaseResponse(Lcn/kuaipan/android/http/KscHttpResponse;)V
    .locals 2
    .param p1, "response"    # Lcn/kuaipan/android/http/KscHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpResponse;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lcn/kuaipan/android/exception/ErrorHelper;->isInterrupted(Ljava/lang/Throwable;)Ljava/lang/InterruptedException;

    move-result-object v0

    .line 245
    .local v0, "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_0

    .line 246
    throw v0
.end method

.method private save(Lcn/kuaipan/android/http/KscHttpResponse;Lcn/kuaipan/android/kss/download/KssAccessor;Lcn/kuaipan/android/kss/download/LoadRecorder;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 9
    .param p1, "response"    # Lcn/kuaipan/android/http/KscHttpResponse;
    .param p2, "accessor"    # Lcn/kuaipan/android/kss/download/KssAccessor;
    .param p3, "recorder"    # Lcn/kuaipan/android/kss/download/LoadRecorder;
    .param p4, "retry"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 216
    .local v3, "received":Z
    :try_start_0
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    if-nez v1, :cond_1

    .line 218
    new-instance v4, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v5, 0x7a128

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not meet exception, but no response.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 219
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {p4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    throw v4

    .line 222
    :cond_1
    const/4 v2, 0x0

    .line 223
    .local v2, "len":I
    const/16 v4, 0x2000

    :try_start_1
    new-array v0, v4, [B

    .line 224
    .local v0, "buf":[B
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_3

    .line 225
    const/4 v3, 0x1

    .line 226
    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v2, p3}, Lcn/kuaipan/android/kss/download/KssAccessor;->write([BIILcn/kuaipan/android/kss/download/LoadRecorder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ge v4, v2, :cond_2

    .line 233
    :cond_3
    if-eqz v3, :cond_4

    .line 234
    invoke-virtual {p4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 237
    :cond_4
    return-void
.end method


# virtual methods
.method public download(Ljava/io/File;ZLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/IKssDownloadRequestResult;)V
    .locals 22
    .param p1, "savePath"    # Ljava/io/File;
    .param p2, "append"    # Z
    .param p3, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p4, "request"    # Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    const/4 v4, 0x0

    .line 38
    .local v4, "completed":Z
    const/4 v7, 0x0

    .line 39
    .local v7, "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    const/4 v9, 0x0

    .line 41
    .local v9, "map":Lcn/kuaipan/android/kss/download/LoadMap;
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getTotalSize()J

    move-result-wide v16

    .line 43
    .local v16, "size":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 44
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v15, v20, v16

    if-lez v15, :cond_4

    .line 45
    :cond_0
    invoke-static/range {p1 .. p1}, Lcn/kuaipan/android/utils/FileUtils;->deletes(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 46
    new-instance v15, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed delete target file. Can\'t download to dest path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v16    # "size":J
    :catchall_0
    move-exception v15

    :goto_0
    if-eqz v2, :cond_1

    .line 111
    :try_start_1
    invoke-virtual {v2}, Lcn/kuaipan/android/kss/download/KssAccessor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 116
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 117
    if-eqz v4, :cond_f

    .line 118
    invoke-virtual {v7}, Lcn/kuaipan/android/kss/download/KInfo;->delete()V

    .line 122
    :cond_2
    :goto_2
    throw v15

    .line 52
    .restart local v16    # "size":J
    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_4
    new-instance v10, Lcn/kuaipan/android/kss/download/LoadMap;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v1}, Lcn/kuaipan/android/kss/download/LoadMap;-><init>(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/http/IKscTransferListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .end local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .local v10, "map":Lcn/kuaipan/android/kss/download/LoadMap;
    const/4 v11, 0x0

    .line 58
    .local v11, "mapLoaded":Z
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcn/kuaipan/android/kss/download/KInfo;->getInfoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 59
    .local v6, "infoFile":Ljava/io/File;
    new-instance v8, Lcn/kuaipan/android/kss/download/KInfo;

    invoke-direct {v8, v6}, Lcn/kuaipan/android/kss/download/KInfo;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 60
    .end local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .local v8, "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 61
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/download/KInfo;->load()V

    .line 62
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/download/KInfo;->getHash()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {p4 .. p4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getHash()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 63
    invoke-virtual {v8, v10}, Lcn/kuaipan/android/kss/download/KInfo;->loadToMap(Lcn/kuaipan/android/kss/download/LoadMap;)Z

    move-result v11

    .line 67
    :cond_5
    if-nez v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Lcn/kuaipan/android/kss/download/LoadMap;->initSize(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 72
    :cond_6
    :try_start_5
    new-instance v3, Lcn/kuaipan/android/kss/download/KssAccessor;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcn/kuaipan/android/kss/download/KssAccessor;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 73
    .end local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .local v3, "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v10, v3, v15}, Lcn/kuaipan/android/kss/download/LoadMap;->verify(Lcn/kuaipan/android/kss/download/KssAccessor;Z)V

    .line 75
    invoke-interface/range {p4 .. p4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getTotalSize()J

    move-result-wide v18

    .line 76
    .local v18, "targetSize":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v15, v20, v18

    if-eqz v15, :cond_7

    .line 77
    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcn/kuaipan/android/kss/download/KssAccessor;->inflate(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    :cond_7
    :try_start_7
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 84
    .local v14, "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_3
    invoke-virtual {v10}, Lcn/kuaipan/android/kss/download/LoadMap;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 85
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 86
    new-instance v15, Ljava/lang/InterruptedException;

    invoke-direct {v15}, Ljava/lang/InterruptedException;-><init>()V

    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 109
    .end local v14    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v18    # "targetSize":J
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    move-object v7, v8

    .end local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    move-object v2, v3

    .end local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    goto/16 :goto_0

    .line 79
    .end local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .end local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v15, "Local IO error, when prepare kss download."

    invoke-static {v5, v15}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v15

    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 109
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    move-object v7, v8

    .end local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    goto/16 :goto_0

    .line 90
    .end local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .end local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .end local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v14    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v18    # "targetSize":J
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3, v10, v14}, Lcn/kuaipan/android/kss/download/KssDownloader;->download(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/kss/download/KssAccessor;Lcn/kuaipan/android/kss/download/LoadMap;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 91
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_9
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 92
    :catch_1
    move-exception v5

    .line 93
    .local v5, "e":Ljava/security/InvalidKeyException;
    :try_start_a
    const-string v15, "Failed when download kss block."

    invoke-static {v5, v15}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v15

    throw v15

    .line 94
    .end local v5    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v5

    .line 95
    .local v5, "e":Lcn/kuaipan/android/exception/KscException;
    invoke-static {v5}, Lcn/kuaipan/android/exception/ErrorHelper;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v15

    if-ltz v15, :cond_9

    .line 97
    const-wide/16 v20, 0x1388

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 99
    :cond_9
    throw v5

    .line 104
    .end local v5    # "e":Lcn/kuaipan/android/exception/KscException;
    :cond_a
    invoke-interface/range {p4 .. p4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getModifyTime()J

    move-result-wide v12

    .line 105
    .local v12, "modifyTime":J
    const-wide/16 v20, 0x0

    cmp-long v15, v12, v20

    if-lez v15, :cond_b

    .line 106
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/File;->setLastModified(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 109
    :cond_b
    if-eqz v3, :cond_c

    .line 111
    :try_start_b
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/KssAccessor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 116
    :cond_c
    :goto_5
    if-eqz v8, :cond_d

    .line 117
    if-eqz v4, :cond_e

    .line 118
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/download/KInfo;->delete()V

    .line 126
    :cond_d
    :goto_6
    return-void

    .line 119
    :cond_e
    if-eqz v10, :cond_d

    .line 120
    invoke-interface/range {p4 .. p4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getHash()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcn/kuaipan/android/kss/download/KInfo;->setHash(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8, v10}, Lcn/kuaipan/android/kss/download/KInfo;->setLoadMap(Lcn/kuaipan/android/kss/download/LoadMap;)V

    .line 122
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/download/KInfo;->save()V

    goto :goto_6

    .line 119
    .end local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .end local v6    # "infoFile":Ljava/io/File;
    .end local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .end local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .end local v11    # "mapLoaded":Z
    .end local v12    # "modifyTime":J
    .end local v14    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v16    # "size":J
    .end local v18    # "targetSize":J
    .restart local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    :cond_f
    if-eqz v9, :cond_2

    .line 120
    invoke-interface/range {p4 .. p4}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getHash()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcn/kuaipan/android/kss/download/KInfo;->setHash(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v7, v9}, Lcn/kuaipan/android/kss/download/KInfo;->setLoadMap(Lcn/kuaipan/android/kss/download/LoadMap;)V

    .line 122
    invoke-virtual {v7}, Lcn/kuaipan/android/kss/download/KInfo;->save()V

    goto/16 :goto_2

    .line 112
    .end local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .end local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .end local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v6    # "infoFile":Ljava/io/File;
    .restart local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v11    # "mapLoaded":Z
    .restart local v12    # "modifyTime":J
    .restart local v14    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v16    # "size":J
    .restart local v18    # "targetSize":J
    :catch_3
    move-exception v15

    goto :goto_5

    .end local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .end local v6    # "infoFile":Ljava/io/File;
    .end local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .end local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .end local v11    # "mapLoaded":Z
    .end local v12    # "modifyTime":J
    .end local v14    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v16    # "size":J
    .end local v18    # "targetSize":J
    .restart local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    :catch_4
    move-exception v20

    goto/16 :goto_1

    .line 109
    .end local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v11    # "mapLoaded":Z
    .restart local v16    # "size":J
    :catchall_3
    move-exception v15

    move-object v9, v10

    .end local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    goto/16 :goto_0

    .line 79
    .end local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .end local v7    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .end local v9    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    .restart local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v6    # "infoFile":Ljava/io/File;
    .restart local v8    # "kinfo":Lcn/kuaipan/android/kss/download/KInfo;
    .restart local v10    # "map":Lcn/kuaipan/android/kss/download/LoadMap;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    .restart local v2    # "accessor":Lcn/kuaipan/android/kss/download/KssAccessor;
    goto :goto_4
.end method
