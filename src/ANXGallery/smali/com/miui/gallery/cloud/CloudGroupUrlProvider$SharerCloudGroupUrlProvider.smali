.class Lcom/miui/gallery/cloud/CloudGroupUrlProvider$SharerCloudGroupUrlProvider;
.super Lcom/miui/gallery/cloud/CloudGroupUrlProvider;
.source "CloudGroupUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudGroupUrlProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharerCloudGroupUrlProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/CloudGroupUrlProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/CloudGroupUrlProvider$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider$SharerCloudGroupUrlProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditGroupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "sharer album doesn\'t support to be edited!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThumbnailInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareAlbum;->getThumbnailInfoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
