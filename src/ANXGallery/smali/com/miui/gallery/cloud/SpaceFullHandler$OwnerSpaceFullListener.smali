.class Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;
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
    name = "OwnerSpaceFullListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSpaceFullError(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 57
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->setOwnerSpaceFull()V

    .line 58
    return-void
.end method

.method public handleSpaceNotFull(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 62
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->removeOwnerSpaceFull()V

    .line 63
    return-void
.end method

.method public isSpaceFull(Lcom/miui/gallery/cloud/RequestCloudItem;)Z
    .locals 1
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 67
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v0

    return v0
.end method
