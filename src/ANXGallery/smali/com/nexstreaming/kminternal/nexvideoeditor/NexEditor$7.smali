.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;
.super Landroid/os/AsyncTask;
.source "NexEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIIIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2422
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->c:I

    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->d:I

    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->e:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2423
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a:I

    .line 2424
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    return-void
.end method

.method private a()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2427
    move v2, v1

    .line 2428
    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 2429
    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v0

    .line 2440
    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2441
    const-string v0, "exportImageFormat"

    const-string/jumbo v1, "wait waitSeekDone() fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/4 v0, -0x6

    .line 2445
    :cond_1
    return v0

    .line 2434
    :cond_2
    const-wide/16 v4, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2428
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2435
    :catch_0
    move-exception v3

    .line 2436
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v4, 0x64

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2451
    .line 2452
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->c:I

    .line 2454
    const-string v0, "NexEditor.java"

    const-string v2, "  exportImageFormat doInBackground"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->b(I)V

    .line 2457
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a()I

    move-result v5

    .line 2458
    if-eq v5, v10, :cond_0

    .line 2459
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2547
    :goto_0
    return-object v0

    .line 2462
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v10}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;I)I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 2463
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq v0, v2, :cond_1

    .line 2465
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v2, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 2466
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportImageFormat setGIFMode failed width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/4 v0, -0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2470
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->b()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 2473
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->b()I

    move-result v3

    .line 2474
    const-string v6, "exportImageFormat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    if-nez v3, :cond_6

    .line 2496
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    .line 2497
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    rsub-int/lit8 v0, v0, 0x64

    .line 2498
    if-gtz v0, :cond_c

    move v2, v4

    move v3, v1

    .line 2502
    :goto_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->i(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 2503
    iget-object v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v6, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/view/Surface;)I

    .line 2505
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->c:I

    move v6, v5

    move v5, v0

    :goto_3
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->d:I

    if-ge v5, v0, :cond_3

    .line 2506
    const-string v0, "exportImageFormat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "seek start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j(I)V

    .line 2510
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v8, 0x2710

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2511
    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    move v6, v0

    .line 2519
    :goto_5
    if-gtz v6, :cond_9

    .line 2520
    const-string v0, "exportImageFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->i(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2539
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->i(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0, v11, v11}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2542
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->a()V

    .line 2543
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    if-eq v0, v4, :cond_5

    .line 2544
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->b(I)V

    .line 2547
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2479
    :cond_6
    const-wide/16 v6, 0x1f4

    const/4 v8, 0x0

    :try_start_1
    invoke-static {v6, v7, v8}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2483
    :goto_7
    if-eq v2, v3, :cond_7

    .line 2486
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    .line 2487
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->b(I)V

    move v0, v1

    move v2, v3

    goto/16 :goto_1

    .line 2480
    :catch_0
    move-exception v6

    .line 2481
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 2489
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 2490
    const/16 v3, 0xa

    if-le v0, v3, :cond_2

    .line 2491
    const-string v0, "exportImageFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitCount Timeout="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2514
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto/16 :goto_4

    .line 2516
    :catch_1
    move-exception v0

    .line 2517
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 2523
    :cond_9
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a()I

    move-result v6

    .line 2524
    if-eq v6, v10, :cond_a

    .line 2525
    const-string v0, "exportImageFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2530
    :cond_a
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->c:I

    sub-int v0, v5, v0

    mul-int/2addr v0, v2

    iget v7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->d:I

    iget v8, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->c:I

    sub-int/2addr v7, v8

    div-int/2addr v0, v7

    add-int/2addr v0, v3

    .line 2531
    iget v7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    if-eq v7, v0, :cond_b

    .line 2532
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    .line 2534
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    iget v7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->b:I

    invoke-virtual {v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->b(I)V

    .line 2505
    :cond_b
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->e:I

    add-int/2addr v0, v5

    move v5, v0

    goto/16 :goto_3

    :cond_c
    move v3, v2

    move v2, v0

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2553
    const-string v0, "NexEditor.java"

    const-string v1, "  exportImageFormat onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2556
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a:I

    .line 2558
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;I)I

    .line 2560
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/view/Surface;)I

    .line 2561
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->i(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->i(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2564
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 2566
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 2567
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 2568
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->a(I)Z

    .line 2590
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2422
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2422
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->a(Ljava/lang/Integer;)V

    return-void
.end method
