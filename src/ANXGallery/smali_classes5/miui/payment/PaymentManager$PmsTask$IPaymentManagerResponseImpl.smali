.class Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
.super Lmiui/payment/IPaymentManagerResponse$Stub;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager$PmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IPaymentManagerResponseImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/payment/PaymentManager$PmsTask;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager$PmsTask;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/payment/PaymentManager$PmsTask;

    .line 591
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-direct {p0}, Lmiui/payment/IPaymentManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 613
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    .line 614
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    .line 615
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-static {v1, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->access$400(Lmiui/payment/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 618
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 596
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 597
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-static {v1}, Lmiui/payment/PaymentManager$PmsTask;->access$000(Lmiui/payment/PaymentManager$PmsTask;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-static {v1}, Lmiui/payment/PaymentManager$PmsTask;->access$000(Lmiui/payment/PaymentManager$PmsTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    new-instance v2, Lmiui/payment/exception/PaymentServiceFailureException;

    const/4 v3, 0x2

    const-string v4, "activity cannot be null"

    invoke-direct {v2, v3, v4}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-virtual {v1, p1}, Lmiui/payment/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    .line 607
    :goto_0
    return-void
.end method
