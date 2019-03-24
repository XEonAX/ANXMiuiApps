.class Lmiui/payment/PaymentManager$1;
.super Lmiui/payment/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/payment/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/payment/PaymentManager;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$order:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/payment/PaymentManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 289
    .local p3, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/payment/PaymentManager$1;->this$0:Lmiui/payment/PaymentManager;

    iput-object p4, p0, Lmiui/payment/PaymentManager$1;->val$extra:Landroid/os/Bundle;

    iput-object p5, p0, Lmiui/payment/PaymentManager$1;->val$order:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$1;->getService()Lmiui/payment/IPaymentManagerService;

    move-result-object v0

    .line 293
    .local v0, "service":Lmiui/payment/IPaymentManagerService;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v1, "finalExtra":Landroid/os/Bundle;
    iget-object v2, p0, Lmiui/payment/PaymentManager$1;->val$extra:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lmiui/payment/PaymentManager$1;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$1;->getResponse()Lmiui/payment/IPaymentManagerResponse;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/payment/PaymentManager$1;->val$order:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v1}, Lmiui/payment/IPaymentManagerService;->payForOrder(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    return-void
.end method
