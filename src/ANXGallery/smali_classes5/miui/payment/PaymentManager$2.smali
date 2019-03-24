.class Lmiui/payment/PaymentManager$2;
.super Lmiui/payment/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/payment/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/payment/PaymentManager;

.field final synthetic val$serviceId:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/payment/PaymentManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 305
    .local p3, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/payment/PaymentManager$2;->this$0:Lmiui/payment/PaymentManager;

    iput-object p4, p0, Lmiui/payment/PaymentManager$2;->val$serviceId:Ljava/lang/String;

    iput-object p5, p0, Lmiui/payment/PaymentManager$2;->val$verify:Ljava/lang/String;

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

    .line 308
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$2;->getService()Lmiui/payment/IPaymentManagerService;

    move-result-object v0

    .line 309
    .local v0, "service":Lmiui/payment/IPaymentManagerService;
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$2;->getResponse()Lmiui/payment/IPaymentManagerResponse;

    move-result-object v1

    iget-object v2, p0, Lmiui/payment/PaymentManager$2;->val$serviceId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/payment/PaymentManager$2;->val$verify:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lmiui/payment/IPaymentManagerService;->getMiliBalance(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
