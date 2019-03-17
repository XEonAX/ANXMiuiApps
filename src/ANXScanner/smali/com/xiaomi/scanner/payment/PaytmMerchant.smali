.class public Lcom/xiaomi/scanner/payment/PaytmMerchant;
.super Ljava/lang/Object;
.source "PaytmMerchant.java"

# interfaces
.implements Lcom/xiaomi/scanner/payment/Merchant;


# static fields
.field private static final PAYTM_PACKAGE_NAME:Ljava/lang/String; = "net.one97.paytm"

.field private static final PAYTM_URI:Ljava/lang/String; = "paytmmp://scan_pay?recipient=%s&amount_editable=1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMerchantUpi(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "QRCodeId"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v2, "paytmmp://scan_pay?recipient=%s&amount_editable=1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "paytmUri":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, "paytmIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "net.one97.paytm"

    return-object v0
.end method
