.class public Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;
.super Ljava/lang/Object;


# static fields
.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final PF_ANDROID:Ljava/lang/String; = "android"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field protected static a:Ljava/lang/String;

.field protected static b:Ljava/lang/String;

.field protected static c:Z

.field public static context:Landroid/app/Application;

.field protected static d:Ljava/lang/String;

.field protected static e:Lcom/alibaba/baichuan/trade/common/Environment;

.field public static isvVersion:Ljava/lang/String;

.field public static systemVersion:Ljava/lang/String;

.field public static ttid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3.2.0.0"

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->d:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/trade/common/Environment;->ONLINE:Lcom/alibaba/baichuan/trade/common/Environment;

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->e:Lcom/alibaba/baichuan/trade/common/Environment;

    const-string v0, ""

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->systemVersion:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->ttid:Ljava/lang/String;

    const-string v0, "1.0.0"

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->isvVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCommon()Z
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->systemVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sput-object p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    if-nez p1, :cond_1

    const-string p1, "99"

    :cond_1
    sput-object p1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->systemVersion:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, ""

    :cond_2
    sput-object p2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewProxy;->init()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setIsvVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->isvVersion:Ljava/lang/String;

    return-void
.end method

.method public static setTTID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->ttid:Ljava/lang/String;

    return-void
.end method

.method public static turnOffDebug()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->c:Z

    return-void
.end method

.method public static turnOnDebug()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->c:Z

    return-void
.end method
