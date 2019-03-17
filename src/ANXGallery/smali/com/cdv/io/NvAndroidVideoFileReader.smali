.class public Lcom/cdv/io/NvAndroidVideoFileReader;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReader.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final ERROR_EOF:I = 0x1

.field private static final ERROR_FAIL:I = 0x2

.field private static final ERROR_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NvAndroidVideoFileReader"

.field private static m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

.field private static final m_verbose:Z


# instance fields
.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_decoder:Landroid/media/MediaCodec;

.field m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private m_decoderSetupFailed:Z

.field private m_decoderStarted:Z

.field private m_duration:J

.field private m_extractor:Landroid/media/MediaExtractor;

.field private m_extractorInOriginalState:Z

.field private m_firstPlaybackTexFrameUnconsumed:Z

.field private m_format:Landroid/media/MediaFormat;

.field private m_frameAvailable:Z

.field private m_frameSyncObject:Ljava/lang/Object;

.field private m_handler:Landroid/os/Handler;

.field private m_inputBufferQueued:Z

.field private m_lastSeekActualTimestamp:J

.field private m_lastSeekTimestamp:J

.field private m_pendingInputFrameCount:I

.field private m_sawInputEOS:Z

.field private m_sawOutputEOS:Z

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

.field private m_temporalLayerEndTime:J

.field private m_texId:I

.field private m_timestampOfCurTexFrame:J

.field private m_timestampOfLastDecodedFrame:J

.field private m_usedTemporalLayer:I

.field private m_videoTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    sput-object v5, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 84
    :try_start_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    const-string/jumbo v1, "setOnFrameAvailableListener"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    .line 88
    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "New SurfaceTexture.setOnFrameAvailableListener() method is available!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    sput-object v5, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    .line 43
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 44
    iput v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    .line 45
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    .line 50
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 51
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    .line 56
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 58
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 59
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    .line 60
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    .line 61
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    .line 64
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 66
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 67
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    .line 68
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    .line 69
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 70
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    .line 71
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    .line 72
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 74
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    .line 75
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    .line 77
    iput v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    .line 97
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 99
    return-void
.end method

