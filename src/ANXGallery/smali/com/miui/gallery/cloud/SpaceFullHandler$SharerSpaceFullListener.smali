.class Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;
.super Ljava/lang/Object;
.source "SpaceFullHandler.java"

# interfaces
.implements Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SpaceFullHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharerSpaceFullListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSpaceFullError(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 1
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 76
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/SpaceFullHandler;->setSharerSpaceFull(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public handleSpaceNotFull(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 1
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 81
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/SpaceFullHandler;->removeSharerSpaceFull(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public isSpaceFull(Lcom/miui/gallery/cloud/RequestCloudItem;)Z
    .locals 1
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 86
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isSharerSpaceFull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
