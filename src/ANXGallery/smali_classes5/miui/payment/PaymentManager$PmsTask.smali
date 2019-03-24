.class abstract Lmiui/payment/PaymentManager$PmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/payment/PaymentManager$PaymentManagerFuture;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final HOST_MONITOR_HEART_INTERNAL:I

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHostActivityMonitor:Ljava/lang/Runnable;

.field private mIsBound:Z

.field private mResponse:Lmiui/payment/IPaymentManagerResponse;

.field private mService:Lmiui/payment/IPaymentManagerService;

.field final synthetic this$0:Lmiui/payment/PaymentManager;


# direct methods
.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    .line 418
    return-void
.end method

.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p4, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    .line 425
    new-instance v0, Lmiui/payment/PaymentManager$PmsTask$2;

    invoke-direct {v0, p1}, Lmiui/payment/PaymentManager$PmsTask$2;-><init>(Lmiui/payment/PaymentManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 393
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    .line 400
    const/16 p1, 0x1388

    iput p1, p0, Lmiui/payment/PaymentManager$PmsTask;->HOST_MONITOR_HEART_INTERNAL:I

    .line 401
    new-instance p1, Lmiui/payment/PaymentManager$PmsTask$1;

    invoke-direct {p1, p0}, Lmiui/payment/PaymentManager$PmsTask$1;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    .line 433
    iput-object p2, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 434
    iput-object p3, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 435
    iput-object p4, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    .line 436
    new-instance p1, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;

    invoke-direct {p1, p0}, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mResponse:Lmiui/payment/IPaymentManagerResponse;

    .line 437
    return-void
.end method

.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p3, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    .line 422
    return-void
.end method

.method static synthetic access$000(Lmiui/payment/PaymentManager$PmsTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;

    .line 390
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/payment/PaymentManager$PmsTask;)Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;

    .line 390
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/payment/PaymentManager$PmsTask;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .locals 0
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;
    .param p1, "x1"    # Lmiui/payment/PaymentManager$PaymentManagerCallback;

    .line 390
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-object p1
.end method

.method static synthetic access$400(Lmiui/payment/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 622
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 623
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 626
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 627
    new-instance v0, Lmiui/cloud/exception/AuthenticationFailureException;

    invoke-direct {v0, p2}, Lmiui/cloud/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 630
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    const-string p2, "Unknown payment failure"

    .line 633
    :cond_2
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    invoke-direct {v0, p1, p2, p3}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .line 637
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 638
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, "exception":Ljava/lang/IllegalStateException;
    const-string v2, "PaymentManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    throw v1

    .line 645
    .end local v1    # "exception":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 4
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lmiui/payment/PaymentManager$PmsTask;->ensureNotOnMainThread()V

    .line 491
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    .line 492
    return-object v1

    .line 520
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 502
    :catch_0
    move-exception v1

    goto :goto_0

    .line 500
    :catch_1
    move-exception v1

    goto :goto_1

    .line 498
    :catch_2
    move-exception v1

    goto :goto_2

    .line 496
    :catch_3
    move-exception v1

    goto :goto_4

    .line 494
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Lmiui/payment/PaymentManager$PmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    .line 494
    return-object v1

    .line 502
    :goto_0
    nop

    .line 503
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 504
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_7

    .line 506
    instance-of v3, v2, Lmiui/payment/exception/PaymentServiceFailureException;

    if-nez v3, :cond_6

    .line 508
    instance-of v3, v2, Lmiui/cloud/exception/AuthenticationFailureException;

    if-nez v3, :cond_5

    .line 510
    instance-of v3, v2, Lmiui/cloud/exception/OperationCancelledException;

    if-nez v3, :cond_4

    .line 512
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_3

    .line 514
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_2

    .line 515
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 517
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 513
    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 511
    :cond_4
    move-object v3, v2

    check-cast v3, Lmiui/cloud/exception/OperationCancelledException;

    throw v3

    .line 509
    :cond_5
    move-object v3, v2

    check-cast v3, Lmiui/cloud/exception/AuthenticationFailureException;

    throw v3

    .line 507
    :cond_6
    move-object v3, v2

    check-cast v3, Lmiui/payment/exception/PaymentServiceFailureException;

    throw v3

    .line 505
    :cond_7
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_1
    goto :goto_3

    .line 498
    :goto_2
    nop

    .line 520
    :goto_3
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    .line 521
    nop

    .line 522
    new-instance v0, Lmiui/cloud/exception/OperationCancelledException;

    const-string v1, "cancelled by exception"

    invoke-direct {v0, v1}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :goto_4
    nop

    .line 497
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :try_start_3
    new-instance v2, Lmiui/cloud/exception/OperationCancelledException;

    const-string v3, "cancelled by user"

    invoke-direct {v2, v3}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :goto_5
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    throw v1
.end method


# virtual methods
.method protected bind()V
    .locals 3

    .line 455
    iget-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->bindToPaymentService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    const-string v2, "bind to service failed"

    invoke-direct {v0, v1, v2}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 459
    :cond_0
    iput-boolean v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    .line 461
    const-string v0, "PaymentManager"

    const-string v1, "service bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1
    :goto_0
    return-void
.end method

.method protected bindToPaymentService()Z
    .locals 3

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 2

    .line 552
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 554
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Lmiui/payment/PaymentManager$PmsTask$3;

    invoke-direct {v1, p0}, Lmiui/payment/PaymentManager$PmsTask$3;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 565
    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 566
    return-void
.end method

.method protected getResponse()Lmiui/payment/IPaymentManagerResponse;
    .locals 1

    .line 440
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mResponse:Lmiui/payment/IPaymentManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/payment/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .line 541
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/payment/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected getService()Lmiui/payment/IPaymentManagerService;
    .locals 1

    .line 444
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 571
    const-string v0, "PaymentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {p2}, Lmiui/payment/IPaymentManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerService;

    move-result-object v0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->doWork()V

    .line 576
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 584
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    const-string v0, "PaymentManager"

    const-string v1, "payment service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    const/4 v1, 0x1

    const-string v2, "active service exits unexpectedly"

    invoke-direct {v0, v1, v2}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 588
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    .line 589
    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 527
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    .line 529
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 390
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lmiui/payment/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 533
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 534
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    .line 535
    return-void
.end method

.method public final start()Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->bind()V

    .line 451
    return-object p0
.end method

.method protected unBind()V
    .locals 2

    .line 468
    iget-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_0

    .line 469
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    .line 474
    const-string v0, "PaymentManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method
