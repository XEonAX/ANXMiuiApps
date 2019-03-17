.class public final Lcom/alimama/tunion/trade/TUnionTradeSDK;
.super Ljava/lang/Object;
.source "TUnionTradeSDK.java"


# static fields
.field private static e:Lcom/alimama/tunion/trade/TUnionTradeSDK;

.field private static f:Landroid/content/Context;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    .line 41
    const-class v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    new-instance v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    invoke-direct {v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 42
    const-class v0, Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    new-instance v1, Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    invoke-direct {v1}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method private a()Lcom/alimama/tunion/trade/base/ITUnionNetworkURL;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionNetworkURL;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionNetworkURL;

    return-object v0
.end method

.method private b()Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->e:Lcom/alimama/tunion/trade/TUnionTradeSDK;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/alimama/tunion/trade/TUnionTradeSDK;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->e:Lcom/alimama/tunion/trade/TUnionTradeSDK;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;

    invoke-direct {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;-><init>()V

    sput-object v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->e:Lcom/alimama/tunion/trade/TUnionTradeSDK;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->e:Lcom/alimama/tunion/trade/TUnionTradeSDK;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->f:Landroid/content/Context;

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public convertURL(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/base/ITUnionWebView;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V
    .locals 6

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getConvertService()Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 257
    invoke-virtual/range {v0 .. v5}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->convert(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/base/ITUnionWebView;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V

    .line 259
    :cond_0
    return-void
.end method

.method public enableABTest(Z)V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->enable(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    return-object v0
.end method

.method public getAdzoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getConvertService()Lcom/alimama/tunion/trade/convert/TUnionConvertService;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    return-object v0
.end method

.method public getITUnionAppLink()Lcom/alimama/tunion/trade/base/ITUnionAppLink;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionAppLink;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionAppLink;

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTUnionCommon()Lcom/alimama/tunion/trade/base/ITUnionCommon;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionCommon;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionCommon;

    return-object v0
.end method

.method public getTUnionCookie()Lcom/alimama/tunion/trade/base/ITUnionCookie;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionCookie;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionCookie;

    return-object v0
.end method

.method public getTUnionNetwork()Lcom/alimama/tunion/trade/base/ITUnionNetwork;
    .locals 3

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->a()Lcom/alimama/tunion/trade/base/ITUnionNetworkURL;

    move-result-object v1

    .line 195
    invoke-direct {p0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b()Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;->getMtopEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getTUnionUT()Lcom/alimama/tunion/trade/base/ITUnionUT;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionUT;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionUT;

    return-object v0
.end method

.method public getTUnionWebView()Lcom/alimama/tunion/trade/base/ITUnionWebView;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionWebView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionWebView;

    return-object v0
.end method

.method public getUA()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    const-string v0, "AliApp(TUnionSDK/%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "0.3.4"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isABTestEnabled()Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->isEnabled()Z

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJumpServiceOn()Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->isJumpServiceOn()Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    goto :goto_0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    if-eqz p2, :cond_2

    .line 133
    instance-of v0, p2, Lcom/alimama/tunion/trade/base/ITUnionCommon;

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 135
    check-cast v0, Lcom/alimama/tunion/trade/base/ITUnionCommon;

    .line 136
    invoke-interface {v0}, Lcom/alimama/tunion/trade/base/ITUnionCommon;->getAdzoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/alimama/tunion/trade/base/ITUnionCommon;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "adzoneId\uff0cappKey \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    invoke-interface {v0}, Lcom/alimama/tunion/trade/base/ITUnionCommon;->getAdzoneId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->c:Ljava/lang/String;

    .line 140
    invoke-interface {v0}, Lcom/alimama/tunion/trade/base/ITUnionCommon;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->d:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionCommon;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 143
    :cond_3
    instance-of v0, p2, Lcom/alimama/tunion/trade/base/ITUnionNetwork;

    if-eqz v0, :cond_2

    .line 145
    instance-of v0, p2, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->startInitialFetch()V

    goto :goto_0

    .line 147
    :cond_5
    instance-of v0, p2, Lcom/alimama/tunion/trade/base/ITUnionNetworkURL;

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/alimama/tunion/trade/TUnionTradeSDK;->b:Ljava/util/Map;

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionNetworkURL;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
