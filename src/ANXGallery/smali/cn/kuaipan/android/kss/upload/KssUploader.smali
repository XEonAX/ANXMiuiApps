.class public Lcn/kuaipan/android/kss/upload/KssUploader;
.super Ljava/lang/Object;
.source "KssUploader.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# static fields
.field public static volatile sBreakForUT:Z


# instance fields
.field private final CRC32:Ljava/util/zip/CRC32;

.field private final CRC_BUF:[B

.field private mChunkSize:J

.field private final mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

.field private final mTransmitter:Lcn/kuaipan/android/http/KscHttpTransmitter;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpTransmitter;Lcn/kuaipan/android/kss/upload/UploadTaskStore;)V
    .locals 2
    .param p1, "transmitter"    # Lcn/kuaipan/android/http/KscHttpTransmitter;
    .param p2, "taskStore"    # Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC32:Ljava/util/zip/CRC32;

    .line 48
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC_BUF:[B

    .line 53
    const-wide/32 v0, 0x10000

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    .line 57
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .line 58
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTransmitter:Lcn/kuaipan/android/http/KscHttpTransmitter;

    .line 59
    return-void
.end method

.method private _uploadChunk(Landroid/net/Uri;JLcn/kuaipan/android/utils/RandomFileInputStream;Lcn/kuaipan/android/kss/RC4Encoder;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;)Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pos"    # J
    .param p4, "in"    # Lcn/kuaipan/android/utils/RandomFileInputStream;
    .param p5, "rc4Decoder"    # Lcn/kuaipan/android/kss/RC4Encoder;
    .param p6, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p7, "info"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v9, 0x0

    .line 275
    .local v9, "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    new-instance v22, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 276
    .local v22, "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ltz v3, :cond_5

    .line 277
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/utils/RandomFileInputStream;->reset()V

    .line 278
    const-wide/32 v10, 0x400000

    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/utils/RandomFileInputStream;->available()I

    move-result v3

    int-to-long v12, v3

    add-long v12, v12, p2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 279
    .local v14, "blockSize":J
    const-wide/16 v10, 0x0

    cmp-long v3, v14, v10

    if-gez v3, :cond_0

    .line 280
    const-string v3, "KssUploader"

    const-string v8, "blockSize<0, adjust blockSize to 4M"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-wide/32 v14, 0x400000

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    sub-long v12, v14, p2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 286
    .local v6, "len":J
    invoke-virtual/range {p7 .. p7}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getMaxChunkSize()J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 288
    move-object/from16 v0, p7

    iget-object v0, v0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mExpectInfo:Lcn/kuaipan/android/kss/upload/ServerExpect;

    move-object/from16 v18, v0

    .line 289
    .local v18, "expectInfo":Lcn/kuaipan/android/kss/upload/ServerExpect;
    if-eqz v18, :cond_2

    .line 290
    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/kss/upload/ServerExpect;->validate()V

    .line 291
    move-object/from16 v0, v18

    iget-wide v10, v0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 292
    move-object/from16 v0, v18

    iget-wide v10, v0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 294
    .local v20, "newLen":J
    const-string v3, "KssUploader"

    const-string v8, "Adjust chunk size from %d to %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 295
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 294
    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-wide/from16 v6, v20

    .line 300
    .end local v20    # "newLen":J
    :cond_1
    move-object/from16 v0, v18

    iget v3, v0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    if-lez v3, :cond_2

    .line 302
    const-string v3, "KssUploader"

    const-string v8, "Sleeping for delay %d(s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget v12, v0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    .line 303
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, v18

    iget v3, v0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 309
    :cond_2
    new-instance v5, Lcn/kuaipan/android/http/DecoderInputStream;

    const/16 v3, 0x2000

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v5, v0, v1, v3}, Lcn/kuaipan/android/http/DecoderInputStream;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/IKscDecoder;I)V

    .line 312
    .local v5, "input":Lcn/kuaipan/android/http/DecoderInputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcn/kuaipan/android/kss/upload/KssUploader;->getCRC(Ljava/io/InputStream;J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 313
    .local v16, "crc":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v8, "body_sum"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 314
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 315
    .local v4, "bodyUri":Landroid/net/Uri;
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/utils/RandomFileInputStream;->reset()V

    .line 316
    new-instance v5, Lcn/kuaipan/android/http/DecoderInputStream;

    .end local v5    # "input":Lcn/kuaipan/android/http/DecoderInputStream;
    const/16 v3, 0x2000

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v5, v0, v1, v3}, Lcn/kuaipan/android/http/DecoderInputStream;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/IKscDecoder;I)V

    .line 319
    .restart local v5    # "input":Lcn/kuaipan/android/http/DecoderInputStream;
    if-eqz p6, :cond_3

    .line 320
    const-wide/16 v10, 0x0

    :try_start_0
    move-object/from16 v0, p6

    invoke-interface {v0, v10, v11}, Lcn/kuaipan/android/http/IKscTransferListener;->setSendPos(J)V

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v8, p6

    .line 322
    invoke-direct/range {v3 .. v8}, Lcn/kuaipan/android/kss/upload/KssUploader;->doUpload(Landroid/net/Uri;Ljava/io/InputStream;JLcn/kuaipan/android/http/IKscTransferListener;)Lcn/kuaipan/android/kss/upload/UploadChunkInfo;

    move-result-object v9

    .line 323
    invoke-virtual {v9}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isContinue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v9}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-wide/from16 v10, p2

    move-wide v12, v6

    .line 324
    invoke-static/range {v9 .. v15}, Lcn/kuaipan/android/kss/upload/KssUploader;->updatePos(Lcn/kuaipan/android/kss/upload/UploadChunkInfo;JJJ)V

    .line 325
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    cmp-long v3, v6, v10

    if-ltz v3, :cond_5

    .line 326
    sget-wide v10, Lcn/kuaipan/android/kss/upload/KssUploader;->MAX_CHUNKSIZE:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    const/4 v3, 0x1

    shl-long/2addr v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    .end local v4    # "bodyUri":Landroid/net/Uri;
    .end local v5    # "input":Lcn/kuaipan/android/http/DecoderInputStream;
    .end local v6    # "len":J
    .end local v14    # "blockSize":J
    .end local v16    # "crc":J
    .end local v18    # "expectInfo":Lcn/kuaipan/android/kss/upload/ServerExpect;
    :cond_5
    move-object/from16 v19, v9

    .line 352
    .end local v9    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .local v19, "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    :goto_1
    return-object v19

    .line 331
    .end local v19    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .restart local v4    # "bodyUri":Landroid/net/Uri;
    .restart local v5    # "input":Lcn/kuaipan/android/http/DecoderInputStream;
    .restart local v6    # "len":J
    .restart local v9    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .restart local v14    # "blockSize":J
    .restart local v16    # "crc":J
    .restart local v18    # "expectInfo":Lcn/kuaipan/android/kss/upload/ServerExpect;
    :cond_6
    invoke-virtual {v9}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->canRetry()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-ltz v3, :cond_7

    .line 332
    const-string v3, "KssUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "upload needChunkRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v9, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->stat:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Lcn/kuaipan/android/exception/KscException;
    invoke-static {v2}, Lcn/kuaipan/android/exception/ErrorHelper;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-ltz v3, :cond_9

    .line 338
    const-wide/32 v10, 0x10000

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    const/4 v3, 0x1

    shr-long/2addr v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mChunkSize:J

    .line 339
    const/4 v9, 0x0

    .line 342
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 343
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .end local v2    # "e":Lcn/kuaipan/android/exception/KscException;
    :cond_7
    move-object/from16 v19, v9

    .line 335
    .end local v9    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .restart local v19    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    goto :goto_1

    .line 345
    .end local v19    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .restart local v2    # "e":Lcn/kuaipan/android/exception/KscException;
    .restart local v9    # "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    :cond_8
    const-wide/16 v10, 0x1388

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 347
    :cond_9
    throw v2
