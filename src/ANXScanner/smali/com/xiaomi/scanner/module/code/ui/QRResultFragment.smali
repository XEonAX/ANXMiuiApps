.class public Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
.super Landroid/preference/PreferenceFragment;
.source "QRResultFragment.java"


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final MECARD_GROUP_KEY:Ljava/lang/String; = "pref_mecard_group_key"

.field private static final MSG_MIRACAST_CONNECTING:I = 0x1001

.field private static final MSG_MIRACAST_CONNECT_FAIL:I = 0x1002

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TEXT_CONTENT_KEY:Ljava/lang/String; = "pref_text_content_key"

.field private static final TITLE_PAYTM:Ljava/lang/String; = "Paytm"

.field private static mCardMaxCount:I


# instance fields
.field private mActivity:Landroid/content/Context;

.field private mBtnDone:Landroid/widget/Button;

.field private mCallingApp:Ljava/lang/String;

.field private mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContent:Ljava/lang/String;

.field private mContentTitle:Landroid/widget/TextView;

.field private mIsWifiHide:Z

.field private mMiracastDialog:Landroid/app/AlertDialog;

.field private mMiracastRunnable:Ljava/lang/Runnable;

.field private mPhone:Ljava/lang/String;

.field private mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

.field private mTxvWarning:Landroid/widget/TextView;

.field private mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field private mViewSymbol:Landroid/view/View;

