.class Lmiui/media/LocalWavRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Recorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/LocalWavRecorder$EventHandler;,
        Lmiui/media/LocalWavRecorder$RecordingThread;
    }
.end annotation


# static fields
.field private static final BK:I = 0x0

.field private static final BL:I = 0x1

.field private static final BP:I = 0x2

.field private static final BQ:I = 0x4

.field private static final Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

.field private static final By:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "WavRecorder"

.field private static final STATE_PAUSED:I = 0x3


# instance fields
.field private Av:I

.field private Bd:Lmiui/media/Recorder$OnErrorListener;

.field private final Bg:I

.field private final Bh:I

.field private final Bi:I

.field private Bj:I

.field private Bk:Ljava/lang/String;

.field private Bl:Ljava/io/File;

.field private Bm:I

.field private Bn:I

.field private Bo:I

.field private Bp:J

.field private Bq:J

.field private Br:Ljava/lang/String;

.field private Bs:[S

.field private Bt:Ljava/io/DataOutputStream;

.field private Bu:Landroid/media/AudioRecord;

.field private Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

.field private Bw:I

.field private Bx:I

.field private Bz:Landroid/os/Handler;

.field private gM:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/LocalWavRecorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x2c

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bg:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bh:I

    .line 32
    const/16 v0, 0x28

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bi:I

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lmiui/media/LocalWavRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/LocalWavRecorder$EventHandler;-><init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->Bz:Landroid/os/Handler;

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Lmiui/media/LocalWavRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/LocalWavRecorder$EventHandler;-><init>(Lmiui/media/LocalWavRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->Bz:Landroid/os/Handler;

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "WavRecorder"

    const-string v1, "Could not create event handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bz:Landroid/os/Handler;

    .line 80
    :goto_0
    invoke-virtual {p0}, Lmiui/media/LocalWavRecorder;->reset()V

    .line 81
    return-void
.end method

.method private N(I)V
    .locals 4

    .line 391
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bz:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bz:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/media/LocalWavRecorder;->Bz:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/media/LocalWavRecorder;)I
    .locals 0

    .line 24
    iget p0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    return p0
.end method

.method static synthetic a(Lmiui/media/LocalWavRecorder;[SI)I
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lmiui/media/LocalWavRecorder;->a([SI)I

    move-result p0

    return p0
.end method

.method private a([SI)I
    .locals 3

    .line 308
    nop

    .line 309
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 310
    aget-short v2, p1, v0

    if-gez v2, :cond_0

    aget-short v2, p1, v0

    neg-int v2, v2

    goto :goto_1

    :cond_0
    aget-short v2, p1, v0

    .line 311
    :goto_1
    if-le v2, v1, :cond_1

    .line 312
    nop

    .line 309
    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    return v1
.end method

.method static synthetic a(Lmiui/media/LocalWavRecorder;J)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bp:J

    return-wide v0
.end method

.method private a(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 2

    .line 334
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    sget-object v0, Lmiui/media/LocalWavRecorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lmiui/media/LocalWavRecorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result p1

    .line 337
    const-string p2, "WavRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    goto :goto_0

    .line 339
    :cond_0
    const-string p1, "WavRecorder"

    const-string p2, "Do not support extra parameters"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lmiui/media/LocalWavRecorder;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lmiui/media/LocalWavRecorder;->N(I)V

    return-void
.end method

.method static synthetic b(Lmiui/media/LocalWavRecorder;I)I
    .locals 0

    .line 24
    iput p1, p0, Lmiui/media/LocalWavRecorder;->Bn:I

    return p1
.end method

.method static synthetic b(Lmiui/media/LocalWavRecorder;J)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    return-wide v0
.end method

.method static synthetic b(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->Bt:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method static synthetic c(Lmiui/media/LocalWavRecorder;)[S
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->Bs:[S

    return-object p0
.end method

.method private cy()V
    .locals 11

    .line 411
    nop

    .line 412
    nop

    .line 414
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->Bl:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 415
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x2c

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 417
    const/4 v3, 0x4

    iget-wide v4, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    const-wide/16 v6, 0x24

    add-long/2addr v4, v6

    .line 418
    invoke-static {v4, v5}, Lmiui/media/d;->g(J)[B

    move-result-object v4

    .line 417
    invoke-static {v0, v3, v4}, Lmiui/media/d;->a(Ljava/nio/MappedByteBuffer;I[B)V

    .line 419
    const/16 v3, 0x28

    iget-wide v4, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    .line 420
    invoke-static {v4, v5}, Lmiui/media/d;->g(J)[B

    move-result-object v4

    .line 419
    invoke-static {v0, v3, v4}, Lmiui/media/d;->a(Ljava/nio/MappedByteBuffer;I[B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 427
    nop

    .line 428
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 430
    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_4

    .line 423
    :catch_0
    move-exception v0

    goto :goto_0

    .line 421
    :catch_1
    move-exception v0

    goto :goto_1

    .line 426
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_6

    .line 423
    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_0

    .line 421
    :catch_3
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    .line 426
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_6

    .line 423
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 424
    :goto_0
    :try_start_4
    const-string v3, "WavRecorder"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 427
    if-eqz v1, :cond_0

    .line 428
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 430
    :cond_0
    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 421
    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 422
    :goto_1
    :try_start_6
    const-string v3, "WavRecorder"

    const-string v4, "FileNotFoundException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 427
    if-eqz v1, :cond_1

    .line 428
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    .line 433
    :catch_6
    move-exception v0

    goto :goto_3

    .line 430
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 431
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    .line 433
    :goto_3
    nop

    .line 434
    const-string v1, "WavRecorder"

    const-string v2, "file close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    goto :goto_5

    .line 435
    :cond_2
    :goto_4
    nop

    .line 437
    :goto_5
    return-void

    .line 426
    :catchall_2
    move-exception v0

    .line 427
    :goto_6
    if-eqz v1, :cond_3

    .line 428
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    .line 433
    :catch_7
    move-exception v1

    goto :goto_8

    .line 430
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 431
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    .line 433
    :goto_8
    nop

    .line 434
    const-string v2, "WavRecorder"

    const-string v3, "file close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 435
    :cond_4
    :goto_9
    throw v0
.end method

.method static synthetic d(Lmiui/media/LocalWavRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic e(Lmiui/media/LocalWavRecorder;)Ljava/io/File;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->Bl:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f(Lmiui/media/LocalWavRecorder;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    return-wide v0
.end method

.method static synthetic g(Lmiui/media/LocalWavRecorder;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->gM:J

    return-wide v0
.end method

.method static synthetic h(Lmiui/media/LocalWavRecorder;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->Bk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lmiui/media/LocalWavRecorder;)Lmiui/media/Recorder$OnErrorListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/media/LocalWavRecorder;->Bd:Lmiui/media/Recorder$OnErrorListener;

    return-object p0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxAmplitude()I
    .locals 1

    .line 320
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bn:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .line 217
    iget-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bp:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lmiui/media/LocalWavRecorder;->Bo:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 1

    .line 126
    sget-object v0, Lmiui/media/LocalWavRecorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 325
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

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

    .line 226
    :try_start_0
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_2
    const-string v1, "WavRecorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :goto_0
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 238
    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 240
    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    .line 242
    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
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

    .line 167
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    iget v1, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bx:I

    .line 169
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bx:I

    if-ltz v0, :cond_1

    .line 173
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bx:I

    mul-int/2addr v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bs:[S

    .line 174
    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Lmiui/media/LocalWavRecorder;->Av:I

    iget v5, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    iget v6, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    const/4 v7, 0x2

    iget-object v1, p0, Lmiui/media/LocalWavRecorder;->Bs:[S

    const/4 v9, 0x1

    array-length v8, v1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    .line 176
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    iget-object v1, p0, Lmiui/media/LocalWavRecorder;->Br:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/media/LocalWavRecorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 177
    const-string v0, "WavRecorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    iput v2, p0, Lmiui/media/LocalWavRecorder;->Bo:I

    .line 180
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/media/LocalWavRecorder;->Bk:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bl:Ljava/io/File;

    .line 181
    iput v9, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    .line 182
    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 170
    :cond_1
    const-string v0, "WavRecorder"

    const-string v1, "Error when getting min buffer size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 299
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    .line 302
    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public reset()V
    .locals 2

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    .line 156
    const/4 v1, 0x1

    iput v1, p0, Lmiui/media/LocalWavRecorder;->Av:I

    .line 157
    const v1, 0xac44

    iput v1, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    .line 158
    const/16 v1, 0x10

    iput v1, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    .line 159
    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bp:J

    .line 161
    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    .line 162
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->gM:J

    .line 163
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

    .line 247
    :try_start_0
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 248
    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Lmiui/media/LocalWavRecorder;->Av:I

    iget v4, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    iget v5, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    const/4 v6, 0x2

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->Bs:[S

    array-length v7, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    .line 250
    const-string v0, "WavRecorder"

    const-string v2, "Apply new AudioRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder;->Br:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lmiui/media/LocalWavRecorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 253
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 256
    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    .line 258
    new-instance v0, Lmiui/media/LocalWavRecorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    .line 259
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->start()V

    .line 260
    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    const-string v0, "WavRecorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioChannel(I)V
    .locals 0

    .line 130
    iput p1, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    .line 131
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 0

    .line 108
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 0

    .line 104
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    .line 99
    iput p1, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    .line 100
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 94
    iput p1, p0, Lmiui/media/LocalWavRecorder;->Av:I

    .line 95
    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    .line 119
    sget-object v0, Lmiui/media/LocalWavRecorder;->Bf:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->Br:Ljava/lang/String;

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not support extra parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDuration(I)V
    .locals 2

    .line 145
    if-lez p1, :cond_0

    .line 146
    div-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x10

    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bo:I

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x8

    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->gM:J

    goto :goto_0

    .line 148
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/LocalWavRecorder;->gM:J

    .line 150
    :goto_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 2

    .line 135
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 136
    iput-wide p1, p0, Lmiui/media/LocalWavRecorder;->gM:J

    goto :goto_0

    .line 138
    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lmiui/media/LocalWavRecorder;->gM:J

    .line 140
    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->Bd:Lmiui/media/Recorder$OnErrorListener;

    .line 112
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmiui/media/LocalWavRecorder;->Bk:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    .line 90
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 115
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

    .line 187
    :try_start_0
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-nez v0, :cond_2

    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 192
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 196
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/media/LocalWavRecorder;->Bp:J

    .line 197
    iput-wide v2, p0, Lmiui/media/LocalWavRecorder;->Bq:J

    .line 198
    iput v1, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    .line 199
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 200
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/LocalWavRecorder;->Bl:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lmiui/media/LocalWavRecorder;->Bt:Ljava/io/DataOutputStream;

    .line 205
    const-string v1, "WavRecorder"

    const-string v2, "AudioRecord started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v1, p0, Lmiui/media/LocalWavRecorder;->Bm:I

    iget v2, p0, Lmiui/media/LocalWavRecorder;->Bj:I

    invoke-static {v1, v2}, Lmiui/media/d;->j(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 207
    new-instance v0, Lmiui/media/LocalWavRecorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    .line 208
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->start()V

    .line 209
    const-string v0, "WavRecorder"

    const-string v1, "WAVRecorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wav record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    const-string v0, "WavRecorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    const-string v0, "WavRecorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    const-string v0, "WavRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/LocalWavRecorder;->Bw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/LocalWavRecorder;->Bw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/LocalWavRecorder$RecordingThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_2
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_2
    const-string v1, "WavRecorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/LocalWavRecorder;->Bv:Lmiui/media/LocalWavRecorder$RecordingThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :try_start_3
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bt:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    goto :goto_2

    .line 282
    :catch_1
    move-exception v0

    .line 283
    :try_start_4
    const-string v1, "WavRecorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :goto_2
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lmiui/media/LocalWavRecorder;->Bu:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 287
    const-string v0, "WavRecorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_3
    invoke-direct {p0}, Lmiui/media/LocalWavRecorder;->cy()V

    .line 290
    const-string v0, "WavRecorder"

    const-string v1, "WavRecorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