.end method

.method private deleteUploadInfo(I)V
    .locals 1
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->removeUploadInfo(I)V

    goto :goto_0
.end method

.method private doUpload(Landroid/net/Uri;Ljava/io/InputStream;JLcn/kuaipan/android/http/IKscTransferListener;)Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "len"    # J
    .param p5, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v12, 0x0

    .line 359
    .local v12, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v15, Lcn/kuaipan/android/http/KscHttpRequest;

    sget-object v4, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v15, v4, v0, v5, v1}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 360
    .local v15, "request":Lcn/kuaipan/android/http/KscHttpRequest;
    new-instance v4, Lcn/kuaipan/android/kss/upload/KssInputStreamEntity;

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-direct {v4, v0, v1, v2}, Lcn/kuaipan/android/kss/upload/KssInputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v15, v4}, Lcn/kuaipan/android/http/KscHttpRequest;->setPostEntity(Lorg/apache/http/entity/AbstractHttpEntity;)V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 363
    .local v16, "execStartTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTransmitter:Lcn/kuaipan/android/http/KscHttpTransmitter;

    const/4 v5, 0x4

    invoke-virtual {v4, v15, v5}, Lcn/kuaipan/android/http/KscHttpTransmitter;->execute(Lcn/kuaipan/android/http/KscHttpRequest;I)Lcn/kuaipan/android/http/KscHttpResponse;

    move-result-object v18

    .line 365
    .local v18, "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v16

    .line 366
    .local v6, "timeCost":J
    const-wide/16 v8, 0x0

    .line 367
    .local v8, "size":J
    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/http/KscHttpResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 368
    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/http/KscHttpResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 369
    .local v14, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v14, :cond_0

    .line 370
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 373
    .end local v14    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/http/KscHttpResponse;->getStatusCode()I

    move-result v10

    .line 374
    .local v10, "statusCode":I
    const-string v11, ""

    .line 375
    .local v11, "exceptionName":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/http/KscHttpResponse;->getError()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 376
    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/http/KscHttpResponse;->getError()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    .line 378
    :cond_1
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v4 .. v11}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 379
    invoke-static/range {v18 .. v18}, Lcn/kuaipan/android/exception/ErrorHelper;->throwError(Lcn/kuaipan/android/http/KscHttpResponse;)V

    .line 381
    const/16 v4, 0xc8

    if-eq v10, v4, :cond_3

    .line 382
    new-instance v13, Lcn/kuaipan/android/exception/ServerException;

    invoke-virtual/range {v18 .. v18}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v10, v4}, Lcn/kuaipan/android/exception/ServerException;-><init>(ILjava/lang/String;)V

    .line 383
    .local v13, "e":Lcn/kuaipan/android/exception/ServerException;
    const-string v4, "KssUploader"

    const-string v5, "Exception in doUpload"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .end local v6    # "timeCost":J
    .end local v8    # "size":J
    .end local v10    # "statusCode":I
    .end local v11    # "exceptionName":Ljava/lang/String;
    .end local v13    # "e":Lcn/kuaipan/android/exception/ServerException;
    .end local v15    # "request":Lcn/kuaipan/android/http/KscHttpRequest;
    .end local v16    # "execStartTime":J
    .end local v18    # "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_2

    instance-of v5, v12, Lcn/kuaipan/android/utils/IObtainable;

    if-eqz v5, :cond_2

    .line 395
    check-cast v12, Lcn/kuaipan/android/utils/IObtainable;

    .end local v12    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Lcn/kuaipan/android/utils/IObtainable;->recycle()V

    :cond_2
    throw v4

    .line 389
    .restart local v6    # "timeCost":J
    .restart local v8    # "size":J
    .restart local v10    # "statusCode":I
    .restart local v11    # "exceptionName":Ljava/lang/String;
    .restart local v12    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "request":Lcn/kuaipan/android/http/KscHttpRequest;
    .restart local v16    # "execStartTime":J
    .restart local v18    # "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    :cond_3
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcn/kuaipan/android/utils/ApiDataHelper;->contentToMap(Lcn/kuaipan/android/http/KscHttpResponse;)Ljava/util/Map;

    move-result-object v12

    .line 390
    new-instance v19, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;-><init>(Ljava/util/Map;)V

    .line 391
    .local v19, "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    invoke-static/range {v18 .. v18}, Lcn/kuaipan/android/kss/upload/ServerExpect;->getServerExpect(Lcn/kuaipan/android/http/KscHttpResponse;)Lcn/kuaipan/android/kss/upload/ServerExpect;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->expect_info:Lcn/kuaipan/android/kss/upload/ServerExpect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    if-eqz v12, :cond_4

    instance-of v4, v12, Lcn/kuaipan/android/utils/IObtainable;

    if-eqz v4, :cond_4

    .line 395
    check-cast v12, Lcn/kuaipan/android/utils/IObtainable;

    .end local v12    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Lcn/kuaipan/android/utils/IObtainable;->recycle()V

    :cond_4
    return-object v19
