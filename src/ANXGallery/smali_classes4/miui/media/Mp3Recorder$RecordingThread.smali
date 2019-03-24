.class Lmiui/media/Mp3Recorder$RecordingThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic Cl:Lmiui/media/Mp3Recorder;


# direct methods
.method private constructor <init>(Lmiui/media/Mp3Recorder;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V
    .locals 0

    .line 498
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 501
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 502
    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 504
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v2}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V

    .line 506
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->b(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 509
    const-string v0, "Mp3Recorder"

    const-string v2, "Error out put stream not ready"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V

    .line 511
    return-void

    .line 513
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 514
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->d(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->c(Lmiui/media/Mp3Recorder;)[S

    move-result-object v3

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->c(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 515
    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;J)J

    .line 516
    if-gtz v0, :cond_2

    .line 517
    const-string v1, "Mp3Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error record sample failed, read size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V

    .line 519
    goto/16 :goto_2

    .line 521
    :cond_2
    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v5}, Lmiui/media/Mp3Recorder;->c(Lmiui/media/Mp3Recorder;)[S

    move-result-object v5

    invoke-static {v4, v5, v0}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;[SI)I

    move-result v4

    invoke-static {v3, v4}, Lmiui/media/Mp3Recorder;->b(Lmiui/media/Mp3Recorder;I)I

    .line 522
    nop

    .line 523
    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->e(Lmiui/media/Mp3Recorder;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 524
    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->g(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v5

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->c(Lmiui/media/Mp3Recorder;)[S

    move-result-object v6

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->c(Lmiui/media/Mp3Recorder;)[S

    move-result-object v7

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->f(Lmiui/media/Mp3Recorder;)[B

    move-result-object v9

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->f(Lmiui/media/Mp3Recorder;)[B

    move-result-object v3

    array-length v10, v3

    move v8, v0

    invoke-virtual/range {v5 .. v10}, Lmiui/media/Mp3Encoder;->encode([S[SI[BI)I

    move-result v3

    goto :goto_1

    .line 526
    :cond_3
    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->g(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v3

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->c(Lmiui/media/Mp3Recorder;)[S

    move-result-object v4

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v5}, Lmiui/media/Mp3Recorder;->h(Lmiui/media/Mp3Recorder;)I

    move-result v5

    div-int v5, v0, v5

    iget-object v6, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v6}, Lmiui/media/Mp3Recorder;->f(Lmiui/media/Mp3Recorder;)[B

    move-result-object v6

    iget-object v7, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v7}, Lmiui/media/Mp3Recorder;->f(Lmiui/media/Mp3Recorder;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lmiui/media/Mp3Encoder;->encodeInterleaved([SI[BI)I

    move-result v3

    .line 528
    :goto_1
    if-gtz v3, :cond_5

    .line 529
    if-nez v3, :cond_4

    .line 530
    const-string v0, "Mp3Recorder"

    const-string v2, "Not a complete frame samples to encode: skiped"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    goto/16 :goto_0

    .line 533
    :cond_4
    const-string v1, "Mp3Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encode PCM failed, encode size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " read size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 535
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V

    goto :goto_2

    .line 540
    :cond_5
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->j(Lmiui/media/Mp3Recorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 541
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V

    .line 542
    goto :goto_2

    .line 545
    :cond_6
    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->b(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v4}, Lmiui/media/Mp3Recorder;->f(Lmiui/media/Mp3Recorder;)[B

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 546
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lmiui/media/Mp3Recorder;->b(Lmiui/media/Mp3Recorder;J)J

    .line 547
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->k(Lmiui/media/Mp3Recorder;)J

    move-result-wide v3

    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->l(Lmiui/media/Mp3Recorder;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_7

    .line 548
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    goto :goto_2

    .line 555
    :cond_7
    nop

    .line 556
    goto/16 :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when write sample to file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v3}, Lmiui/media/Mp3Recorder;->m(Lmiui/media/Mp3Recorder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->a(Lmiui/media/Mp3Recorder;I)V

    .line 554
    nop

    .line 557
    :cond_8
    :goto_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->Cl:Lmiui/media/Mp3Recorder;

    invoke-static {v0, v2}, Lmiui/media/Mp3Recorder;->b(Lmiui/media/Mp3Recorder;I)I

    .line 558
    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void
.end method
