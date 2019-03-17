.class public Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "CommonGalleryRequest.java"


# instance fields
.field private mDataType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 21
    iput-object p3, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->mDataType:Ljava/lang/reflect/Type;

    .line 22
    return-void
.end method


# virtual methods
.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->mDataType:Ljava/lang/reflect/Type;

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "response":Ljava/lang/Object;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->deliverResponse([Ljava/lang/Object;)V

    .line 40
    .end local v1    # "response":Ljava/lang/Object;
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->BODY_EMPTY:Lcom/miui/gallery/net/base/ErrorCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 35
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->PARSE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    .end local v0    # "e":Lcom/google/gson/JsonParseException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->HANDLE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