.end method

.method private declared-synchronized getCRC(Ljava/io/InputStream;J)I
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC32:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, "size":I
    move-wide v0, p2

    .line 480
    .local v0, "leftSize":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC_BUF:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC_BUF:[B

    array-length v5, v5

    int-to-long v6, v5

    .line 481
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 482
    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 483
    iget-object v3, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC32:Ljava/util/zip/CRC32;

    iget-object v4, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC_BUF:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    .end local v0    # "leftSize":J
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 486
    .restart local v0    # "leftSize":J
    .restart local v2    # "size":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->CRC32:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    long-to-int v3, v4

    monitor-exit p0

    return v3
.end method

.method private getUploadPos(I)Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    .locals 1
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->getUploadPos(I)Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    move-result-object v0

    goto :goto_0
.end method

.method private static updatePos(Lcn/kuaipan/android/kss/upload/UploadChunkInfo;JJJ)V
    .locals 9
    .param p0, "result"    # Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .param p1, "pos"    # J
    .param p3, "len"    # J
    .param p5, "blockSize"    # J

    .prologue
    .line 455
    if-nez p0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    iput-wide p5, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    .line 460
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->left_bytes:J

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isContinue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 462
    add-long v2, p1, p3

    .line 463
    .local v2, "nextPos":J
    sub-long v0, p5, v2

    .line 464
    .local v0, "nextLen":J
    iget-wide v4, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->left_bytes:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 465
    :cond_3
    const-string v4, "KssUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chunk pos is ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->left_bytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), but in process is ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iput-wide v2, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    .line 468
    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->left_bytes:J

    goto :goto_0

    .line 471
    .end local v0    # "nextLen":J
    .end local v2    # "nextPos":J
    :cond_4
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    .line 472
    sub-long v4, p5, p1

    iput-wide v4, p0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->left_bytes:J

    goto :goto_0
.end method

.method private updateUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V
    .locals 1
    .param p1, "taskHash"    # I
    .param p2, "uploadInfo"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .param p3, "uploadChunkInfoPersist"    # Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    .prologue
    .line 401
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/KssUploader;->mTaskStore:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1, p2, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->updateUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V

    goto :goto_0
.end method

.method private uploadBlock(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;I)V
    .locals 29
    .param p1, "taskHash"    # I
    .param p2, "file"    # Ljava/io/File;
    .param p3, "listenerGroup"    # Lcn/kuaipan/android/kss/FileTranceListener;
    .param p4, "info"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .param p5, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct/range {p0 .. p1}, Lcn/kuaipan/android/kss/upload/KssUploader;->getUploadPos(I)Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    move-result-object v27

    .line 109
    .local v27, "uploadChunkInfoP":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    const/4 v10, 0x0

    .line 110
    .local v10, "upload_id":Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 111
    .local v22, "pos":J
    if-eqz v27, :cond_0

    .line 112
    move-object/from16 v0, v27

    iget-object v10, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->upload_id:Ljava/lang/String;

    .line 113
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 114
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->pos:J

    move-wide/from16 v22, v0

    .line 118
    :cond_0
    const-wide/32 v6, 0x10000

    rem-long v6, v22, v6

    sub-long v22, v22, v6

    .line 119
    add-int/lit8 v6, p5, 0x1

    int-to-long v6, v6

    const-wide/32 v8, 0x400000

    mul-long/2addr v6, v8

    cmp-long v6, v22, v6

    if-gez v6, :cond_1

    move/from16 v0, p5

    int-to-long v6, v0

    const-wide/32 v8, 0x400000

    mul-long/2addr v6, v8

    cmp-long v6, v22, v6

    if-gez v6, :cond_2

    .line 120
    :cond_1
    move/from16 v0, p5

    int-to-long v6, v0

    const-wide/32 v8, 0x400000

    mul-long v22, v6, v8

    .line 123
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-int/lit8 v8, p5, 0x1

    int-to-long v8, v8

    const-wide/32 v16, 0x400000

    mul-long v8, v8, v16

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 124
    .local v18, "blockEnd":J
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getRequestResult()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v24

    .line 127
    .local v24, "request":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    const-string v6, "KssUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RC4 key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v24 .. v24}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getSecureKey()[B

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v12, 0x0

    .line 132
    .local v12, "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    :try_start_0
    new-instance v25, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x3

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v25, "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v21, v12

    .line 133
    .end local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .local v21, "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ltz v6, :cond_c

    .line 134
    new-instance v13, Lcn/kuaipan/android/kss/RC4Encoder;

    invoke-interface/range {v24 .. v24}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getSecureKey()[B

    move-result-object v6

    invoke-direct {v13, v6}, Lcn/kuaipan/android/kss/RC4Encoder;-><init>([B)V

    .line 135
    .local v13, "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    new-instance v12, Lcn/kuaipan/android/utils/RandomFileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcn/kuaipan/android/utils/RandomFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .end local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    :try_start_2
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Lcn/kuaipan/android/utils/RandomFileInputStream;->moveToPos(J)V

    .line 138
    if-eqz p3, :cond_3

    .line 139
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/kss/FileTranceListener;->setSendPos(J)V

    .line 143
    :cond_3
    new-instance v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;

    const-wide/32 v6, 0x400000

    rem-long v6, v22, v6

    sub-long v8, v18, v22

    invoke-direct/range {v5 .. v10}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;-><init>(JJLjava/lang/String;)V

    .line 144
    .local v5, "chunkInfo":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    :cond_4
    :goto_1
    iget-wide v6, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    cmp-long v6, v6, v18

    if-gez v6, :cond_8

    iget-wide v6, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->left_bytes:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 145
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 146
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v5    # "chunkInfo":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .end local v13    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    .end local v25    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    :catch_0
    move-exception v26

    .line 214
    .local v26, "t":Ljava/lang/Throwable;
    :goto_2
    const/4 v6, 0x0

    :try_start_3
    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .end local v26    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 217
    :goto_3
    :try_start_4
    invoke-virtual {v12}, Lcn/kuaipan/android/utils/RandomFileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 220
    :goto_4
    throw v6

    .line 149
    .restart local v5    # "chunkInfo":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .restart local v13    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    .restart local v25    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_5
    if-nez p3, :cond_6

    const/4 v14, 0x0

    .local v14, "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    :goto_5
    move-object/from16 v11, p0

    move-object/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, v5

    .line 152
    :try_start_5
    invoke-direct/range {v11 .. v17}, Lcn/kuaipan/android/kss/upload/KssUploader;->uploadChunk(Lcn/kuaipan/android/utils/RandomFileInputStream;Lcn/kuaipan/android/kss/RC4Encoder;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;ILcn/kuaipan/android/kss/upload/UploadChunkInfo;)Lcn/kuaipan/android/kss/upload/UploadChunkInfo;

    move-result-object v5

    .line 154
    if-eqz v5, :cond_9

    .line 155
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isContinue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 156
    new-instance v28, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    invoke-direct/range {v28 .. v28}, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;-><init>()V

    .line 157
    .local v28, "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    move/from16 v0, p5

    int-to-long v6, v0

    const-wide/32 v8, 0x400000

    mul-long/2addr v6, v8

    iget-wide v8, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    add-long/2addr v6, v8

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->pos:J

    .line 159
    iget-object v6, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->upload_id:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v6, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->upload_id:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/kss/upload/KssUploader;->updateUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V

    .line 161
    sget-boolean v6, Lcn/kuaipan/android/kss/upload/KssUploader;->sBreakForUT:Z

    if-eqz v6, :cond_4

    .line 162
    const-string v6, "KssUploader"

    const-string v7, "break for UT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 149
    .end local v14    # "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    .end local v28    # "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    :cond_6
    iget-wide v6, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    add-long v6, v6, v22

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Lcn/kuaipan/android/kss/FileTranceListener;->getChunkListaner(J)Lcn/kuaipan/android/http/IKscTransferListener;

    move-result-object v14

    goto :goto_5

    .line 167
    .restart local v14    # "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    :cond_7
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 168
    new-instance v28, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    invoke-direct/range {v28 .. v28}, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;-><init>()V

    .line 169
    .restart local v28    # "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    add-int/lit8 v6, p5, 0x1

    int-to-long v6, v6

    const-wide/32 v8, 0x400000

    mul-long/2addr v6, v8

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->pos:J

    .line 170
    const-string v6, ""

    move-object/from16 v0, v28

    iput-object v6, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;->upload_id:Ljava/lang/String;

    .line 171
    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-interface {v0, v1}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getBlock(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v4

    .line 172
    .local v4, "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    iget-object v6, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->commit_meta:Ljava/lang/String;

    iput-object v6, v4, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->meta:Ljava/lang/String;

    .line 173
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->exist:Z

    .line 174
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/kss/upload/KssUploader;->updateUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V

    .line 194
    .end local v4    # "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .end local v14    # "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    .end local v28    # "uploadChunkInfoPersist":Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    :cond_8
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->isComplete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    if-eqz v6, :cond_a

    .line 217
    .end local v5    # "chunkInfo":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .end local v13    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    :goto_6
    :try_start_6
    invoke-virtual {v12}, Lcn/kuaipan/android/utils/RandomFileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 222
    :goto_7
    return-void

    .line 189
    .restart local v5    # "chunkInfo":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .restart local v13    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    .restart local v14    # "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    :cond_9
    :try_start_7
    new-instance v6, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v7, 0x7a128

    const-string v8, "Return chunkInfo is null"

    invoke-direct {v6, v7, v8}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 198
    .end local v14    # "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    :cond_a
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->needBlockRetry()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    if-lez v6, :cond_b

    .line 199
    const-wide/16 v22, 0x0

    .line 200
    const-string v10, ""

    .line 201
    const-string v6, "KssUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "upload needBlockRetry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->stat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v12

    .line 202
    .end local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    goto/16 :goto_0

    .line 204
    .end local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    :cond_b
    new-instance v20, Lcn/kuaipan/android/exception/ServerMsgException;

    const/16 v6, 0xc8

    iget-object v7, v5, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->stat:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;)V

    .line 205
    .local v20, "e":Lcn/kuaipan/android/exception/ServerMsgException;
    const-string v6, "KssUploader"

    const-string v7, "Exception in uploadBlock"

    move-object/from16 v0, v20

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->markBroken()V

    .line 208
    invoke-direct/range {p0 .. p1}, Lcn/kuaipan/android/kss/upload/KssUploader;->deleteUploadInfo(I)V

    .line 211
    throw v20
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 218
    .end local v5    # "chunkInfo":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .end local v13    # "rc4Decoder":Lcn/kuaipan/android/kss/RC4Encoder;
    .end local v20    # "e":Lcn/kuaipan/android/exception/ServerMsgException;
    :catch_1
    move-exception v6

    goto :goto_7

    .end local v25    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    :catch_2
    move-exception v7

    goto/16 :goto_4

    .line 216
    .end local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v25    # "retry":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_1
    move-exception v6

    move-object/from16 v12, v21

    .end local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    goto/16 :goto_3

    .line 213
    .end local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    :catch_3
    move-exception v26

    move-object/from16 v12, v21

    .end local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    goto/16 :goto_2

    .end local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    :cond_c
    move-object/from16 v12, v21

    .end local v21    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    .restart local v12    # "in":Lcn/kuaipan/android/utils/RandomFileInputStream;
    goto :goto_6
.end method

.method private uploadBlock(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;ZI)V
    .locals 8
    .param p1, "taskHash"    # I
    .param p2, "file"    # Ljava/io/File;
    .param p3, "listener"    # Lcn/kuaipan/android/kss/FileTranceListener;
    .param p4, "info"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .param p5, "needVerify"    # Z
    .param p6, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p4, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The KssUploadInfo can not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {p4}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getFileInfo()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object v0

    invoke-static {p2, v0, p6}, Lcn/kuaipan/android/kss/upload/KssUploader;->verifyBlock(Ljava/io/File;Lcn/kuaipan/android/kss/upload/UploadFileInfo;I)V

    .line 91
    invoke-virtual {p4}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getRequestResult()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v7

    .line 92
    .local v7, "request":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    invoke-interface {v7, p6}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getBlock(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v6

    .line 93
    .local v6, "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    if-nez v6, :cond_1

    .line 94
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v1, 0x7a128

    const-string v2, "Block should not be null"

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    invoke-virtual {v6}, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    if-eqz p3, :cond_2

    .line 98
    add-int/lit8 v0, p6, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x400000

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcn/kuaipan/android/kss/FileTranceListener;->setSendPos(J)V

    .line 103
    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 101
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/kss/upload/KssUploader;->uploadBlock(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;I)V

    goto :goto_0
.end method

.method private uploadChunk(Lcn/kuaipan/android/utils/RandomFileInputStream;Lcn/kuaipan/android/kss/RC4Encoder;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;ILcn/kuaipan/android/kss/upload/UploadChunkInfo;)Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .locals 17
    .param p1, "in"    # Lcn/kuaipan/android/utils/RandomFileInputStream;
    .param p2, "rc4Decoder"    # Lcn/kuaipan/android/kss/RC4Encoder;
    .param p3, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p4, "info"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .param p5, "blockIndex"    # I
    .param p6, "chunkInfo"    # Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v14, 0x0

    .line 228
    .local v14, "result":Lcn/kuaipan/android/kss/upload/UploadChunkInfo;
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->getRequestResult()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v13

    .line 229
    .local v13, "request":Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    invoke-interface {v13}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getNodeUrls()[Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, "urls":[Ljava/lang/String;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 234
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No available urls."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v12, v2, :cond_3

    .line 238
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 242
    :cond_2
    const-wide/32 v2, 0x400000

    move/from16 v0, p5

    int-to-long v4, v0

    mul-long/2addr v2, v4

    :try_start_0
    move-object/from16 v0, p6

    iget-wide v4, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    add-long/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcn/kuaipan/android/utils/RandomFileInputStream;->moveToPos(J)V

    .line 243
    const/high16 v2, 0x400000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcn/kuaipan/android/utils/RandomFileInputStream;->mark(I)V

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/upload_block_chunk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 246
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 247
    .local v10, "builder":Landroid/net/Uri$Builder;
    const-string v2, "chunk_pos"

    move-object/from16 v0, p6

    iget-wide v4, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    move-object/from16 v0, p6

    iget-object v2, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->upload_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 249
    const-string/jumbo v2, "upload_id"

    move-object/from16 v0, p6

    iget-object v3, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->upload_id:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 255
    :goto_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p6

    iget-wide v4, v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->next_pos:J

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcn/kuaipan/android/kss/upload/KssUploader;->_uploadChunk(Landroid/net/Uri;JLcn/kuaipan/android/utils/RandomFileInputStream;Lcn/kuaipan/android/kss/RC4Encoder;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;)Lcn/kuaipan/android/kss/upload/UploadChunkInfo;

    move-result-object v14

    .line 257
    iget-object v2, v14, Lcn/kuaipan/android/kss/upload/UploadChunkInfo;->expect_info:Lcn/kuaipan/android/kss/upload/ServerExpect;

    move-object/from16 v0, p4

    iput-object v2, v0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->mExpectInfo:Lcn/kuaipan/android/kss/upload/ServerExpect;

    .line 267
    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_3
    return-object v14

    .line 251
    .restart local v10    # "builder":Landroid/net/Uri$Builder;
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v2, "file_meta"

    invoke-interface {v13}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getFileMeta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 252
    const-string v2, "block_meta"

    move/from16 v0, p5

    invoke-interface {v13, v0}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->getBlock(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v3

    iget-object v3, v3, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->meta:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .end local v15    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 260
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lcn/kuaipan/android/exception/ErrorHelper;->handleInterruptException(Ljava/lang/Throwable;)V

    .line 261
    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v12, v2, :cond_5

    .line 262
    const-string v2, "Failed when upload a kss chunk."

    invoke-static {v11, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v2

    throw v2

    .line 237
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method private static verifyBlock(Ljava/io/File;Lcn/kuaipan/android/kss/upload/UploadFileInfo;I)V
    .locals 18
    .param p0, "file"    # Ljava/io/File;
    .param p1, "request"    # Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .param p2, "blockIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual/range {p1 .. p2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->getBlockInfo(I)Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    move-result-object v5

    .line 425
    .local v5, "info":Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v12

    move/from16 v0, p2

    int-to-long v14, v0

    const-wide/32 v16, 0x400000

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x400000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v7, v12

    .line 426
    .local v7, "size":I
    iget v12, v5, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->size:I

    if-eq v7, v12, :cond_0

    .line 427
    new-instance v12, Lcn/kuaipan/android/exception/KscException;

    const v13, 0x6263a

    const-string v14, "Block size has changed."

    invoke-direct {v12, v13, v14}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 430
    :cond_0
    move/from16 v0, p2

    int-to-long v12, v0

    const-wide/32 v14, 0x400000

    mul-long v10, v12, v14

    .line 431
    .local v10, "start":J
    const/4 v3, 0x0

    .line 433
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    .line 435
    .local v8, "skip":J
    cmp-long v12, v8, v10

    if-eqz v12, :cond_1

    .line 436
    new-instance v12, Lcn/kuaipan/android/exception/KscException;

    const v13, 0x6263a

    const-string v14, "File size has changed."

    invoke-direct {v12, v13, v14}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    .end local v8    # "skip":J
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 444
    .end local v4    # "in":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_0
    const/4 v12, 0x0

    :try_start_2
    invoke-static {v2, v12}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v12

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 447
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 450
    :goto_2
    throw v12

    .line 439
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "skip":J
    :cond_1
    :try_start_4
    invoke-static {v4, v7}, Lcn/kuaipan/android/utils/Encode;->SHA1Encode(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "sha1":Ljava/lang/String;
    iget-object v12, v5, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->sha1:Ljava/lang/String;

    invoke-static {v6, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 441
    new-instance v12, Lcn/kuaipan/android/exception/KscException;

    const v13, 0x6263a

    const-string v14, "Block has changed."

    invoke-direct {v12, v13, v14}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 446
    .end local v6    # "sha1":Ljava/lang/String;
    .end local v8    # "skip":J
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 447
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "sha1":Ljava/lang/String;
    .restart local v8    # "skip":J
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 452
    :goto_3
    return-void

    .line 448
    :catch_1
    move-exception v12

    goto :goto_3

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "sha1":Ljava/lang/String;
    .end local v8    # "skip":J
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v13

    goto :goto_2

    .line 443
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public upload(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;ILcn/kuaipan/android/kss/upload/KssUploadInfo;)V
    .locals 9
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p3, "taskHash"    # I
    .param p4, "uploadInfo"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, "sendListener":Lcn/kuaipan/android/kss/FileTranceListener;
    if-eqz p2, :cond_0

    .line 65
    new-instance v3, Lcn/kuaipan/android/kss/FileTranceListener;

    .end local v3    # "sendListener":Lcn/kuaipan/android/kss/FileTranceListener;
    invoke-direct {v3, p2, v8}, Lcn/kuaipan/android/kss/FileTranceListener;-><init>(Lcn/kuaipan/android/http/IKscTransferListener;Z)V

    .line 66
    .restart local v3    # "sendListener":Lcn/kuaipan/android/kss/FileTranceListener;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener;->setSendTotal(J)V

    .line 69
    :cond_0
    const/4 v6, 0x0

    .line 71
    .local v6, "blockIndex":I
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 75
    :cond_2
    const/4 v7, 0x0

    .line 76
    .local v7, "verified":Z
    const-string v0, "KssUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload blockIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v7, :cond_3

    move v5, v8

    :goto_0
    move-object v0, p0

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/kss/upload/KssUploader;->uploadBlock(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/upload/KssUploadInfo;ZI)V

    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    invoke-virtual {p4}, Lcn/kuaipan/android/kss/upload/KssUploadInfo;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    return-void

    .line 77
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method