.method private AwaitNewImage()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 756
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 761
    :try_start_1
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 762
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    if-nez v1, :cond_0

    .line 764
    const-string v1, "NvAndroidVideoFileReader"

    const-string v3, "Frame wait timed out!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :try_start_2
    monitor-exit v2

    .line 793
    :goto_0
    return v0

    .line 767
    :catch_0
    move-exception v1

    .line 769
    const-string v3, "NvAndroidVideoFileReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 771
    monitor-exit v2

    goto :goto_0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 775
    :cond_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 776
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 786
    :try_start_4
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 793
    const/4 v0, 0x1

    goto :goto_0

    .line 787
    :catch_1
    move-exception v1

    .line 788
    const-string v2, "NvAndroidVideoFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private CleanupDecoder()V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 429
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 430
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    if-eqz v0, :cond_2

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->DrainOutputBuffers()V

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 441
    :try_start_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 454
    :goto_1
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    .line 455
    iput-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 458
    iput-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 461
    :cond_3
    iput-wide v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 462
    iput-wide v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    .line 463
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    .line 464
    iput v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    .line 465
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    .line 466
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 467
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    const-string v1, "NvAndroidVideoFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 442
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private DecodeToFrame(JJ)I
    .locals 5

    .prologue
    .line 532
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReader;->DoDecodeToFrame(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 538
    :goto_0
    return v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    const-string v1, "NvAndroidVideoFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder()V

    .line 538
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private DoDecodeToFrame(JJ)I
    .locals 13

    .prologue
    .line 546
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    .line 547
    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 549
    const/4 v0, 0x0

    move v7, v0

    .line 551
    :goto_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v0, :cond_12

    .line 552
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 555
    if-ltz v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v0, v1

    .line 560
    :goto_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 561
    if-gez v3, :cond_3

    .line 563
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    .line 606
    :cond_0
    :goto_2
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    if-gt v0, v8, :cond_1

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v0, :cond_7

    .line 607
    :cond_1
    const/16 v0, 0xfa0

    .line 615
    :goto_3
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 616
    add-int/lit8 v0, v7, 0x1

    .line 617
    const/4 v1, -0x1

    if-ne v3, v1, :cond_8

    .line 707
    :cond_2
    :goto_4
    const/16 v1, 0x64

    if-le v0, v1, :cond_11

    .line 708
    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "We have tried too many times and can\'t decode a frame!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x2

    .line 716
    :goto_5
    return v0

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    iget v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    if-eq v0, v4, :cond_4

    .line 569
    const-string v0, "NvAndroidVideoFileReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WEIRD: got sample from track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 570
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 574
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 575
    :goto_6
    if-nez v0, :cond_6

    .line 576
    invoke-direct {p0, v2, v4, v5}, Lcom/cdv/io/NvAndroidVideoFileReader;->canSkipFrame(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 577
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    goto/16 :goto_1

    .line 574
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 584
    :cond_6
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 589
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    .line 593
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    goto/16 :goto_2

    .line 611
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 621
    :cond_8
    const/4 v1, -0x3

    if-eq v3, v1, :cond_2

    .line 625
    const/4 v1, -0x2

    if-ne v3, v1, :cond_9

    .line 626
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto/16 :goto_4

    .line 629
    :cond_9
    if-gez v3, :cond_a

    .line 630
    const-string v0, "NvAndroidVideoFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x2

    goto/16 :goto_5

    .line 638
    :cond_a
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 641
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 645
    :cond_b
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 653
    iget-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v4, :cond_c

    .line 654
    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 658
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    .line 662
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p1, v4

    if-eqz v0, :cond_f

    .line 663
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    sub-long v6, p1, p3

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    .line 664
    :goto_7
    if-nez v0, :cond_14

    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    iget-wide v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/32 v10, 0x186a0

    sub-long/2addr v6, v10

    cmp-long v4, v4, v6

    if-ltz v4, :cond_14

    .line 668
    const/4 v1, 0x1

    .line 669
    const/4 v0, 0x1

    move v12, v0

    move v0, v2

    move v2, v1

    move v1, v12

    .line 676
    :cond_c
    :goto_8
    if-eqz v2, :cond_d

    .line 677
    iget-object v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 679
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 680
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_d
    iget-object v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 688
    if-eqz v2, :cond_2

    .line 692
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->AwaitNewImage()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 694
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    .line 698
    if-nez v1, :cond_2

    .line 699
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 663
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 672
    :cond_f
    const/4 v0, 0x1

    move v12, v0

    move v0, v2

    move v2, v12

    goto :goto_8

    .line 680
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 701
    :cond_10
    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "Render decoded frame to surface texture failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x2

    goto/16 :goto_5

    :cond_11
    move v7, v0

    .line 711
    goto/16 :goto_0

    .line 713
    :cond_12
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/32 v4, 0x186a0

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    .line 714
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 716
    :cond_13
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_14
    move v12, v0

    move v0, v2

    move v2, v12

    goto :goto_8
.end method

.method private DrainOutputBuffers()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 805
    :cond_2
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v2, :cond_0

    .line 807
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 808
    add-int/lit8 v0, v0, 0x1

    .line 809
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 826
    :cond_3
    :goto_1
    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    .line 827
    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "DrainDecoderBuffers(): We have tried too many times and can\'t decode a frame!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_4
    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    .line 813
    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    .line 815
    if-gez v2, :cond_5

    .line 816
    const-string v0, "NvAndroidVideoFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    :cond_5
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 823
    :cond_6
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v0, v1

    goto :goto_1
.end method

.method private InvalidLastSeekTimestamp()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 835
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    .line 836
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    .line 837
    return-void
.end method

.method private IsValid()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SeekInternal(JJ)I
    .locals 11

    .prologue
    const-wide/32 v8, 0x16e360

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    .line 472
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    add-long/2addr v4, v8

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    .line 485
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 492
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-eqz v1, :cond_4

    .line 496
    :cond_1
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder()V

    .line 497
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReader;->SetupDecoder(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_5

    .line 526
    :goto_1
    return v0

    .line 480
    :cond_2
    iget-boolean v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    if-eqz v3, :cond_3

    cmp-long v3, p1, v8

    if-ltz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 506
    :cond_4
    :try_start_1
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_5

    .line 508
    :try_start_2
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 513
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 514
    const/4 v1, 0x0

    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 526
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReader;->DecodeToFrame(JJ)I

    move-result v0

    goto :goto_1

    .line 519
    :catch_0
    move-exception v1

    .line 520
    const-string v2, "NvAndroidVideoFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 509
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private SetupDecoder(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 404
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    iget-object v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 405
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 406
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    .line 409
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const-string v2, "NvAndroidVideoFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder()V

    move v0, v1

    .line 421
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/cdv/io/NvAndroidVideoFileReader;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cdv/io/NvAndroidVideoFileReader;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_texId:I

    return v0
.end method

.method static synthetic access$200(Lcom/cdv/io/NvAndroidVideoFileReader;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private canSkipFrame(Ljava/nio/ByteBuffer;J)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 721
    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 724
    :cond_1
    iget v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-ltz v2, :cond_0

    .line 727
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    .line 730
    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 731
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 732
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 733
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 736
    const/4 v2, 0x4

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1f

    .line 737
    aget-byte v4, v3, v0

    if-nez v4, :cond_0

    aget-byte v4, v3, v1

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    if-ne v4, v1, :cond_0

    const/16 v4, 0xe

    if-eq v2, v4, :cond_2

    const/16 v4, 0x14

    if-ne v2, v4, :cond_0

    .line 739
    :cond_2
    const/4 v2, 0x5

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x7

    if-lez v2, :cond_3

    move v2, v1

    .line 740
    :goto_1
    if-eqz v2, :cond_0

    .line 741
    const/4 v2, 0x7

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x7

    .line 742
    iget v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 743
    goto :goto_0

    :cond_3
    move v2, v0

    .line 739
    goto :goto_1
.end method


# virtual methods
.method public CloseFile()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    .line 247
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder()V

    .line 249
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 251
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 258
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 263
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 264
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    .line 265
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    .line 270
    :cond_2
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    .line 271
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    .line 272
    return-void
.end method

.method public GetNextVideoFrameForPlayback()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    const/4 v0, 0x1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    if-nez v0, :cond_2

    .line 354
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/cdv/io/NvAndroidVideoFileReader;->DecodeToFrame(JJ)I

    move-result v0

    .line 355
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    .line 356
    if-nez v0, :cond_0

    :goto_1
    move v0, v1

    .line 362
    goto :goto_0

    .line 359
    :cond_2
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    goto :goto_1
.end method

.method public GetTimestampOfCurrentTextureFrame()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    return-wide v0
.end method

.method public GetTransformMatrixOfSurfaceTexture([F)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 374
    :cond_0
    return-void
.end method

.method public OpenFile(Ljava/lang/String;ILandroid/content/res/AssetManager;I)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "You can\'t call OpenFile() twice!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 236
    :goto_0
    return v0

    .line 113
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 115
    if-nez p3, :cond_2

    .line 116
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 125
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    move v0, v6

    .line 136
    :goto_2
    if-ge v0, v1, :cond_1

    .line 137
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 138
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string/jumbo v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iput v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    .line 147
    :cond_1
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    if-gez v0, :cond_4

    .line 148
    const-string v0, "NvAndroidVideoFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find a video track from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    move v0, v6

    .line 150
    goto :goto_0

    .line 119
    :cond_2
    :try_start_1
    invoke-virtual {p3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 120
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 122
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "NvAndroidVideoFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    move v0, v6

    .line 130
    goto/16 :goto_0

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 154
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 159
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v1, "max-input-size"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 162
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 164
    if-ltz p4, :cond_6

    .line 165
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v1, "operating-rate"

    if-lez p4, :cond_7

    :goto_3
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v1, "durationUs"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 169
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :try_start_2
    sget-object v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_8

    .line 178
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 182
    sget-object v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_4
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 227
    iput-boolean v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    .line 228
    invoke-direct {p0, v0}, Lcom/cdv/io/NvAndroidVideoFileReader;->SetupDecoder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 229
    iput-boolean v7, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    .line 230
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    move v0, v6

    .line 231
    goto/16 :goto_0

    .line 165
    :cond_7
    const/16 p4, 0x78

    goto :goto_3

    .line 189
    :cond_8
    :try_start_3
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    .line 190
    iput p2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_texId:I

    .line 191
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    new-instance v2, Lcom/cdv/io/NvAndroidVideoFileReader$1;

    invoke-direct {v2, p0}, Lcom/cdv/io/NvAndroidVideoFileReader$1;-><init>(Lcom/cdv/io/NvAndroidVideoFileReader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_texId:I

    .line 211
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_9

    .line 212
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    move v0, v6

    .line 213
    goto/16 :goto_0

    .line 216
    :cond_9
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 220
    :catch_1
    move-exception v0

    .line 221
    const-string v1, "NvAndroidVideoFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    move v0, v6

    .line 224
    goto/16 :goto_0

    .line 234
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    .line 235
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    move v0, v7

    .line 236
    goto/16 :goto_0
.end method

.method public SeekVideoFrame(JJ)I
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 289
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 313
    :goto_0
    return v0

    .line 292
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 293
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    .line 296
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/16 v6, 0x61a8

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 297
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 302
    :cond_1
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    sub-long v2, v0, v2

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gtz v2, :cond_3

    .line 304
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 299
    goto :goto_0

    .line 306
    :cond_3
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReader;->SeekInternal(JJ)I

    move-result v2

    .line 307
    if-nez v2, :cond_4

    .line 308
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    .line 309
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    :goto_1
    move v0, v2

    .line 313
    goto :goto_0

    .line 311
    :cond_4
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    goto :goto_1
.end method

.method public SetDecodeTemporalLayer(IJ)V
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-ne p1, v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iput-wide p2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    .line 280
    iput p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    goto :goto_0
.end method

.method public StartPlayback(JJ)I
    .locals 9

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 321
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 325
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    move v0, v2

    .line 326
    goto :goto_0

    .line 329
    :cond_2
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 330
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    .line 332
    :cond_3
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    iget-wide v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 335
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    move v0, v3

    .line 336
    goto :goto_0

    .line 339
    :cond_4
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReader;->SeekInternal(JJ)I

    move-result v0

    .line 340
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    .line 341
    if-nez v0, :cond_0

    .line 344
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    move v0, v3

    .line 345
    goto :goto_0
.end method

.method public hasDecoderSetupFailed()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "NvAndroidVideoFileReader"

    const-string v2, "m_frameAvailable already set, frame could be dropped!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 388
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
