.class public Lcom/xiaomi/scanner/module/code/utils/MiPayListener;
.super Ljava/lang/Object;
.source "MiPayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final MI_BI:Ljava/lang/String; = "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/qrpay/[0-9a-zA-Z]{20}"

.field private static final MI_BI_WITHHOLD:Ljava/lang/String; = "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/dsqr/[0-9a-zA-Z]{20}"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MiPayListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    const-string v2, "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/qrpay/[0-9a-zA-Z]{20}"

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v2, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isMiBiPayRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    :cond_0
    :try_start_0
    const-string v2, "barcode_call_mibi_count"

    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.xiaomi.payment"

    const-string v3, "com.xiaomi.payment.QrEntryActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v2, 0x1

    .line 50
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "start payment false"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    :cond_2
    const-string v2, "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/dsqr/[0-9a-zA-Z]{20}"

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/xiaomi/scanner/util/Util;->launchDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayListener;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
