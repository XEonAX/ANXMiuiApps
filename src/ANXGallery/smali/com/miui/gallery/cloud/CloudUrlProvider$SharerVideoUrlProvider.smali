.class Lcom/miui/gallery/cloud/CloudUrlProvider$SharerVideoUrlProvider;
.super Lcom/miui/gallery/cloud/CloudUrlProvider;
.source "CloudUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudUrlProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharerVideoUrlProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudUrlProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/CloudUrlProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/CloudUrlProvider$1;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudUrlProvider$SharerVideoUrlProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommitSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "ubiIndex"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommitUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareVideo;->getCommitUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareVideo;->getCopyUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "ubiIndex"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareVideo;->getCreateUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareVideo;->getDeleteUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHideCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHideMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p2}, Lcom/miui/gallery/cloud/HostManager$ShareVideo;->getMoveUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareVideo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnHideMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnhideCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method
