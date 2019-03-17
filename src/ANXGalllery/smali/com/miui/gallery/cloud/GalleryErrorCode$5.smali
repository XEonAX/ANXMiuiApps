.class final Lcom/miui/gallery/cloud/GalleryErrorCode$5;
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
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "spaceFullListener"    # Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    .prologue
    .line 230
    const-string v1, "GalleryErrorCode"

    const-string v2, "server can\'t found this item: %s"

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    if-eqz p2, :cond_0

    .line 232
    instance-of v0, p2, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-eqz v0, :cond_0

    .line 233
    check-cast p2, Lcom/miui/gallery/cloud/RequestCloudItem;

    .end local p2    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    iget-object v0, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Lcom/miui/gallery/data/DBImage;)V

    .line 236
    :cond_0
    return-void

    .line 230
    .restart local p2    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
