.class Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
.super Ljava/lang/Object;
.source "LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/download/LoadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockSpace"
.end annotation


# instance fields
.field private final end:J

.field private final sha1:Ljava/lang/String;

.field private final spaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/kuaipan/android/kss/download/LoadMap$Space;",
            ">;"
        }
    .end annotation
.end field

.field private final start:J

.field final synthetic this$0:Lcn/kuaipan/android/kss/download/LoadMap;

.field private verifyFailCount:I

.field private verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;J)V
    .locals 3
    .param p1, "this$0"    # Lcn/kuaipan/android/kss/download/LoadMap;
    .param p2, "block"    # Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    .param p3, "start"    # J

    .prologue
    .line 422
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->this$0:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iget-object v0, p2, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->sha1:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->sha1:Ljava/lang/String;

    .line 424
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    .line 425
    iget-wide v0, p2, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->size:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->end:J

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyFailCount:I

    .line 428
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->reset()V

    .line 429
    return-void
.end method

.method private _verify(Lcn/kuaipan/android/kss/download/KssAccessor;)Z
    .locals 10
    .param p1, "accessor"    # Lcn/kuaipan/android/kss/download/KssAccessor;

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, "result":Z
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/KssAccessor;->lock()V

    .line 517
    :try_start_0
    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->end:J

    iget-wide v8, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    sub-long/2addr v6, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Lcn/kuaipan/android/kss/download/KssAccessor;->sha1(JJ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 518
    .local v2, "sha1":Ljava/lang/String;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 522
    :goto_0
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    .line 525
    .end local v2    # "sha1":Ljava/lang/String;
    :goto_1
    return v1

    .line 518
    .restart local v2    # "sha1":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->sha1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 519
    .end local v2    # "sha1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "LoadMap"

    const-string v4, "Meet exception when verify sha1."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    throw v3
.end method

.method static synthetic access$000(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .prologue
    .line 413
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->getAllSpaces()[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/KssAccessor;Z)Z
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .param p1, "x1"    # Lcn/kuaipan/android/kss/download/KssAccessor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verify(Lcn/kuaipan/android/kss/download/KssAccessor;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .param p1, "x1"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->tryMerge(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .prologue
    .line 413
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    return-wide v0
.end method

.method static synthetic access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .prologue
    .line 413
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->end:J

    return-wide v0
.end method

.method static synthetic access$600(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V
    .locals 0
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .prologue
    .line 413
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->reset()V

    return-void
.end method

.method static synthetic access$700(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .prologue
    .line 413
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .prologue
    .line 413
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized getAllSpaces()[Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reset()V
    .locals 8

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 450
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    new-instance v1, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->this$0:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->end:J

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized size()J
    .locals 6

    .prologue
    .line 474
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 475
    .local v2, "result":J
    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 476
    .local v0, "child":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->size()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    .line 477
    goto :goto_0

    .line 478
    .end local v0    # "child":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :cond_0
    monitor-exit p0

    return-wide v2

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized tryMerge(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .locals 6
    .param p1, "space"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    const/4 v1, 0x1

    .line 455
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_0
    monitor-exit p0

    return v1

    .line 460
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 461
    .local v0, "child":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    if-eq v0, p1, :cond_1

    invoke-static {v0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->access$1200(Lcn/kuaipan/android/kss/download/LoadMap$Space;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 466
    .end local v0    # "child":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized verify(Lcn/kuaipan/android/kss/download/KssAccessor;Z)Z
    .locals 7
    .param p1, "accessor"    # Lcn/kuaipan/android/kss/download/KssAccessor;
    .param p2, "increaseFailCount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    sget-object v2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyFailCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v1, v6, :cond_1

    .line 487
    :cond_0
    const/4 v0, 0x1

    .line 508
    :goto_0
    monitor-exit p0

    return v0

    .line 490
    :cond_1
    :try_start_1
    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFING:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, "verifyPassed":Z
    :try_start_2
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->_verify(Lcn/kuaipan/android/kss/download/KssAccessor;)Z

    move-result v0

    .line 494
    if-nez v0, :cond_3

    .line 495
    if-eqz p2, :cond_2

    .line 496
    iget v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyFailCount:I

    .line 499
    :cond_2
    iget v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyFailCount:I

    if-lt v1, v6, :cond_3

    .line 500
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Sha1 verify failed more than MAX_VERIFY_COUNT"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 506
    :try_start_3
    sget-object v2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 508
    :goto_1
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    .end local v0    # "verifyPassed":Z
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 505
    .restart local v0    # "verifyPassed":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 506
    :try_start_4
    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    goto :goto_0

    .line 508
    :cond_4
    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    goto :goto_0

    :cond_5
    sget-object v2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public isVerified()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setSpaces([J)V
    .locals 10
    .param p1, "spaceCfg"    # [J

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 437
    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 438
    if-eqz p1, :cond_0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    iget-object v9, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    new-instance v1, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->this$0:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->end:J

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_1
    array-length v1, p1

    div-int/lit8 v0, v1, 0x2

    .line 443
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_2

    .line 444
    iget-object v9, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    new-instance v1, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->this$0:Lcn/kuaipan/android/kss/download/LoadMap;

    mul-int/lit8 v3, v8, 0x2

    aget-wide v4, p1, v3

    mul-int/lit8 v3, v8, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, p1, v3

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 446
    :cond_2
    monitor-exit p0

    return-void

    .line 436
    .end local v0    # "count":I
    .end local v8    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Block("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->verifyState:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 540
    :cond_0
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->spaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
