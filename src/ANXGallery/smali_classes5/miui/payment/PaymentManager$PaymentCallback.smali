.class Lmiui/payment/PaymentManager$PaymentCallback;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/payment/PaymentManager$PaymentManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mPaymentId:Ljava/lang/String;

.field private mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

.field private mServiceId:Ljava/lang/String;

.field final synthetic this$0:Lmiui/payment/PaymentManager;


# direct methods
.method public constructor <init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V
    .locals 0
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "paymentId"    # Ljava/lang/String;
    .param p4, "paymentListener"    # Lmiui/payment/PaymentManager$PaymentListener;

    .line 358
    iput-object p1, p0, Lmiui/payment/PaymentManager$PaymentCallback;->this$0:Lmiui/payment/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mServiceId:Ljava/lang/String;

    .line 360
    iput-object p3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    .line 361
    iput-object p4, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    .line 362
    return-void
.end method


# virtual methods
.method public run(Lmiui/payment/PaymentManager$PaymentManagerFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p1, "future":Lmiui/payment/PaymentManager$PaymentManagerFuture;, "Lmiui/payment/PaymentManager$PaymentManagerFuture<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    if-nez v0, :cond_0

    .line 367
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lmiui/payment/PaymentManager$PaymentManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 371
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 372
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lmiui/payment/PaymentManager$PaymentListener;->onSuccess(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "error"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmiui/cloud/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/cloud/exception/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/payment/exception/PaymentServiceFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    iput-object v0, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    .line 386
    goto :goto_1

    .line 385
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Lmiui/payment/exception/PaymentServiceFailureException;
    :try_start_1
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v1}, Lmiui/payment/exception/PaymentServiceFailureException;->getError()I

    move-result v4

    invoke-virtual {v1}, Lmiui/payment/exception/PaymentServiceFailureException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/payment/exception/PaymentServiceFailureException;->getErrorResult()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .end local v1    # "e":Lmiui/payment/exception/PaymentServiceFailureException;
    goto :goto_0

    .line 380
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Lmiui/cloud/exception/AuthenticationFailureException;
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v1}, Lmiui/cloud/exception/AuthenticationFailureException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .end local v1    # "e":Lmiui/cloud/exception/AuthenticationFailureException;
    goto :goto_0

    .line 378
    :catch_2
    move-exception v1

    .line 379
    .local v1, "e":Lmiui/cloud/exception/OperationCancelledException;
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v1}, Lmiui/cloud/exception/OperationCancelledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .end local v1    # "e":Lmiui/cloud/exception/OperationCancelledException;
    goto :goto_0

    .line 376
    :catch_3
    move-exception v1

    .line 377
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    iget-object v3, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentId:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/payment/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 387
    :goto_1
    return-void

    .line 385
    :goto_2
    iput-object v0, p0, Lmiui/payment/PaymentManager$PaymentCallback;->mPaymentListener:Lmiui/payment/PaymentManager$PaymentListener;

    throw v1
.end method
