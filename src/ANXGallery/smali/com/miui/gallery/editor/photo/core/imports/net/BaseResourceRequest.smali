.class public abstract Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "BaseResourceRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    const/4 v0, 0x0

    const-string v1, "https://i.mi.com/gallery/public/resource/info"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 26
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 28
    const-wide v0, 0x9a7ec800L

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->setCacheExpires(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 30
    return-void
.end method

.method private filterJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v0, ""

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    const-string v1, "\"{"

    const-string/jumbo v2, "{"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "}\""

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52
    goto :goto_0
.end method


# virtual methods
.method protected abstract getParentId()J
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const-string v4, "galleryResourceInfoList"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "dataString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->filterJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v4, "expireAt"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 38
    .local v2, "expireAt":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 41
    :cond_0
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;)V

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 42
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/net/BaseResourceRequest;->deliverResponse([Ljava/lang/Object;)V

    .line 43
    return-void
.end method
