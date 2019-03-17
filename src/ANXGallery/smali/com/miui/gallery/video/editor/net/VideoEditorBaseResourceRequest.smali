.class public abstract Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "VideoEditorBaseResourceRequest.java"


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    const-string v1, "https://i.mi.com/gallery/public/resource/info"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 23
    iput p1, p0, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->type:I

    .line 24
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 26
    const-wide v0, 0x9a7ec800L

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->setCacheExpires(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract getParentId()J
.end method

.method protected abstract newLocalResource()Lcom/miui/gallery/video/editor/model/LocalResource;
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    const-string v9, "galleryResourceInfoList"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    .local v0, "array":Lorg/json/JSONArray;
    const-string v9, "expireAt"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 36
    .local v2, "expireAt":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_0

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 41
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 42
    .local v7, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->newLocalResource()Lcom/miui/gallery/video/editor/model/LocalResource;

    move-result-object v8

    .line 43
    .local v8, "resource":Lcom/miui/gallery/video/editor/model/LocalResource;
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->id:J

    .line 44
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->parent:J

    .line 45
    const-string v9, "icon"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->icon:Ljava/lang/String;

    .line 46
    const-string/jumbo v9, "text"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->label:Ljava/lang/String;

    .line 47
    const-string v9, "extraInfo"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->extra:Ljava/lang/String;

    .line 48
    const-string/jumbo v9, "type"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->type:Ljava/lang/String;

    .line 49
    new-instance v4, Lorg/json/JSONObject;

    iget-object v9, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->extra:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v4, "extraObject":Lorg/json/JSONObject;
    const-string v9, "nameKey"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/video/editor/model/LocalResource;->nameKey:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v8}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->setResult(Lcom/miui/gallery/video/editor/model/LocalResource;)V

    .line 52
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "extraObject":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "resource":Lcom/miui/gallery/video/editor/model/LocalResource;
    :cond_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->deliverResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "expireAt":J
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 58
    sget-object v9, Lcom/miui/gallery/net/base/ErrorCode;->PARSE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p1}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    .end local v1    # "e":Lcom/google/gson/JsonParseException;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    sget-object v9, Lcom/miui/gallery/net/base/ErrorCode;->HANDLE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p1}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected abstract setResult(Lcom/miui/gallery/video/editor/model/LocalResource;)V
.end method
