.class public Lcom/taobao/ma/bar/business/api/MaBarShoppingAPI;
.super Ljava/lang/Object;
.source "MaBarShoppingAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLandingPageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "barcode"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x0

    .line 35
    :goto_0
    return-object v2

    .line 25
    :cond_0
    invoke-static {}, Lcom/taobao/ma/core/Ma;->getMaConfig()Lcom/taobao/ma/common/config/MaConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/taobao/ma/common/config/MaConfig;->isDebug:Z

    if-eqz v2, :cond_1

    const-string v1, "http://h5.wapa.taobao.com/qrbuy/sdk.html"

    .line 28
    .local v1, "url":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 29
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/ma/core/Ma;->getUtMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    const-string v2, "barcode"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v2, "type"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v2, "barcode"

    invoke-static {v2, p0}, Lcom/taobao/ma/common/usertrack/UTLogger;->userTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v1, v0}, Lcom/taobao/ma/bar/business/helper/MaBarBusinessHelper;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 25
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "http://h5.m.taobao.com/qrbuy/sdk.html"

    goto :goto_1
.end method
