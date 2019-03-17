.class final Lcom/miui/gallery/cloud/GalleryErrorCode$1;
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
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "spaceFullListener"    # Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    .prologue
    .line 180
    if-eqz p3, :cond_0

    .line 181
    check-cast p2, Lcom/miui/gallery/cloud/RequestCloudItem;

    .end local p2    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-interface {p3, p2}, Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;->handleSpaceNotFull(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 183
    :cond_0
    return-void
.end method
