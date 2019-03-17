.class public Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$1;,
        Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;
    }
.end annotation


# static fields
.field public static final ERR_CODE:I = 0x65

.field public static final ERR_MSG:Ljava/lang/String; = "Applink\u521d\u59cb\u5316\u5931\u8d25"

.field private static volatile b:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->b:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;-><init>()V

    iput v3, v0, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v3, v0, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x6

    iput v1, v0, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p2, p1, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->backUrl:Ljava/lang/String;

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p1, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    :cond_3
    if-eqz p4, :cond_6

    iget-object v0, p4, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pid"

    iget-object v1, p4, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p4, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->subPid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "subpid"

    iget-object v1, p4, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->subPid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p4, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->unionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "unionId"

    iget-object v1, p4, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->unionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p5, :cond_7

    const-string v0, "isv_code"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v1, "tag"

    const-string v0, "isv_code"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->putParams(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appkey"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "param"

    const-string v2, "param"

    invoke-static {v2, p1}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->objectToJson(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ybhpss"

    const-string v0, "ybhpss"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "from"

    const-string v2, "nbsdk"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isSuccess"

    if-eqz p2, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOW_APPLINK:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string v0, "ybhpss"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "0"

    goto :goto_1
.end method

.method private a(I)Z
    .locals 2

    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->b:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->b:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->b:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isApplinkSupported(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->isSupportLinkKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public init()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;

    invoke-direct {v0, p0, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;-><init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->isDebug()Z

    move-result v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->isDebug()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->setDebugStatus(ZZ)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->getTTID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->setTTID(Ljava/lang/String;)I

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->init(Landroid/app/Application;Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-eq v3, v0, :cond_1

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;-><init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;I)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->setSupportJumpFailedOpenTaobao(Z)V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->API_NAME:Ljava/lang/String;

    const-class v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->registInterceptor(Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;)V

    iput-boolean v2, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a:Z

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;-><init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;I)V

    goto :goto_0
.end method

.method public jumpDetail(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;"
        }
    .end annotation

    new-instance v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    invoke-direct {v6}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;-><init>()V

    new-instance v1, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;

    invoke-direct {v1, p2}, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V

    :try_start_0
    invoke-direct {p0, p3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->jumpDetail(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;)I

    move-result v0

    iput v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    iget v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    invoke-direct {p0, p7, v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Ljava/util/Map;Z)V

    return-object v6

    :catch_0
    move-exception v0

    const-string v1, "AliTradeApplinkServiceImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applink\u8abf\u7528jumpDetail\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    goto :goto_0
.end method

.method public jumpShop(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;"
        }
    .end annotation

    new-instance v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    invoke-direct {v6}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;-><init>()V

    new-instance v1, Lcom/alibaba/alibclinkpartner/param/jump/ALPShopParam;

    invoke-direct {v1, p2}, Lcom/alibaba/alibclinkpartner/param/jump/ALPShopParam;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V

    :try_start_0
    invoke-direct {p0, p3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->jumpShop(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/jump/ALPShopParam;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;)I

    move-result v0

    iput v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    iget v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    invoke-direct {p0, p7, v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Ljava/util/Map;Z)V

    return-object v6

    :catch_0
    move-exception v0

    const-string v1, "AliTradeApplinkServiceImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applink\u8abf\u7528jumpShop\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    goto :goto_0
.end method

.method public jumpTBURI(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;"
        }
    .end annotation

    new-instance v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    invoke-direct {v6}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/alibaba/alibclinkpartner/param/jump/ALPURIParam;

    invoke-direct {v1, p2}, Lcom/alibaba/alibclinkpartner/param/jump/ALPURIParam;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V

    :try_start_0
    invoke-direct {p0, p3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->jumpURI(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/jump/ALPURIParam;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;)I

    move-result v0

    iput v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    iget v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    invoke-direct {p0, p7, v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->a(Ljava/util/Map;Z)V

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AliTradeApplinkServiceImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applink\u8abf\u7528jumpDetail\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    goto :goto_1
.end method

.method public setTTID(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->setTTID(Ljava/lang/String;)I

    return-void
.end method

.method public turnOffDebug()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->setDebugStatus(ZZ)V

    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->setDebugStatus(ZZ)V

    return-void
.end method
