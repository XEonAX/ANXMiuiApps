.class public Lcom/taobao/ma/bar/business/api/MaBarMedicineAPI;
.super Ljava/lang/Object;
.source "MaBarMedicineAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMedicinePageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "barcode"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isMedicineCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    return-object v2

    .line 26
    :cond_1
    invoke-static {}, Lcom/taobao/ma/core/Ma;->getMaConfig()Lcom/taobao/ma/common/config/MaConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/taobao/ma/common/config/MaConfig;->isDebug:Z

    if-eqz v2, :cond_2

    const-string v1, "http://h5.wapa.taobao.com/qrbuy/sdk.html"

    .line 29
    .local v1, "url":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 30
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/ma/core/Ma;->getUtMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    const-string v2, "barcode"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v2, "type"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "barcode"

    invoke-static {v2, p0}, Lcom/taobao/ma/common/usertrack/UTLogger;->userTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v1, v0}, Lcom/taobao/ma/bar/business/helper/MaBarBusinessHelper;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 26
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const-string v1, "http://h5.m.taobao.com/qrbuy/sdk.html"

    goto :goto_1
.end method