.field private mWebCheckListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRResultFragment"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCardMaxCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 74
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Landroid/app/AlertDialog;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    .line 87
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    .line 531
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 578
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWebCheckListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    .line 617
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showToast(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startMiracastSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWiFi()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectMiracast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchBrowser()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->insertContact()V

    return-void
.end method

.method private connectMiracast()V
    .locals 9

    .prologue
    const/16 v1, 0x1001

    .line 317
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 318
    .local v8, "uri":Landroid/net/Uri;
    const-string v0, "miracast_tvmac"

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, "p2pMac":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 321
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;

    invoke-direct {v0, p0, v7}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastRunnable:Ljava/lang/Runnable;

    .line 337
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    .line 340
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    new-instance v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$4;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    const/4 v2, 0x0

    const v3, 0x7f070074

    const v4, 0x7f070075

    const v5, 0x7f0700ad

    const v6, 0x7f07002d

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IIII)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Landroid/app/AlertDialog;

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private connectWiFi()V
    .locals 11

    .prologue
    const v8, 0x7f0700d8

    .line 482
    iget-object v7, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v7}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 483
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "S"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 484
    .local v3, "ssid":Ljava/lang/String;
    const-string v7, "T"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    .local v2, "security":Ljava/lang/String;
    const-string v7, "P"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, "pwd":Ljava/lang/String;
    iget-object v7, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 487
    sget-object v7, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "context is null"

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v5, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    iget-object v7, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 491
    .local v5, "wifiAdmin":Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;
    invoke-virtual {v5}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->openWifi()V

    .line 493
    const/4 v4, 0x1

    .line 494
    .local v4, "type":I
    const-string v7, "WPA"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    const/4 v4, 0x3

    .line 500
    :cond_1
    :goto_1
    invoke-virtual {v5, v3, v1, v4}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectWifi(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 501
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.WIFI_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, "wifiSettingsIntent":Landroid/content/Intent;
    invoke-direct {p0, v6, v8}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 496
    .end local v6    # "wifiSettingsIntent":Landroid/content/Intent;
    :cond_2
    const-string v7, "WEP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 497
    const/4 v4, 0x2

    goto :goto_1

    .line 504
    :cond_3
    invoke-virtual {v5, v3}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->isExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 505
    iget-object v7, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const v8, 0x7f0700d7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 507
    :cond_4
    invoke-direct {p0, v8}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showToast(I)V

    goto :goto_0
.end method

.method private copyToClipboard()V
    .locals 4

    .prologue
    .line 365
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 366
    sget-object v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "mActivity is null"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    .line 370
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 371
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const v2, 0x7f07003a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initUI(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    const v0, 0x7f0d0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    .line 308
    const v0, 0x7f0d0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    .line 309
    const v0, 0x7f0d0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0d0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    .line 312
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    return-void
.end method

.method private insertContact()V
    .locals 4

    .prologue
    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 378
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    .line 379
    .local v0, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->setCardToIntent(Lcom/xiaomi/scanner/module/code/zxing/VCard;Landroid/content/Intent;)V

    goto :goto_0

    .line 383
    .end local v0    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    :cond_1
    const v2, 0x7f070083

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;I)Z

    .line 384
    return-void
.end method

.method private isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "group"    # Landroid/preference/PreferenceGroup;
    .param p3, "btnText"    # Ljava/lang/String;
    .param p4, "drawableId"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    const-string v0, "pref_text_content_key"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    const-string v0, "pref_mecard_group_key"

    invoke-direct {p0, p2, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 291
    return-void
.end method

.method private launchBrowser()V
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchDefaultBrowser()V

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchDefaultBrowser()V

    goto :goto_0
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "componentStr"    # Ljava/lang/String;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 444
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 446
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    .line 454
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 451
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchDefaultBrowser()V

    goto :goto_0
.end method

.method private launchDefaultBrowser()V
    .locals 5

    .prologue
    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    :try_start_0
    const-string v2, "com.android.browser/.BrowserActivity"

    .line 462
    .local v2, "miuiBrowser":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v2    # "miuiBrowser":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "root"    # Landroid/preference/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 513
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 514
    .local v0, "child":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 528
    :goto_0
    return v3

    .line 519
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 520
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 521
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 522
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 523
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 524
    goto :goto_0

    .line 520
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sendMessage(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null handler, drop message"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCardToIntent(Lcom/xiaomi/scanner/module/code/zxing/VCard;Landroid/content/Intent;)V
    .locals 7
    .param p1, "card"    # Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 388
    .local v0, "count":I
    sget v5, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCardMaxCount:I

    if-le v0, v5, :cond_0

    sget v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCardMaxCount:I

    .line 389
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 390
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 391
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 392
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 393
    const-string v5, "secondary_email"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    const-string v5, "secondary_phone"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 397
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 398
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 399
    const-string v5, "tertiary_email"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 400
    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    const-string v5, "tertiary_phone"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 404
    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "birth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v3, "row":Landroid/content/ContentValues;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v5, "data2"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v5, "data1"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v5, "data"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    .line 414
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "row":Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 418
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    :cond_0
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 655
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method private startActivitySafely(Landroid/content/Intent;I)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "startActivity fail"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-static {v2, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startMiracastSettings()V
    .locals 2

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nvidia.settings.MIRACAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    .line 673
    return-void
.end method


# virtual methods
.method public launchMIUIMarket()V
    .locals 4

    .prologue
    .line 422
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v2, v3, :cond_0

    .line 424
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 429
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    .line 435
    :goto_1
    return-void

    .line 427
    :cond_0
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.MarketTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 433
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 641
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v1, v2, :cond_0

    .line 642
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;-><init>()V

    .line 644
    .local v0, "wifiDisplay":Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->stopWifiDisplayScan()Z

    .line 647
    .end local v0    # "wifiDisplay":Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 648
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 652
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    .line 303
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->initUI(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method public showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 28
    .param p1, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "isCheckWebsite"    # Z

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 127
    .local v8, "group":Landroid/preference/PreferenceGroup;
    if-eqz v8, :cond_0

    .line 128
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 131
    :cond_0
    const v24, 0x7f050002

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 134
    if-eqz p2, :cond_13

    .line 135
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 137
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    .line 138
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1

    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1

    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 141
    .local v12, "preferences":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 142
    new-instance v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    invoke-direct/range {v24 .. v24}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCards:Ljava/util/ArrayList;

    .line 145
    const-string v24, "pref_text_group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 146
    .local v19, "textViewGroup":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCards:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    .line 148
    .local v5, "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    if-eqz v5, :cond_3

    .line 151
    invoke-virtual {v5}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_3

    .line 152
    invoke-virtual {v5}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_4
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 153
    .local v21, "value":Ljava/lang/String;
    const-string v26, "pref_mecard_group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 154
    .local v6, "cardGroup":Landroid/preference/PreferenceCategory;
    new-instance v18, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getIsMobile()Z

    move-result v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;-><init>(Landroid/content/Context;Z)V

    .line 155
    .local v18, "textView":Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;
    invoke-virtual {v5}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 158
    invoke-virtual {v12, v6}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 159
    invoke-virtual {v5}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getIsMobile()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    new-instance v26, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setOnSmsClickListener(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;)V

    goto :goto_0

    .line 176
    .end local v5    # "card":Lcom/xiaomi/scanner/module/code/zxing/VCard;
    .end local v6    # "cardGroup":Landroid/preference/PreferenceCategory;
    .end local v18    # "textView":Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;
    .end local v21    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0200ae

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x7f070061

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f070036

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    .end local v12    # "preferences":Landroid/preference/PreferenceScreen;
    .end local v19    # "textViewGroup":Landroid/preference/PreferenceCategory;
    :cond_6
    :goto_1
    if-eqz p4, :cond_14

    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v24

    if-nez v24, :cond_14

    .line 276
    new-instance v14, Lcom/xiaomi/scanner/module/code/utils/URLInspector;

    invoke-direct {v14}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;-><init>()V

    .line 277
    .local v14, "request":Lcom/xiaomi/scanner/module/code/utils/URLInspector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWebCheckListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->setOnReceivedDataListener(Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;)V

    .line 278
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    .end local v14    # "request":Lcom/xiaomi/scanner/module/code/utils/URLInspector;
    :goto_2
    return-void

    .line 181
    :cond_7
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_8

    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 182
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0200b1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x7f070099

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0700d4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v24, 0x8

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    const-string v24, "pref_text_content_key"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " \n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    const-string v24, "pref_mecard_group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 185
    :cond_9
    const/16 v24, 0x0

    goto :goto_3

    .line 188
    :cond_a
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0200ad

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x7f07009a

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f07001e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    const-string v24, "pref_text_content_key"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    const-string v24, "pref_mecard_group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 196
    :cond_b
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_c

    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 197
    :cond_c
    const v24, 0x7f070039

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f0200b0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 200
    :cond_d
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 201
    const v24, 0x7f070089

    .line 202
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Paytm"

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f0200aa

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 204
    :cond_e
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0200b2

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x7f070035

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0700d6

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 215
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v24, "P"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 216
    .local v17, "tempPwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 217
    const-string v24, "."

    const-string v25, "*"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 219
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 220
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0700db

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v24, "S"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, "ssid":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0700da

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v24, "T"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 222
    .local v15, "security":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0700d9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 228
    .local v13, "pwd":Ljava/lang/String;
    :goto_4
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    const-string v24, "pref_text_content_key"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 237
    .local v23, "wifiPreference":Landroid/preference/Preference;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 239
    const-string v24, "pref_mecard_group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 224
    .end local v13    # "pwd":Ljava/lang/String;
    .end local v15    # "security":Ljava/lang/String;
    .end local v16    # "ssid":Ljava/lang/String;
    .end local v23    # "wifiPreference":Landroid/preference/Preference;
    :cond_10
    const-string v24, "S"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 225
    .restart local v16    # "ssid":Ljava/lang/String;
    const-string v24, "T"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 226
    .restart local v15    # "security":Ljava/lang/String;
    move-object/from16 v13, v17

    .restart local v13    # "pwd":Ljava/lang/String;
    goto :goto_4

    .line 240
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "pwd":Ljava/lang/String;
    .end local v15    # "security":Ljava/lang/String;
    .end local v16    # "ssid":Ljava/lang/String;
    .end local v17    # "tempPwd":Ljava/lang/String;
    :cond_11
    sget-object v24, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0200af

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundResource(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x7f07006f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setText(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f070072

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 247
    .local v20, "uri":Landroid/net/Uri;
    const-string v24, "miracast_tvname"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 250
    .local v11, "p2pName":Ljava/lang/String;
    const v24, 0x7f070073

    const/16 v25, 0x1

    :try_start_1
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v11, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 255
    .local v10, "msg":Ljava/lang/String;
    :goto_5
    :try_start_2
    const-string v24, "pref_text_content_key"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "p2pName":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    :goto_6
    const-string v24, "pref_mecard_group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 261
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 262
    new-instance v22, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;

    invoke-direct/range {v22 .. v22}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;-><init>()V

    .line 263
    .local v22, "wifiDisplay":Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->startWifiDisplayScan()Z

    goto/16 :goto_1

    .line 251
    .end local v22    # "wifiDisplay":Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
    .restart local v11    # "p2pName":Ljava/lang/String;
    .restart local v20    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 252
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v24, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v25, "format string error"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    const v24, 0x7f070073

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .restart local v10    # "msg":Ljava/lang/String;
    goto :goto_5

    .line 256
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "p2pName":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v7

    .line 257
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v24, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v25, "TEXT_CONTENT_KEY set error"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 265
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_12
    sget-object v24, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v25, "switch is closed, jump it when click connect"

    invoke-static/range {v24 .. v25}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    :cond_13
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    .line 270
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 271
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    .line 272
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_1

    .line 280
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0700d0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method
