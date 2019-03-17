.class final Lcom/miui/gallery/cloud/GalleryErrorCode$3;
.super Ljava/lang/Object;
.source "GalleryErrorCode.java"

# interfaces
.implements Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/GalleryErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "spaceFullListener"    # Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p2, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    const-string v1, "retryAfter"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "retryAfter"

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/miui/gallery/cloud/RequestItemBase;->retryAfter:J

    .line 212
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "GalleryErrorCode"

    const-string v3, "retry error: %s"

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    return-void

    .line 212
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
