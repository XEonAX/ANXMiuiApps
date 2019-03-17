.class public Lcom/xiaomi/scanner/setting/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private functionText:Landroid/widget/Spinner;

.field private preferencePayText:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/setting/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->functionText:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/setting/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->preferencePayText:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static showSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method private updateDefaultFunctionList()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/xiaomi/scanner/setting/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/setting/SettingActivity$1;-><init>(Lcom/xiaomi/scanner/setting/SettingActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    .line 116
    return-void
.end method

.method private updatePreferencePay()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/xiaomi/scanner/setting/SettingActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/setting/SettingActivity$2;-><init>(Lcom/xiaomi/scanner/setting/SettingActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-static {p0}, Lcom/xiaomi/scanner/setting/AboutActivity;->showAbout(Landroid/content/Context;)V

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->showPrivacy(Landroid/app/Activity;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x7f0d0096
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f0d0093

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->functionText:Landroid/widget/Spinner;

    .line 48
    const v1, 0x7f0d0095

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->preferencePayText:Landroid/widget/Spinner;

    .line 50
    const v1, 0x7f0d0094

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 51
    .local v0, "preferencePay":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 55
    :cond_0
    const v1, 0x7f0d0096

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingActivity;->updateDefaultFunctionList()V

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingActivity;->updatePreferencePay()V

    .line 60
    return-void
.end method
