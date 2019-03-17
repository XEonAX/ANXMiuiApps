.class final Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider$2;
.super Ljava/lang/Object;
.source "BigMiCloudProvider.java"

# interfaces
.implements Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface$GalleryCloudManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleryBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lmiui/cloud/MiCloudCompat;->GALLERY_BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usePreview()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lmiui/cloud/MiCloudCompat;->USE_PREVIEW:Z

    return v0
.end method
