.class public Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;
.super Ljava/lang/Object;
.source "PaymentQRCodeScanning.java"


# static fields
.field private static final GOOGLE_PLAY_BASE_URL:Ljava/lang/String; = "market://details?id="

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PaymentQRCodeScanning"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    return-void
.end method

.method private installAppFromAppStore(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v0, "marketIntent":Landroid/content/Intent;
    const/high16 v1, 0x58080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "merchantIntent"    # Landroid/content/Intent;

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "PaymentQRCodeScanning Paytm application not found : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public scanningCompleted(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Z
    .locals 7
    .param p1, "QRCodeId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "upiConstant"    # Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    .prologue
    const/4 v3, 0x0

    .line 25
    iput-object p2, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    .line 26
    sget-object v4, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PaymentQRCodeScanning scanningCompleted mContext : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v3

    .line 30
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    move-object v0, p3

    .line 32
    .local v0, "detectedUpiMerchant":Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    sget-object v4, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    if-ne v0, v4, :cond_0

    .line 33
    sget-object v3, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "PaymentQRCodeScanning scanningCompleted UpiFactory.UpiConstant.PAYTM"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/xiaomi/scanner/payment/UpiFactory;->getMerchant(Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Lcom/xiaomi/scanner/payment/Merchant;

    move-result-object v1

    .line 35
    .local v1, "merchantDetected":Lcom/xiaomi/scanner/payment/Merchant;
    invoke-interface {v1}, Lcom/xiaomi/scanner/payment/Merchant;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaomi/scanner/util/AppUtil;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    sget-object v3, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "PaymentQRCodeScanning scanningCompleted app is installed "

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    invoke-interface {v1, p1}, Lcom/xiaomi/scanner/payment/Merchant;->getMerchantUpi(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 38
    .local v2, "merchantIntent":Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->startActivity(Landroid/content/Intent;)V

    .line 43
    .end local v2    # "merchantIntent":Landroid/content/Intent;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 40
    :cond_2
    sget-object v3, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "PaymentQRCodeScanning scanningCompleted app is not installed "

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    invoke-interface {v1}, Lcom/xiaomi/scanner/payment/Merchant;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->installAppFromAppStore(Ljava/lang/String;)V

    goto :goto_1
.end method
