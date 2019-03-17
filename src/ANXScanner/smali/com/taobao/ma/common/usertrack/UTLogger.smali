.class public Lcom/taobao/ma/common/usertrack/UTLogger;
.super Ljava/lang/Object;
.source "UTLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static send(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string v2, "ma_decode"

    invoke-direct {v0, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "customBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-virtual {v0, p0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 49
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    const-string v3, "ma_tracker"

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v1

    .line 50
    .local v1, "tracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public static userTrack(Lcom/taobao/ma/common/result/MaResult;)V
    .locals 3
    .param p0, "result"    # Lcom/taobao/ma/common/result/MaResult;

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sdkversion"

    const-string v2, "1.2.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Lcom/taobao/ma/core/Ma;->getMaConfig()Lcom/taobao/ma/common/config/MaConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/ma/common/config/MaConfig;->onesdkversion:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/ma/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "onesdkversion"

    invoke-static {}, Lcom/taobao/ma/core/Ma;->getMaConfig()Lcom/taobao/ma/common/config/MaConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/ma/common/config/MaConfig;->onesdkversion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/taobao/ma/common/result/MaResult;->getType()Lcom/taobao/ma/common/result/MaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/ma/common/result/MaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "content"

    invoke-virtual {p0}, Lcom/taobao/ma/common/result/MaResult;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Lcom/taobao/ma/common/usertrack/UTLogger;->send(Ljava/util/Map;)V

    .line 36
    return-void
.end method

.method public static userTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "lMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v0}, Lcom/taobao/ma/common/usertrack/UTLogger;->send(Ljava/util/Map;)V

    .line 43
    return-void
.end method
