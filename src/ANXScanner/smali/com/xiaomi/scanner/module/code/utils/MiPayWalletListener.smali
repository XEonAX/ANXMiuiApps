.class public Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;
.super Ljava/lang/Object;
.source "MiPayWalletListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final MIPAY_APP:Ljava/lang/String; = "https://app\\.mipay\\.com/.*"

.field private static final MIPAY_APPLICATION_ID:Ljava/lang/String; = "com.mipay.wallet"

.field private static final MI_PAY:Ljava/lang/String; = "https://([a-zA-Z]+\\.)?m\\.pay\\.xiaomi\\.com/qrpay/[0-9a-zA-Z]{20}.*"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WalletListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 33
    :cond_1
    const-string v4, "https://([a-zA-Z]+\\.)?m\\.pay\\.xiaomi\\.com/qrpay/[0-9a-zA-Z]{20}.*"

    invoke-static {v4, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 35
    :try_start_0
    const-string v4, "barcode_call_mipay_count"

    invoke-static {v4}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.mipay.wallet"

    const-string v5, "com.mipay.counter.ui.pay.QrEntryActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 40
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v4, "https://app\\.mipay\\.com/.*"

    invoke-static {v4, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v4, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isMipayRule(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    :cond_3
    :try_start_1
    const-string v4, "barcode_call_mipay_count"

    invoke-static {v4}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.mipay.wallet"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 55
    goto :goto_0

    .line 56
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 57
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
