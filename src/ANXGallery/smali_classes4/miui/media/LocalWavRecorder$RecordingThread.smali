.class Lmiui/media/LocalWavRecorder$RecordingThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/LocalWavRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic BU:Lmiui/media/LocalWavRecorder;


# direct methods
.method private constructor <init>(Lmiui/media/LocalWavRecorder;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/LocalWavRecorder;Lmiui/media/LocalWavRecorder$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lmiui/media/LocalWavRecorder$RecordingThread;-><init>(Lmiui/media/LocalWavRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 347
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 348
    const-string v0, "WavRecorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 350
    const-string v0, "WavRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v2}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;I)V

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->b(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    const-string v0, "WavRecorder"

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;I)V

    .line 357
    return-void

    .line 359
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 360
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->d(Lmiui/media/LocalWavRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v3}, Lmiui/media/LocalWavRecorder;->c(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v3

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->c(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 361
    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;J)J

    .line 362
    if-gtz v0, :cond_2

    .line 363
    const-string v1, "WavRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error record sample failed, read size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;I)V

    .line 365
    goto/16 :goto_1

    .line 367
    :cond_2
    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    iget-object v5, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v5}, Lmiui/media/LocalWavRecorder;->c(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v5

    invoke-static {v4, v5, v0}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;[SI)I

    move-result v4

    invoke-static {v3, v4}, Lmiui/media/LocalWavRecorder;->b(Lmiui/media/LocalWavRecorder;I)I

    .line 368
    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v3}, Lmiui/media/LocalWavRecorder;->e(Lmiui/media/LocalWavRecorder;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 369
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3f1

    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;I)V

    .line 370
    goto :goto_1

    .line 373
    :cond_3
    :try_start_0
    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v3}, Lmiui/media/LocalWavRecorder;->b(Lmiui/media/LocalWavRecorder;)Ljava/io/DataOutputStream;

    move-result-object v3

    iget-object v4, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v4}, Lmiui/media/LocalWavRecorder;->c(Lmiui/media/LocalWavRecorder;)[S

    move-result-object v4

    invoke-static {v4, v0}, Lmiui/media/d;->b([SI)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 374
    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    mul-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lmiui/media/LocalWavRecorder;->b(Lmiui/media/LocalWavRecorder;J)J

    .line 375
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->f(Lmiui/media/LocalWavRecorder;)J

    move-result-wide v3

    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0}, Lmiui/media/LocalWavRecorder;->g(Lmiui/media/LocalWavRecorder;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    .line 376
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3ef

    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_1

    .line 383
    :cond_4
    nop

    .line 384
    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v0, "WavRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when write sample to file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v3}, Lmiui/media/LocalWavRecorder;->h(Lmiui/media/LocalWavRecorder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    const/16 v1, 0x3ed

    invoke-static {v0, v1}, Lmiui/media/LocalWavRecorder;->a(Lmiui/media/LocalWavRecorder;I)V

    .line 382
    nop

    .line 385
    :cond_5
    :goto_1
    iget-object v0, p0, Lmiui/media/LocalWavRecorder$RecordingThread;->BU:Lmiui/media/LocalWavRecorder;

    invoke-static {v0, v2}, Lmiui/media/LocalWavRecorder;->b(Lmiui/media/LocalWavRecorder;I)I

    .line 386
    const-string v0, "WavRecorder"

    const-string v1, "RecordingThread stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method
