.class public abstract Lmiui/util/async/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/Task$Delivery;,
        Lmiui/util/async/Task$Status;,
        Lmiui/util/async/Task$Priority;,
        Lmiui/util/async/Task$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Kc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private Kd:Lmiui/util/async/Task$Priority;

.field private Ke:Ljava/lang/Thread;

.field private Kf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Kh:Lmiui/util/async/Task$Status;

.field private bO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/async/Task$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 206
    sget-object v0, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-direct {p0, v0}, Lmiui/util/async/Task;-><init>(Lmiui/util/async/Task$Priority;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lmiui/util/async/Task$Priority;)V
    .locals 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    sget-object v0, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    .line 216
    iput-object p1, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    .line 217
    return-void
.end method

.method private a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/async/TaskManager;->b(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    goto :goto_0

    .line 417
    :cond_0
    const-string p2, "async"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task has delivery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but has no task manager"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-void
.end method

.method private a(Lmiui/util/async/TaskManager;II)V
    .locals 2

    .line 497
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 499
    invoke-interface {v1, p1, p0, p2, p3}, Lmiui/util/async/Task$Listener;->onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V

    .line 500
    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/async/Task;->onProgress(Lmiui/util/async/TaskManager;II)V

    .line 503
    return-void
.end method

.method private a(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 531
    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V

    .line 532
    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    .line 535
    return-void
.end method

.method private a(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "TT;)V"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 515
    invoke-interface {v1, p1, p0, p2}, Lmiui/util/async/Task$Listener;->onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 516
    nop

    .line 517
    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/util/async/Task;->onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method private b(Lmiui/util/async/TaskManager;)V
    .locals 3

    .line 361
    iget-object v0, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/Task;

    .line 368
    invoke-virtual {p1, v2}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    .line 369
    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 373
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lmiui/util/async/TaskManager;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 483
    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    .line 484
    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onCanceled(Lmiui/util/async/TaskManager;)V

    .line 487
    return-void
.end method

.method private d(Lmiui/util/async/TaskManager;)V
    .locals 2

    .line 543
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 545
    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    .line 546
    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onFinalize(Lmiui/util/async/TaskManager;)V

    .line 549
    iget-object p1, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 550
    return-void
.end method

.method private dG()Z
    .locals 5

    .line 382
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 383
    iget-object v0, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v3, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    const-string v1, "async"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is DONE but successor not done yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v0

    return v2

    .line 391
    :cond_0
    iget-object v1, p0, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/async/Task;

    .line 393
    invoke-direct {v3}, Lmiui/util/async/Task;->dG()Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    monitor-exit v0

    return v2

    .line 396
    :cond_1
    goto :goto_0

    .line 398
    :cond_2
    monitor-exit v0

    .line 400
    const/4 v0, 0x1

    return v0

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 402
    :cond_3
    return v2
.end method

.method private e(Lmiui/util/async/TaskManager;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/Task$Listener;

    .line 560
    invoke-interface {v1, p1, p0}, Lmiui/util/async/Task$Listener;->onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    .line 561
    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/util/async/Task;->onPrepare(Lmiui/util/async/TaskManager;)V

    .line 564
    return-void
.end method

.method private final isCanceled()Z
    .locals 2

    .line 308
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final a(Ljava/lang/Thread;)V
    .locals 2

    .line 326
    iput-object p1, p0, Lmiui/util/async/Task;->Ke:Ljava/lang/Thread;

    .line 327
    if-eqz p1, :cond_0

    .line 328
    sget-object v0, Lmiui/util/async/Task$1;->Kj:[I

    iget-object v1, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 333
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 334
    goto :goto_0

    .line 330
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 331
    nop

    .line 341
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    .locals 3

    .line 226
    sget-object v0, Lmiui/util/async/Task$1;->Ki:[I

    iget-object v1, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 228
    :pswitch_0
    sget-object p2, Lmiui/util/async/Task$1;->Ki:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_1

    .line 238
    const-string p2, "async"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error status change=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 233
    :pswitch_1
    sget-object p2, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 234
    sget-object p2, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 235
    goto/16 :goto_0

    .line 230
    :pswitch_2
    sget-object p2, Lmiui/util/async/Task$Delivery;->Kl:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 231
    goto/16 :goto_0

    .line 259
    :pswitch_3
    sget-object v0, Lmiui/util/async/Task$1;->Ki:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 270
    const-string p2, "async"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error status change=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 261
    :cond_0
    sget-object v0, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, v0, p2}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 262
    sget-object p2, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 263
    goto :goto_0

    .line 265
    :cond_1
    sget-object p2, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 266
    sget-object p2, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 267
    goto :goto_0

    .line 278
    :pswitch_4
    const-string p2, "async"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error status change=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 244
    :pswitch_5
    sget-object p2, Lmiui/util/async/Task$1;->Ki:[I

    invoke-virtual {p1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_2

    .line 253
    const-string p2, "async"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error status change=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 246
    :pswitch_6
    goto :goto_0

    .line 248
    :pswitch_7
    sget-object p2, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 249
    sget-object p2, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    invoke-direct {p0, p2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 250
    nop

    .line 286
    :goto_0
    iput-object p1, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    .line 287
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method final a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 2

    .line 443
    sget-object v0, Lmiui/util/async/Task$1;->Kk:[I

    invoke-virtual {p2}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 470
    :pswitch_0
    check-cast p3, [I

    const/4 p2, 0x0

    aget p2, p3, p2

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;II)V

    goto :goto_1

    .line 451
    :pswitch_1
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lmiui/util/async/Task;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    instance-of p2, p3, Lmiui/util/async/TaskExecutingException;

    if-eqz p2, :cond_1

    .line 454
    check-cast p3, Lmiui/util/async/TaskExecutingException;

    invoke-virtual {p3}, Lmiui/util/async/TaskExecutingException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p1, p2}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    goto :goto_1

    .line 457
    :cond_1
    nop

    .line 458
    :try_start_0
    invoke-direct {p0, p1, p3}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    .line 459
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->b(Lmiui/util/async/TaskManager;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_1

    .line 460
    :catch_0
    move-exception p2

    .line 462
    const-string p3, "async"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " return result cannot cast to expectation class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0, p1, p2}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V

    .line 468
    goto :goto_1

    .line 452
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->c(Lmiui/util/async/TaskManager;)V

    goto :goto_1

    .line 448
    :pswitch_2
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->d(Lmiui/util/async/TaskManager;)V

    .line 449
    goto :goto_1

    .line 445
    :pswitch_3
    invoke-direct {p0, p1}, Lmiui/util/async/Task;->e(Lmiui/util/async/TaskManager;)V

    .line 446
    nop

    .line 473
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lmiui/util/async/TaskManager;)Z
    .locals 1

    .line 348
    iget-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 349
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    .line 350
    const/4 p1, 0x1

    return p1
.end method

.method public final addListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Listener;",
            ")",
            "Lmiui/util/async/Task<",
            "TT;>;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    .line 614
    :cond_0
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    return-object p0
.end method

.method public final cancel()V
    .locals 2

    .line 636
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_1

    .line 641
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 643
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->a(Lmiui/util/async/Task;)Z

    .line 648
    :cond_0
    sget-object v0, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 650
    :cond_1
    return-void
.end method

.method public final depends(Lmiui/util/async/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p1, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 663
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p1, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    .line 666
    :cond_0
    iget-object p1, p1, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_1
    iget-object v1, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/TaskManager;

    .line 670
    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v1, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    .line 674
    :cond_2
    const-string v1, "async"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is done but has no task manager to execute task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    monitor-exit v0

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract doLoad()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPriority()Lmiui/util/async/Task$Priority;
    .locals 1

    .line 685
    iget-object v0, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    return-object v0
.end method

.method public final getStatus()Lmiui/util/async/Task$Status;
    .locals 1

    .line 293
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 300
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCanceled(Lmiui/util/async/TaskManager;)V
    .locals 0

    .line 772
    return-void
.end method

.method public onException(Lmiui/util/async/TaskManager;Ljava/lang/Exception;)V
    .locals 0

    .line 790
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;)V
    .locals 0

    .line 811
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .locals 0

    .line 764
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;II)V
    .locals 0

    .line 800
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "TT;)V"
        }
    .end annotation

    .line 781
    return-void
.end method

.method public final publishProgress(II)V
    .locals 3

    .line 600
    sget-object v0, Lmiui/util/async/Task$Delivery;->Kn:Lmiui/util/async/Task$Delivery;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {p0, v0, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public final removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Listener;",
            ")",
            "Lmiui/util/async/Task<",
            "TT;>;"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lmiui/util/async/Task;->bO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 629
    :cond_0
    return-object p0
.end method

.method public final restart()Z
    .locals 3

    .line 721
    invoke-direct {p0}, Lmiui/util/async/Task;->dG()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 722
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v2, :cond_1

    .line 723
    iget-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 724
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->a(Lmiui/util/async/Task;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    :cond_0
    return v1

    .line 729
    :cond_1
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v2, :cond_2

    .line 730
    return v1

    .line 733
    :cond_2
    iget-object v0, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    .line 735
    iget-object v1, p0, Lmiui/util/async/Task;->Kf:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/Task;

    .line 736
    invoke-virtual {v2}, Lmiui/util/async/Task;->restart()Z

    .line 737
    goto :goto_0

    .line 739
    :cond_3
    iget-object v1, p0, Lmiui/util/async/Task;->Kg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 740
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    sget-object v0, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    .line 743
    return v2

    .line 740
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 745
    :cond_4
    return v1
.end method

.method public final setPriority(Lmiui/util/async/Task$Priority;)Lmiui/util/async/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task$Priority;",
            ")",
            "Lmiui/util/async/Task<",
            "TT;>;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    if-eq v0, p1, :cond_2

    .line 695
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_0

    .line 696
    iget-object v0, p0, Lmiui/util/async/Task;->Kc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 697
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->a(Lmiui/util/async/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    iput-object p1, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    .line 699
    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    iput-object v1, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    .line 700
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    if-ne v0, v1, :cond_1

    .line 705
    iget-object v0, p0, Lmiui/util/async/Task;->Ke:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lmiui/util/async/Task;->a(Ljava/lang/Thread;)V

    .line 708
    :cond_1
    iput-object p1, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    .line 711
    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {p0}, Lmiui/util/async/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_0

    .line 575
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    :cond_0
    const-string v1, ": Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lmiui/util/async/Task;->Kh:Lmiui/util/async/Task$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, ", Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v1, p0, Lmiui/util/async/Task;->Kd:Lmiui/util/async/Task$Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
