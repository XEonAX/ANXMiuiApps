.class public Lcom/miui/gallery/cloud/HostManager;
.super Ljava/lang/Object;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/HostManager$Story;,
        Lcom/miui/gallery/cloud/HostManager$Setting;,
        Lcom/miui/gallery/cloud/HostManager$Search;,
        Lcom/miui/gallery/cloud/HostManager$CloudControl;,
        Lcom/miui/gallery/cloud/HostManager$PeopleFace;,
        Lcom/miui/gallery/cloud/HostManager$Baby;,
        Lcom/miui/gallery/cloud/HostManager$SyncPull;,
        Lcom/miui/gallery/cloud/HostManager$Upgrade;,
        Lcom/miui/gallery/cloud/HostManager$ShareVideo;,
        Lcom/miui/gallery/cloud/HostManager$ShareImage;,
        Lcom/miui/gallery/cloud/HostManager$ShareMedia;,
        Lcom/miui/gallery/cloud/HostManager$OwnerVideo;,
        Lcom/miui/gallery/cloud/HostManager$OwnerImage;,
        Lcom/miui/gallery/cloud/HostManager$OwnerMedia;,
        Lcom/miui/gallery/cloud/HostManager$ShareAlbum;,
        Lcom/miui/gallery/cloud/HostManager$OwnerAlbum;,
        Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;
    }
.end annotation


# static fields
.field private static final BASE_FACE_HOST:Ljava/lang/String;

.field private static final BASE_HOST:Ljava/lang/String;

.field private static final BASE_SEARCH_FEEDBACK_HOST:Ljava/lang/String;

.field private static final BASE_SEARCH_HOST:Ljava/lang/String;

.field private static final FACE_URL_BASE:Ljava/lang/String;

.field private static final SEARCH_URL_BASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->getGalleryBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/v3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_HOST:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->usePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://galleryfaceapi.micloud.preview.n.xiaomi.net"

    :goto_0
    sput-object v0, Lcom/miui/gallery/cloud/HostManager;->FACE_URL_BASE:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/HostManager;->FACE_URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/face/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_FACE_HOST:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getCloudManager()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;->usePreview()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://gallerysearchapi.micloud.preview.n.xiaomi.net"

    :goto_1
    sput-object v0, Lcom/miui/gallery/cloud/HostManager;->SEARCH_URL_BASE:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/HostManager;->SEARCH_URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/gallery/search/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_SEARCH_HOST:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_FACE_HOST:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_SEARCH_FEEDBACK_HOST:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    const-string v0, "http://galleryfaceapi.micloud.xiaomi.net"

    goto :goto_0

    .line 14
    :cond_1
    const-string v0, "http://gallerysearchapi.micloud.xiaomi.net"

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_HOST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_FACE_HOST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_SEARCH_HOST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/miui/gallery/cloud/HostManager;->BASE_SEARCH_FEEDBACK_HOST:Ljava/lang/String;

    return-object v0
.end method
