.class Lmiui/payment/PaymentManager$PmsTask$2;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Lmiui/payment/PaymentManager;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask$2;->val$this$0:Lmiui/payment/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask$2;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
