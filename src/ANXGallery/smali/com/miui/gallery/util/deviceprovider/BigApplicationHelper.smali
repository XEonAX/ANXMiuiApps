.class public Lcom/miui/gallery/util/deviceprovider/BigApplicationHelper;
.super Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;
.source "BigApplicationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBitmapProviderInternal()Lcom/miui/gallery/util/deviceprovider/BitmapProviderInterface;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/BigBitmapProvider;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/BigBitmapProvider;-><init>()V

    return-object v0
.end method

.method protected final getIntentProviderInternal()Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/BigIntentProvider;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/BigIntentProvider;-><init>()V

    return-object v0
.end method

.method protected getMiCloudProviderInternal()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/BigMiCloudProvider;-><init>()V

    return-object v0
.end method

.method protected getUtilsProviderInternal()Lcom/miui/gallery/util/deviceprovider/UtilsProviderInterface;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/BigUtilsProvider;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/BigUtilsProvider;-><init>()V

    return-object v0
.end method

.method protected isSecretAlbumFeatureOpenInternal()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method protected supportShareInternal()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->supportShare()Z

    move-result v0

    return v0
.end method

.method protected supportStoryAlbumInternal()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v0

    return v0
.end method
