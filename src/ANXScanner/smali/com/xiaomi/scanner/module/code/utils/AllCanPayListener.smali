.class public Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;
.super Ljava/lang/Object;
.source "AllCanPayListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;
.implements Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->requestPreviewFrame()V

    return-void
.end method

.method private getWechatIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "mmintent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    const-string v1, "LauncherUI.From.Scaner.Shortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method private requestPreviewFrame()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    .line 120
    :cond_0
    return-void
.end method

.method private showChooseDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener$1;-><init>(Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;)V

    invoke-static {v0, p1, p0, v1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->showChoosePayDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->dialog:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    .line 76
    return-void
.end method

.method private toChooseOnePay(Ljava/lang/String;)Z
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v3, "preferencePaySelect"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 41
    .local v1, "payType":I
    const/4 v2, 0x0

    .line 42
    .local v2, "success":Z
    packed-switch v1, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 44
    :pswitch_0
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v3, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 45
    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, v3, p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v3, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->getWechatIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v3, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 57
    :cond_1
    const/4 v2, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->showChooseDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private toWechat(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string v3, "barcode_call_wechat_count"

    invoke-static {v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->getWechatIntent()Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, "mmintent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 99
    :goto_0
    return v2

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v2, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 32
    sget-object v1, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isAllCanPayRule(Ljava/lang/String;)Z

    move-result v0

    .line 33
    .local v0, "isAllCanPay":Z
    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toChooseOnePay(Ljava/lang/String;)Z

    move-result v0

    .line 36
    :cond_0
    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onToPayClick(ZLjava/lang/String;)V
    .locals 2
    .param p1, "wechat"    # Z
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "success":Z
    if-eqz p1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-direct {p0, v1, p2}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 108
    :cond_0
    if-nez v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->activity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAlipay(Landroid/content/Context;Ljava/lang/String;)Z

    .line 111
    :cond_1
    if-nez v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;->requestPreviewFrame()V

    .line 114
    :cond_2
    return-void
.end method
