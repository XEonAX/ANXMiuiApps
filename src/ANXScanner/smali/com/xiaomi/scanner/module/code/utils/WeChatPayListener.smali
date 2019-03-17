.class public Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;
.super Ljava/lang/Object;
.source "WeChatPayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final WECHAT:Ljava/util/regex/Pattern;

.field private static final WECHAT_PAY:Ljava/util/regex/Pattern;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WeChatPayListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 27
    const-string v0, "(http:\\/\\/weixin.qq.com\\/.*|weixin:\\/\\/.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT:Ljava/util/regex/Pattern;

    .line 28
    const-string v0, "(https:\\/\\/wx\\.tenpay\\.com\\/f2f.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT_PAY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->requestPreviewFrame()V

    return-void
.end method

.method private requestPreviewFrame()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    .line 71
    :cond_0
    return-void
.end method

.method private toWechat(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v2, "barcode_call_wechat_count"

    invoke-static {v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v1, "mmintent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    const-string v2, "LauncherUI.From.Scaner.Shortcut"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->mWarnDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener$1;-><init>(Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;)V

    const/4 v3, 0x0

    const v4, 0x7f0700d5

    .line 52
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070020

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-static {p1, v2, v3, v4, v5}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->mWarnDialog:Landroid/app/AlertDialog;

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "start open wechat error "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->requestPreviewFrame()V

    goto :goto_0
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    const/4 v0, 0x0

    .line 75
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p2, v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->WECHAT_PAY:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isWechatRule(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 79
    .local v0, "isWechat":Z
    :cond_3
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
