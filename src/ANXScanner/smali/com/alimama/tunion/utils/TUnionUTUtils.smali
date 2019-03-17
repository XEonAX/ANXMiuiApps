.class public Lcom/alimama/tunion/utils/TUnionUTUtils;
.super Ljava/lang/Object;
.source "TUnionUTUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/tunion/utils/TUnionUTUtils$Error;,
        Lcom/alimama/tunion/utils/TUnionUTUtils$Config;,
        Lcom/alimama/tunion/utils/TUnionUTUtils$Convert;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/alimama/tunion/utils/TUnionUTUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionUT()Lcom/alimama/tunion/trade/base/ITUnionUT;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    if-nez p2, :cond_0

    .line 102
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 104
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alimama/tunion/trade/base/ITUnionUT;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    :cond_1
    return-void
.end method

.method private static c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils;->d()Ljava/util/Map;

    move-result-object v0

    .line 110
    const-string v1, "mcid"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v1, "cid"

    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object v0
.end method
