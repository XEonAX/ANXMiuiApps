.class public Lcom/xiaomi/scanner/payment/UpiFactory;
.super Ljava/lang/Object;
.source "UpiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getMerchant(Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Lcom/xiaomi/scanner/payment/Merchant;
    .locals 2
    .param p0, "upiConstant"    # Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    .prologue
    .line 11
    sget-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$1;->$SwitchMap$com$xiaomi$scanner$payment$UpiFactory$UpiConstant:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 15
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/xiaomi/scanner/payment/PaytmMerchant;

    invoke-direct {v0}, Lcom/xiaomi/scanner/payment/PaytmMerchant;-><init>()V

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
