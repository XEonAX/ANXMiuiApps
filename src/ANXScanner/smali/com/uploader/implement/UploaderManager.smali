.class public Lcom/uploader/implement/UploaderManager;
.super Ljava/lang/Object;
.source "UploaderManager.java"

# interfaces
.implements Lcom/uploader/export/IUploaderManager;
.implements Lcom/uploader/implement/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/UploaderManager$b;,
        Lcom/uploader/implement/UploaderManager$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/a/i;",
            "Lcom/uploader/implement/d/b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/a/i;",
            "Lcom/uploader/implement/d/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/uploader/implement/b/a/b;

.field private g:Landroid/content/BroadcastReceiver;

.field private volatile h:Landroid/os/Handler;

.field private volatile i:Z

.field private j:Ljava/lang/Runnable;

.field private k:Z

.field private l:Ljava/lang/String;

.field private final m:I

.field private n:Lcom/uploader/implement/c;

.field private final o:[B

.field private final p:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uploader/implement/UploaderManager;-><init>(I)V

    .line 143
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "instanceType"    # I

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/uploader/implement/UploaderManager;->a:I

    .line 71
    iput-boolean v0, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    .line 85
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/UploaderManager;->e:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/uploader/implement/UploaderManager;->m:I

    .line 151
    iput p1, p0, Lcom/uploader/implement/UploaderManager;->p:I

    .line 152
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5
    .param p1, "businessType"    # Ljava/lang/String;

    .prologue
    .line 447
    const/4 v1, -0x1

    .line 448
    .local v1, "index":I
    if-nez p1, :cond_0

    .line 449
    const-string p1, ""

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 452
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    move v1, v0

    .line 457
    :cond_1
    if-gez v1, :cond_2

    .line 458
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    iget v4, p0, Lcom/uploader/implement/UploaderManager;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/uploader/implement/UploaderManager;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 451
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/uploader/implement/UploaderManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/uploader/implement/UploaderManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/uploader/implement/UploaderManager;->c()V

    return-void
.end method

.method private a(Lcom/uploader/implement/a/i;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "action"    # Lcom/uploader/implement/a/i;
    .param p2, "concurrentArray"    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/i;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/a/i;",
            "Lcom/uploader/implement/d/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/uploader/implement/a/i;->g()I

    move-result v0

    .line 400
    .local v0, "category":I
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    if-nez v4, :cond_0

    .line 401
    new-instance v4, Lcom/uploader/implement/b/a/b;

    iget-object v5, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/uploader/implement/b/a/b;-><init>(Lcom/uploader/implement/c;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    .line 403
    :cond_0
    new-instance v3, Lcom/uploader/implement/d/c;

    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v5, p0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/uploader/implement/d/c;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/c;Landroid/os/Looper;)V

    .line 405
    .local v3, "session":Lcom/uploader/implement/d/b;
    if-nez p2, :cond_1

    .line 406
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "concurrentArray":Ljava/util/ArrayList;
    const/4 v4, 0x2

    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .restart local p2    # "concurrentArray":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 410
    :cond_1
    invoke-static {p1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 411
    .local v2, "pair":Landroid/util/Pair;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p1, p0}, Lcom/uploader/implement/a/i;->a(Lcom/uploader/implement/a/d;)V

    .line 415
    invoke-virtual {p1, v3}, Lcom/uploader/implement/a/i;->b(Lcom/uploader/implement/d/b;)V

    .line 417
    const/4 v1, 0x4

    .line 418
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    const-string v4, "UploaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startAction task:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/uploader/implement/a/i;->f()Lcom/uploader/export/IUploaderTask;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2
    return-void
.end method

.method private b()Landroid/os/Handler;
    .locals 8

    .prologue
    .line 262
    iget-object v0, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 263
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 279
    .end local v0    # "handler":Landroid/os/Handler;
    .local v1, "handler":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 267
    .end local v1    # "handler":Ljava/lang/Object;
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v3, 0x2

    .line 268
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    const-string v5, "UploaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doRetrieve and register"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "[aus]"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 273
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 274
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 275
    .local v2, "looper":Landroid/os/Looper;
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 277
    .restart local v0    # "handler":Landroid/os/Handler;
    iput-object v0, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    move-object v1, v0

    .line 279
    .restart local v1    # "handler":Ljava/lang/Object;
    goto :goto_0
.end method

.method static synthetic b(Lcom/uploader/implement/UploaderManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/uploader/implement/UploaderManager;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/uploader/implement/UploaderManager;->d()V

    return-void
.end method

.method private c()V
    .locals 17

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v14, v14, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 591
    .local v1, "applicationContext":Landroid/content/Context;
    const/4 v7, 0x0

    .line 592
    .local v7, "isConnected":Z
    const/4 v3, 0x0

    .line 593
    .local v3, "extraInfo":Ljava/lang/String;
    invoke-static {v1}, Lcom/uploader/implement/e/a;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 594
    .local v6, "info":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    .line 595
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    .line 596
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/uploader/implement/UploaderManager;->k:Z

    .line 600
    .local v8, "isConnectedOld":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uploader/implement/UploaderManager;->l:Ljava/lang/String;

    .line 602
    .local v4, "extraInfoOld":Ljava/lang/String;
    const/4 v2, 0x0

    .line 603
    .local v2, "changed":Z
    if-eq v8, v7, :cond_4

    .line 604
    const/4 v2, 0x1

    .line 613
    :cond_1
    :goto_0
    const/16 v9, 0x8

    .line 614
    .local v9, "p":I
    invoke-static {v9}, Lcom/uploader/implement/a;->a(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 615
    const-string v14, "UploaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/UploaderManager;->m:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " doNetworkChanged, extraInfo(new|old):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " isConnected(new|old):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " changed:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2
    if-nez v2, :cond_8

    .line 650
    :cond_3
    :goto_1
    return-void

    .line 606
    .end local v9    # "p":I
    :cond_4
    if-eqz v4, :cond_6

    .line 607
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v2, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 608
    :cond_6
    if-eqz v3, :cond_1

    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v2, 0x1

    :goto_3
    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 624
    .restart local v9    # "p":I
    :cond_8
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/uploader/implement/UploaderManager;->k:Z

    .line 625
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/uploader/implement/UploaderManager;->l:Ljava/lang/String;

    .line 628
    if-nez v7, :cond_9

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    if-eqz v14, :cond_3

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    invoke-virtual {v14}, Lcom/uploader/implement/b/a/b;->a()V

    goto :goto_1

    .line 636
    :cond_9
    const/4 v11, 0x0

    .line 637
    .local v11, "restartedCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uploader/implement/UploaderManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "size":I
    :goto_4
    if-ge v5, v12, :cond_a

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uploader/implement/UploaderManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 639
    .local v10, "pair":Landroid/util/Pair;
    iget-object v14, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/uploader/implement/a/i;

    iget-object v15, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/uploader/implement/d/b;

    invoke-virtual {v14, v15}, Lcom/uploader/implement/a/i;->b(Lcom/uploader/implement/d/b;)V

    .line 640
    add-int/lit8 v11, v11, 0x1

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 644
    .end local v10    # "pair":Landroid/util/Pair;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/uploader/implement/UploaderManager;->e()I

    move-result v13

    .line 646
    .local v13, "suppliedCount":I
    const/4 v9, 0x2

    .line 647
    invoke-static {v9}, Lcom/uploader/implement/a;->a(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 648
    const-string v14, "UploaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/UploaderManager;->m:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " restartedCount:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " suppliedCount:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    .line 653
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v2

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 655
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 656
    monitor-exit v2

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    new-instance v1, Lcom/uploader/implement/UploaderManager$a;

    const/4 v3, 0x5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v3, p0, v4}, Lcom/uploader/implement/UploaderManager$a;-><init>(ILcom/uploader/implement/UploaderManager;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    monitor-exit v2

    goto :goto_0

    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 668
    const/4 v2, 0x0

    .line 670
    .local v2, "count":I
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 671
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/a/i;

    .line 673
    .local v0, "action":Lcom/uploader/implement/a/i;
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/uploader/implement/a/i;->g()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 674
    .local v1, "concurrentArray":Ljava/util/ArrayList;
    if-nez v1, :cond_1

    .line 675
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 676
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 677
    invoke-direct {p0, v0, v1}, Lcom/uploader/implement/UploaderManager;->a(Lcom/uploader/implement/a/i;Ljava/util/ArrayList;)V

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 670
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "j":I
    if-ge v4, v8, :cond_0

    .line 684
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 685
    invoke-direct {p0, v0, v1}, Lcom/uploader/implement/UploaderManager;->a(Lcom/uploader/implement/a/i;Ljava/util/ArrayList;)V

    .line 686
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 692
    .end local v0    # "action":Lcom/uploader/implement/a/i;
    .end local v1    # "concurrentArray":Ljava/util/ArrayList;
    .end local v4    # "j":I
    :cond_2
    const/4 v5, 0x2

    .line 693
    .local v5, "p":I
    invoke-static {v5}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 694
    const-string v6, "UploaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " suppliedCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_3
    return v2
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 283
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 284
    .local v2, "handler":Landroid/os/Handler;
    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v4, v4, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, "applicationContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_2

    .line 290
    :try_start_0
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iput-object v6, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    .line 301
    :cond_2
    :goto_1
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 304
    iput-object v6, p0, Lcom/uploader/implement/UploaderManager;->j:Ljava/lang/Runnable;

    .line 305
    iput-object v6, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 307
    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    .line 308
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 309
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 310
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 312
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    if-eqz v4, :cond_3

    .line 313
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    invoke-virtual {v4}, Lcom/uploader/implement/b/a/b;->a()V

    .line 314
    iput-object v6, p0, Lcom/uploader/implement/UploaderManager;->f:Lcom/uploader/implement/b/a/b;

    .line 317
    :cond_3
    const/4 v3, 0x2

    .line 318
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    const-string v4, "UploaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doClean and release"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v3    # "p":I
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    const/16 v3, 0x10

    .line 293
    .restart local v3    # "p":I
    :try_start_1
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 294
    const-string v4, "UploaderManager"

    const-string v5, "doClean unregisterReceiver"

    invoke-static {v3, v4, v5, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_4
    iput-object v6, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "p":I
    :catchall_0
    move-exception v4

    iput-object v6, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    throw v4
.end method

.method a(Lcom/uploader/export/IUploaderTask;)V
    .locals 9
    .param p1, "task"    # Lcom/uploader/export/IUploaderTask;

    .prologue
    .line 466
    invoke-interface {p1}, Lcom/uploader/export/IUploaderTask;->getBizType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/uploader/implement/UploaderManager;->a(Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, "category":I
    const/4 v5, 0x0

    .line 470
    .local v5, "removed":Z
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 471
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uploader/implement/a/i;

    invoke-virtual {v6}, Lcom/uploader/implement/a/i;->f()Lcom/uploader/export/IUploaderTask;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 472
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uploader/implement/a/i;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/uploader/implement/a/i;->c(Lcom/uploader/implement/d/b;)V

    .line 473
    const/4 v5, 0x1

    .line 478
    :cond_0
    if-eqz v5, :cond_3

    .line 480
    const/4 v2, 0x4

    .line 481
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 482
    const-string v6, "UploaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doCancel cancel waiting task:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v2    # "p":I
    :cond_1
    :goto_1
    return-void

    .line 470
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 488
    :cond_3
    iget-object v6, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 489
    .local v4, "pairList":Ljava/util/ArrayList;
    if-eqz v4, :cond_1

    .line 492
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_1

    .line 493
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/uploader/implement/a/i;

    invoke-virtual {v6}, Lcom/uploader/implement/a/i;->f()Lcom/uploader/export/IUploaderTask;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 494
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 495
    .local v3, "pair":Landroid/util/Pair;
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/uploader/implement/a/i;

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/uploader/implement/d/b;

    invoke-virtual {v6, v7}, Lcom/uploader/implement/a/i;->c(Lcom/uploader/implement/d/b;)V

    .line 497
    const/4 v2, 0x4

    .line 498
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 499
    const-string v6, "UploaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doCancel cancel concurrent task:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 492
    .end local v2    # "p":I
    .end local v3    # "pair":Landroid/util/Pair;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method a(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Landroid/os/Handler;)V
    .locals 13
    .param p1, "task"    # Lcom/uploader/export/IUploaderTask;
    .param p2, "listener"    # Lcom/uploader/export/ITaskListener;
    .param p3, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v1, v1, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 327
    .local v6, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/uploader/implement/UploaderManager$b;

    invoke-direct {v1, p0}, Lcom/uploader/implement/UploaderManager$b;-><init>(Lcom/uploader/implement/UploaderManager;)V

    iput-object v1, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    .line 328
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v1, v1, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->g:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    invoke-static {v6}, Lcom/uploader/implement/e/a;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 330
    .local v9, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_0

    .line 331
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/uploader/implement/UploaderManager;->k:Z

    .line 332
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uploader/implement/UploaderManager;->l:Ljava/lang/String;

    .line 335
    .end local v6    # "applicationContext":Landroid/content/Context;
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    invoke-interface {p1}, Lcom/uploader/export/IUploaderTask;->getBizType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uploader/implement/UploaderManager;->a(Ljava/lang/String;)I

    move-result v3

    .line 337
    .local v3, "category":I
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 339
    .local v7, "concurrentArray":Ljava/util/ArrayList;
    new-instance v0, Lcom/uploader/implement/a/i;

    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uploader/implement/a/i;-><init>(Lcom/uploader/implement/c;Lcom/uploader/export/IUploaderTask;ILcom/uploader/export/ITaskListener;Landroid/os/Handler;)V

    .line 340
    .local v0, "action":Lcom/uploader/implement/a/i;
    const/4 v11, 0x0

    .line 341
    .local v11, "started":Z
    const/4 v12, 0x0

    .line 344
    .local v12, "stopReason":I
    if-eqz v7, :cond_2

    .line 346
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 347
    const/4 v12, 0x1

    .line 369
    :goto_0
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v2

    .line 370
    :try_start_0
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 371
    .local v8, "handler":Landroid/os/Handler;
    if-nez v8, :cond_5

    .line 372
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_1
    :goto_1
    return-void

    .line 352
    .end local v8    # "handler":Landroid/os/Handler;
    :cond_2
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 353
    const/4 v12, 0x2

    .line 354
    goto :goto_0

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v1, v1, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 359
    .restart local v6    # "applicationContext":Landroid/content/Context;
    invoke-static {v6}, Lcom/uploader/implement/e/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 360
    const/4 v12, 0x3

    .line 361
    goto :goto_0

    .line 365
    :cond_4
    invoke-direct {p0, v0, v7}, Lcom/uploader/implement/UploaderManager;->a(Lcom/uploader/implement/a/i;Ljava/util/ArrayList;)V

    .line 366
    const/4 v11, 0x1

    goto :goto_0

    .line 375
    .end local v6    # "applicationContext":Landroid/content/Context;
    .restart local v8    # "handler":Landroid/os/Handler;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->j:Ljava/lang/Runnable;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    if-eqz v11, :cond_6

    .line 379
    const/4 v10, 0x4

    .line 380
    .local v10, "p":I
    invoke-static {v10}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const-string v1, "UploaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " doUpload, remove count down, start, task:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v10    # "p":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 387
    .restart local v8    # "handler":Landroid/os/Handler;
    :cond_6
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 388
    invoke-virtual {v0}, Lcom/uploader/implement/a/i;->d()V

    .line 390
    const/4 v10, 0x4

    .line 391
    .restart local v10    # "p":I
    invoke-static {v10}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    const-string v1, "UploaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " doUpload, remove count down, wait, stopReason:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " task:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public a(Lcom/uploader/implement/a/g;)V
    .locals 6
    .param p1, "action"    # Lcom/uploader/implement/a/g;

    .prologue
    .line 508
    iget-object v2, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v2

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 510
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 511
    monitor-exit v2

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v1, Lcom/uploader/implement/UploaderManager$a;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v3, p0, v4}, Lcom/uploader/implement/UploaderManager$a;-><init>(ILcom/uploader/implement/UploaderManager;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    monitor-exit v2

    goto :goto_0

    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Lcom/uploader/implement/a/g;)V
    .locals 12
    .param p1, "uploaderAction"    # Lcom/uploader/implement/a/g;

    .prologue
    .line 520
    move-object v0, p1

    check-cast v0, Lcom/uploader/implement/a/i;

    .line 521
    .local v0, "action":Lcom/uploader/implement/a/i;
    invoke-virtual {v0}, Lcom/uploader/implement/a/i;->g()I

    move-result v2

    .line 522
    .local v2, "category":I
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 523
    .local v3, "concurrentArray":Ljava/util/ArrayList;
    if-nez v3, :cond_1

    .line 524
    const/16 v6, 0x8

    .line 525
    .local v6, "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 526
    const-string v8, "UploaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doFinish no concurrent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 530
    .end local v6    # "p":I
    :cond_1
    const/4 v7, 0x0

    .line 531
    .local v7, "removed":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 532
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/uploader/implement/a/i;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 533
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 538
    :cond_2
    if-nez v7, :cond_4

    .line 539
    const/16 v6, 0x8

    .line 540
    .restart local v6    # "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 541
    const-string v8, "UploaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doFinish !removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    .end local v6    # "p":I
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 546
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 547
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 548
    const/4 v6, 0x4

    .line 549
    .restart local v6    # "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 550
    const-string v8, "UploaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onFinish remove concurrent task:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/uploader/implement/a/i;->f()Lcom/uploader/export/IUploaderTask;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v6    # "p":I
    :cond_5
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    iget-object v8, v8, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 555
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {v1}, Lcom/uploader/implement/e/a;->a(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 556
    const/16 v6, 0x8

    .line 557
    .restart local v6    # "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 558
    const-string v8, "UploaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doFinish no network"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 563
    .end local v6    # "p":I
    :cond_6
    invoke-direct {p0}, Lcom/uploader/implement/UploaderManager;->e()I

    .line 565
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_8

    .line 566
    :cond_7
    const/16 v6, 0x8

    .line 567
    .restart local v6    # "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    const-string v8, "UploaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doFinish has more data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 574
    .end local v6    # "p":I
    :cond_8
    iget-object v9, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v9

    .line 575
    :try_start_0
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 576
    .local v4, "handler":Landroid/os/Handler;
    const/16 v6, 0x8

    .line 577
    .restart local v6    # "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 578
    const-string v8, "UploaderManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " start count down:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x15f90

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v8, v10}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_9
    if-nez v4, :cond_a

    .line 582
    monitor-exit v9

    goto/16 :goto_0

    .line 586
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v6    # "p":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 584
    .restart local v4    # "handler":Landroid/os/Handler;
    .restart local v6    # "p":I
    :cond_a
    :try_start_1
    new-instance v8, Lcom/uploader/implement/UploaderManager$a;

    const/4 v10, 0x3

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {v8, v10, p0, v11}, Lcom/uploader/implement/UploaderManager$a;-><init>(ILcom/uploader/implement/UploaderManager;[Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/uploader/implement/UploaderManager;->j:Ljava/lang/Runnable;

    .line 585
    iget-object v8, p0, Lcom/uploader/implement/UploaderManager;->j:Ljava/lang/Runnable;

    const-wide/32 v10, 0x15f90

    invoke-virtual {v4, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 586
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public cancelAsync(Lcom/uploader/export/IUploaderTask;)Z
    .locals 9
    .param p1, "task"    # Lcom/uploader/export/IUploaderTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    if-nez p1, :cond_1

    .line 426
    const/16 v1, 0x8

    .line 427
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    const-string v3, "UploaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cancelAsync fail,task null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v1    # "p":I
    :cond_0
    :goto_0
    return v2

    .line 433
    :cond_1
    iget-boolean v4, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v4

    .line 437
    :try_start_0
    iget-boolean v5, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    if-nez v5, :cond_2

    .line 438
    monitor-exit v4

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 440
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/uploader/implement/UploaderManager;->h:Landroid/os/Handler;

    .line 441
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_3

    new-instance v5, Lcom/uploader/implement/UploaderManager$a;

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-direct {v5, v6, p0, v7}, Lcom/uploader/implement/UploaderManager$a;-><init>(ILcom/uploader/implement/UploaderManager;[Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/uploader/export/IUploaderDependency;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dependency"    # Lcom/uploader/export/IUploaderDependency;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 162
    const/16 v0, 0x10

    .line 163
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "UploaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialize fail, context null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 169
    .end local v0    # "p":I
    :cond_1
    iget-boolean v3, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    if-eqz v3, :cond_2

    .line 170
    const/4 v0, 0x4

    .line 171
    .restart local v0    # "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "UploaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialize, is initialized !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v0    # "p":I
    :cond_2
    iget-object v3, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v3

    .line 178
    :try_start_0
    iget-boolean v4, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    if-eqz v4, :cond_4

    .line 179
    const/4 v0, 0x4

    .line 180
    .restart local v0    # "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    const-string v2, "UploaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initialize, is initialized !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 202
    .end local v0    # "p":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    :cond_4
    :try_start_1
    iget v4, p0, Lcom/uploader/implement/UploaderManager;->p:I

    invoke-interface {p2}, Lcom/uploader/export/IUploaderDependency;->getEnvironment()Lcom/uploader/export/IUploaderEnvironment;

    move-result-object v5

    invoke-interface {v5}, Lcom/uploader/export/IUploaderEnvironment;->getInstanceType()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 187
    const/16 v0, 0x10

    .line 188
    .restart local v0    # "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    const-string v2, "UploaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initialize, FAILED! environment not equals instance in instanceType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    .line 194
    .end local v0    # "p":I
    :cond_6
    new-instance v1, Lcom/uploader/implement/c;

    invoke-direct {v1, p1, p2}, Lcom/uploader/implement/c;-><init>(Landroid/content/Context;Lcom/uploader/export/IUploaderDependency;)V

    iput-object v1, p0, Lcom/uploader/implement/UploaderManager;->n:Lcom/uploader/implement/c;

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    .line 198
    const/4 v0, 0x4

    .line 199
    .restart local v0    # "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    const-string v1, "UploaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initialize !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 203
    goto/16 :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    return v0
.end method

.method public uploadAsync(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "task"    # Lcom/uploader/export/IUploaderTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/uploader/export/ITaskListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "scheduler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 209
    if-nez p1, :cond_1

    .line 210
    const/16 v1, 0x8

    .line 211
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const-string v3, "UploaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/UploaderManager;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uploadAsync fail,task null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v1    # "p":I
    :cond_0
    :goto_0
    return v2

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/uploader/implement/UploaderManager;->o:[B

    monitor-enter v3

    .line 222
    :try_start_0
    iget-boolean v4, p0, Lcom/uploader/implement/UploaderManager;->i:Z

    if-nez v4, :cond_2

    .line 223
    monitor-exit v3

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 225
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/uploader/implement/UploaderManager;->b()Landroid/os/Handler;

    move-result-object v0

    .line 226
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/uploader/implement/UploaderManager$a;

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-direct {v2, v4, p0, v5}, Lcom/uploader/implement/UploaderManager$a;-><init>(ILcom/uploader/implement/UploaderManager;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
