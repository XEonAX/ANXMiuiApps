.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$EventHandler;,
        Lmiui/media/Mp3Recorder$RecordingThread;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field private static final BK:I = 0x0

.field private static final BL:I = 0x1

.field private static final BP:I = 0x2

.field private static final BQ:I = 0x4

.field private static final Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

.field private static final Ck:I = 0x1

.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_FILE_NOT_EXIST:I = 0x8

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field private static final STATE_PAUSED:I = 0x3

.field public static final VBR_QUALITY_HIGH:I = 0x2

.field public static final VBR_QUALITY_LOW:I = 0x9

.field public static final VBR_QUALITY_MEDIUM:I = 0x6


# instance fields
.field private Av:I

.field private Bj:I

.field private Bk:Ljava/lang/String;

.field private Bl:Ljava/io/File;

.field private Bm:I

.field private Bn:I

.field private Bo:I

.field private Bp:J

.field private Bq:J

.field private Br:Ljava/lang/String;

.field private Bu:Landroid/media/AudioRecord;

.field private Bw:I

.field private Bx:I

.field private Bz:Landroid/os/Handler;

.field private Cb:I

.field private Cc:I

.field private Cd:I

.field private Ce:I

.field private Cf:[S

.field private Cg:[B

.field private Ch:Lmiui/media/Mp3Encoder;

.field private Ci:Lmiui/media/Mp3Recorder$RecordingThread;

.field private Cj:Lmiui/media/Mp3Recorder$RecordingErrorListener;

.field private gC:Ljava/io/FileOutputStream;

.field private gM:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/Mp3Recorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->Bz:Landroid/os/Handler;

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->Bz:Landroid/os/Handler;

    goto :goto_0

    .line 112
    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Could not create event handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Bz:Landroid/os/Handler;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    .line 116
    return-void
.end method

.method private N(I)V
    .locals 2

    .line 563
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bz:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bz:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 565
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 566
    iget-object p1, p0, Lmiui/media/Mp3Recorder;->Bz:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;)I
    .locals 0

    .line 23
    iget p0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    return p0
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;[SI)I
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->a([SI)I

    move-result p0

    return p0
.end method

.method private a([SI)I
    .locals 3

    .line 461
    nop

    .line 462
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 463
    aget-short v2, p1, v0

    if-gez v2, :cond_0

    aget-short v2, p1, v0

    neg-int v2, v2

    goto :goto_1

    :cond_0
    aget-short v2, p1, v0

    .line 464
    :goto_1
    if-le v2, v1, :cond_1

    .line 465
    nop

    .line 462
    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_2
    return v1
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;J)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Bp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Bp:J

    return-wide v0
.end method

.method private a(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 2

    .line 488
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    sget-object v0, Lmiui/media/Mp3Recorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lmiui/media/Mp3Recorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result p1

    .line 491
    const-string p2, "Mp3Recorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    goto :goto_0

    .line 493
    :cond_0
    const-string p1, "Mp3Recorder"

    const-string p2, "Do not support extra parameters"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->N(I)V

    return-void
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;I)I
    .locals 0

    .line 23
    iput p1, p0, Lmiui/media/Mp3Recorder;->Bn:I

    return p1
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;J)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Bq:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Bq:J

    return-wide v0
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->gC:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic c(Lmiui/media/Mp3Recorder;)[S
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Cf:[S

    return-object p0
.end method

.method static synthetic d(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic e(Lmiui/media/Mp3Recorder;)I
    .locals 0

    .line 23
    iget p0, p0, Lmiui/media/Mp3Recorder;->Bm:I

    return p0
.end method

.method static synthetic f(Lmiui/media/Mp3Recorder;)[B
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Cg:[B

    return-object p0
.end method

.method static synthetic g(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    return-object p0
.end method

.method static synthetic h(Lmiui/media/Mp3Recorder;)I
    .locals 0

    .line 23
    iget p0, p0, Lmiui/media/Mp3Recorder;->Bo:I

    return p0
.end method

.method static synthetic i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Cj:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object p0
.end method

.method static synthetic j(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Bl:Ljava/io/File;

    return-object p0
.end method

.method static synthetic k(Lmiui/media/Mp3Recorder;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Bq:J

    return-wide v0
.end method

.method static synthetic l(Lmiui/media/Mp3Recorder;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->gM:J

    return-wide v0
.end method

.method static synthetic m(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Bk:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 1

    .line 476
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bn:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Bq:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .line 340
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->Bp:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bj:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bo:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 1

    .line 190
    sget-object v0, Lmiui/media/Mp3Recorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 484
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Recorder;->Bw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    :try_start_2
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :goto_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 368
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 370
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    .line 372
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bj:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->Bm:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->Bx:I

    .line 278
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bx:I

    if-ltz v0, :cond_2

    .line 282
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bx:I

    mul-int/2addr v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Cf:[S

    .line 283
    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Lmiui/media/Mp3Recorder;->Av:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->Bj:I

    iget v6, p0, Lmiui/media/Mp3Recorder;->Bm:I

    const/4 v7, 0x2

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Cf:[S

    const/16 v9, 0xc

    array-length v8, v1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    .line 285
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Br:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Recorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 286
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bm:I

    if-ne v0, v9, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lmiui/media/Mp3Recorder;->Cb:I

    .line 288
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bm:I

    const/4 v1, 0x1

    if-ne v0, v9, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Lmiui/media/Mp3Recorder;->Bo:I

    .line 291
    const-wide v2, 0x40bc200000000000L    # 7200.0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Cf:[S

    array-length v0, v0

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Cg:[B

    .line 292
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bj:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setInSampleRate(I)V

    .line 293
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Cb:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutMode(I)V

    .line 294
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bo:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setChannelCount(I)V

    .line 295
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bj:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutSampleRate(I)V

    .line 296
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Cc:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutBitRate(I)V

    .line 297
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Cd:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setQuality(I)V

    .line 298
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Ce:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setVBRQuality(I)V

    .line 299
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->init()Z

    .line 301
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Bk:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Bl:Ljava/io/File;

    .line 302
    iput v1, p0, Lmiui/media/Mp3Recorder;->Bw:I

    .line 303
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 279
    :cond_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Error when getting min buffer size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 451
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    .line 454
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->close()I

    .line 457
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public reset()V
    .locals 2

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    .line 255
    const/4 v1, 0x1

    iput v1, p0, Lmiui/media/Mp3Recorder;->Av:I

    .line 256
    const v1, 0xac44

    iput v1, p0, Lmiui/media/Mp3Recorder;->Bj:I

    .line 257
    const/16 v1, 0x10

    iput v1, p0, Lmiui/media/Mp3Recorder;->Bm:I

    .line 258
    iput v0, p0, Lmiui/media/Mp3Recorder;->Cd:I

    .line 259
    iput v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    .line 260
    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->Cc:I

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Bp:J

    .line 262
    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->Bq:J

    .line 263
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->gM:J

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->Ce:I

    .line 265
    new-instance v0, Lmiui/media/Mp3Encoder;

    invoke-direct {v0}, Lmiui/media/Mp3Encoder;-><init>()V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    .line 266
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 381
    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Lmiui/media/Mp3Recorder;->Av:I

    iget v4, p0, Lmiui/media/Mp3Recorder;->Bj:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->Bm:I

    const/4 v6, 0x2

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Cf:[S

    array-length v7, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    .line 383
    const-string v0, "Mp3Recorder"

    const-string v2, "Apply new AudioRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Br:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lmiui/media/Mp3Recorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 386
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 389
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    .line 391
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 392
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 393
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioChannel(I)V
    .locals 0

    .line 203
    iput p1, p0, Lmiui/media/Mp3Recorder;->Bm:I

    .line 204
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    .line 143
    iput p1, p0, Lmiui/media/Mp3Recorder;->Bj:I

    .line 144
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 134
    iput p1, p0, Lmiui/media/Mp3Recorder;->Av:I

    .line 135
    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    .line 179
    sget-object v0, Lmiui/media/Mp3Recorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->Br:Ljava/lang/String;

    .line 183
    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not support extra parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDuration(J)V
    .locals 2

    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 227
    iget v0, p0, Lmiui/media/Mp3Recorder;->Cc:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->gM:J

    goto :goto_0

    .line 229
    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->gM:J

    .line 231
    :goto_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 2

    .line 212
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 213
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->gM:J

    goto :goto_0

    .line 215
    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->gM:J

    .line 217
    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->Cj:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    .line 162
    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0

    .line 152
    iput p1, p0, Lmiui/media/Mp3Recorder;->Cc:I

    .line 153
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->Bk:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 171
    iput p1, p0, Lmiui/media/Mp3Recorder;->Cd:I

    .line 172
    return-void
.end method

.method public setVBRQuality(I)V
    .locals 0

    .line 246
    iput p1, p0, Lmiui/media/Mp3Recorder;->Ce:I

    .line 247
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v0, :cond_2

    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 317
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 321
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->Bp:J

    .line 322
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->Bq:J

    .line 323
    iput v1, p0, Lmiui/media/Mp3Recorder;->Bw:I

    .line 324
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 325
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 328
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Bl:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->gC:Ljava/io/FileOutputStream;

    .line 329
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 331
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 332
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 326
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmiui/media/Mp3Recorder;->Bw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder shoul not be stopped in state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->Bw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/Mp3Recorder;->Bw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    :cond_2
    goto :goto_1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    :try_start_2
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ci:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 416
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Cg:[B

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Cg:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lmiui/media/Mp3Encoder;->flush([BI)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 418
    if-lez v0, :cond_4

    .line 419
    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->gC:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->Cg:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 424
    iget v0, p0, Lmiui/media/Mp3Recorder;->Ce:I

    if-ltz v0, :cond_3

    iget v0, p0, Lmiui/media/Mp3Recorder;->Ce:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_3

    .line 425
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ch:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Bk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->writeVBRHeader(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    :cond_3
    :try_start_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->gC:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    goto :goto_2

    .line 432
    :catch_1
    move-exception v0

    .line 433
    :try_start_5
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :goto_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    .line 436
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 437
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 430
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 427
    :catch_2
    move-exception v0

    goto :goto_4

    .line 421
    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer flush must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 427
    :goto_4
    nop

    .line 428
    :try_start_7
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be written when flush"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 431
    :try_start_8
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->gC:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 434
    goto :goto_5

    .line 432
    :catch_3
    move-exception v0

    .line 433
    :try_start_9
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :goto_5
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    .line 436
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 437
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    goto :goto_3

    .line 440
    :cond_5
    :goto_6
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 441
    nop

    .line 445
    monitor-exit p0

    return-void

    .line 430
    :goto_7
    nop

    .line 431
    :try_start_a
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->gC:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 434
    goto :goto_8

    .line 432
    :catch_4
    move-exception v1

    .line 433
    :try_start_b
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :goto_8
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    if-eqz v1, :cond_6

    .line 436
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 437
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 404
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
