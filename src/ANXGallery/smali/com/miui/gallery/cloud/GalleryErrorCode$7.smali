.class final Lcom/miui/gallery/cloud/GalleryErrorCode$7;
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
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "spaceFullListener"    # Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    .prologue
    .line 287
    const-string v2, "GalleryErrorCode"

    const-string/jumbo v3, "special error, album not empty %s"

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v1, :cond_2

    .line 305
    .end local p2    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_0
    :goto_1
    return-void

    .line 287
    .restart local p2    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_2
    check-cast p2, Lcom/miui/gallery/cloud/RequestCloudItem;

    .end local p2    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    iget-object v0, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 292
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/cloud/GalleryErrorCode;->access$100(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/cloud/GalleryErrorCode;->access$200(Ljava/lang/String;)V

    goto :goto_1
.end method
