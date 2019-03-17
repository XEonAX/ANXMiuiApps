.class final Lcom/miui/gallery/cloud/GalleryErrorCode$4;
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
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "spaceFullListener"    # Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v1, "GalleryErrorCode"

    const-string v2, "not retry error: %s"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
