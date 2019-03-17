.class public Lcom/miui/gallery/net/library/LibraryRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "LibraryRequest.java"


# instance fields
.field private final mLibraryId:J


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 23
    const-string v0, "https://i.mi.com/gallery/public/resource/info/v2"

    invoke-direct {p0, v4, v0}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 24
    iput-wide p1, p0, Lcom/miui/gallery/net/library/LibraryRequest;->mLibraryId:J

    .line 25
    const-string v0, "nameSpace"

    const-string v1, "miui_assistant"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/net/library/LibraryRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 26
    const-string v0, "group"

    iget-wide v2, p0, Lcom/miui/gallery/net/library/LibraryRequest;->mLibraryId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/net/library/LibraryRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 27
    const-string v0, "key"

    sget-object v1, Lcom/miui/gallery/assistant/library/LibraryConstants;->CURRENT_ABI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/net/library/LibraryRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 29
    invoke-virtual {p0, v4}, Lcom/miui/gallery/net/library/LibraryRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 30
    return-void
.end method


# virtual methods
.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/net/library/LibraryRequest$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/net/library/LibraryRequest$1;-><init>(Lcom/miui/gallery/net/library/LibraryRequest;)V

    .line 37
    invoke-virtual {v3}, Lcom/miui/gallery/net/library/LibraryRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Lcom/miui/gallery/net/library/LibraryRequest;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/library/Library;

    .line 38
    .local v1, "libraryRespons":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-wide v2, p0, Lcom/miui/gallery/net/library/LibraryRequest;->mLibraryId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/library/Library;->setLibraryId(J)V

    .line 43
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/miui/gallery/net/library/LibraryRequest;->deliverResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .end local v1    # "libraryRespons":Lcom/miui/gallery/assistant/library/Library;
    :goto_1
    return-void

    .line 41
    .restart local v1    # "libraryRespons":Lcom/miui/gallery/assistant/library/Library;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    .end local v1    # "libraryRespons":Lcom/miui/gallery/assistant/library/Library;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 46
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->PARSE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/gallery/net/library/LibraryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v0    # "e":Lcom/google/gson/JsonParseException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->HANDLE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/gallery/net/library/LibraryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
