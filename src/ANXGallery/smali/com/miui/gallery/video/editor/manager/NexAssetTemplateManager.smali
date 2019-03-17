.class public Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;
.super Ljava/lang/Object;
.source "NexAssetTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;,
        Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;,
        Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;,
        Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;,
        Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$NexTemplateManagerHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private assetInstallRootPath:Ljava/lang/String;

.field private assetStoreSubDir:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "NexAssetTemplateManager"

    iput-object v0, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$NexTemplateManagerHolder;->access$100()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v0

    return-object v0
.end method

.method private initPath()V
    .locals 2

    .prologue
    .line 84
    sget-object v1, Lcom/miui/gallery/video/editor/config/VideoEditorConfig;->ASSET_STORE_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->assetStoreSubDir:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/miui/gallery/video/editor/config/VideoEditorConfig;->ASSET_INSTALL_ROOT_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->assetInstallRootPath:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->assetStoreSubDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/FileHelper;->createDir(Ljava/lang/String;)Z

    move-result v0

    .line 87
    .local v0, "createDirSuccess":Z
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->assetStoreSubDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAssetStoreRootPath(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->assetInstallRootPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAssetInstallRootPath(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method private installProcess(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V
    .locals 2
    .param p1, "assetId"    # I
    .param p2, "iLoadAssetTemplate"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->initPath()V

    .line 111
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$3;-><init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->installPackagesAsync(ILcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V

    goto :goto_0
.end method


# virtual methods
.method public checkExpiredAsset(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;)V
    .locals 2
    .param p1, "checkExpiredAssetListener"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getKmTemplateManager()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    move-result-object v0

    .line 50
    .local v0, "mKmTemplateManager":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$2;-><init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->loadTemplate(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getKmTemplateManager()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplateManager(Landroid/content/Context;Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    move-result-object v0

    return-object v0
.end method

.method public installSmartEffectAssetPackageToSdk(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V
    .locals 0
    .param p1, "assetId"    # I
    .param p2, "iLoadAssetTemplate"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->installProcess(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V

    .line 101
    return-void
.end method

.method public installWaterMarkAssetPackageToSdk(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V
    .locals 0
    .param p1, "assetId"    # I
    .param p2, "iLoadAssetTemplate"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->installProcess(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V

    .line 96
    return-void
.end method

.method public loadSmartEffectTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;)V
    .locals 2
    .param p1, "smartEffectListener"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;

    .prologue
    .line 32
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->initPath()V

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getKmTemplateManager()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    move-result-object v0

    .line 35
    .local v0, "mKmTemplateManager":Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    new-instance v1, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$1;-><init>(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->loadTemplate(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadWaterMarkTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;)V
    .locals 2
    .param p1, "waterMarkListener"    # Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->initPath()V

    .line 79
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getIDs()[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "iDs":[Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;->onFinished([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uninstallPackageById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->uninstallPackageById(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
