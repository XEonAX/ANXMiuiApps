.class public Lcom/miui/gallery/GalleryApp;
.super Lmiui/external/Application;
.source "GalleryApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/GalleryApp$ApplicationDelegate;
    }
.end annotation


# static fields
.field private static final BLOCK_MONITOR:Z

.field private static volatile sContext:Landroid/content/Context;


# instance fields
.field private mImageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-eqz v0, :cond_0

    const-string v0, "BLOCK_MONITOR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/GalleryApp;->BLOCK_MONITOR:Z

    .line 76
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_2

    .line 77
    sget-boolean v0, Lcom/miui/os/Rom;->IS_STABLE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/util/Log;->setLogLevel(I)V

    .line 81
    :goto_2
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 79
    :cond_2
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->setLogLevel(I)V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    .line 124
    new-instance v0, Lcom/miui/gallery/GalleryApp$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/GalleryApp$2;-><init>(Lcom/miui/gallery/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/GalleryApp;->mImageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/GalleryApp;->initDataInUIThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/GalleryApp;->initDataInSubThread()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/miui/gallery/GalleryApp;->BLOCK_MONITOR:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/GalleryApp;->openBlockMonitor()V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/GalleryApp;->doInitInSubThreadAtOnce()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/GalleryApp;->doInitInSubThreadDelay()V

    return-void
.end method

.method private doInitInSubThreadAtOnce()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/GalleryApp;->mImageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->preInitialize()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/GalleryApp;->mImageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    .line 188
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->init(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    .line 192
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    .line 194
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isImageFeatureSelectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isImageFeatureSelectionVisiable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->init()V

    .line 200
    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/assistant/library/LibraryManager;->init(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method private doInitInSubThreadDelay()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 206
    invoke-static {p0}, Lcom/miui/gallery/discovery/GalleryJobService;->scheduleJobs(Landroid/content/Context;)V

    .line 208
    invoke-static {v6, v8, v6}, Lcom/miui/gallery/cloud/CloudUtils;->checkAccount(Landroid/app/Activity;ZLjava/lang/Runnable;)Z

    .line 210
    invoke-static {}, Lcom/miui/gallery/data/CitySearcher;->getInstance()Lcom/miui/gallery/data/CitySearcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/data/CitySearcher;->preLoadData()V

    .line 211
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v6}, Lcom/miui/gallery/permission/core/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    sget-object v6, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/gallery/data/OldThumbnailTransferer;->transfer(Landroid/content/Context;)V

    .line 215
    invoke-static {}, Lcom/miui/gallery/util/OldCacheCleaner;->clean()V

    .line 218
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->initFirstCacheBitmap()V

    .line 220
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getEverRefillLocalGroupId()Z

    move-result v6

    if-nez v6, :cond_1

    .line 221
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v8, v7}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillLocalGroupId(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 223
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setEverRefillLocalGroupId()V

    .line 226
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getEverSyncedSystemAlbum()Z

    move-result v6

    if-nez v6, :cond_2

    .line 227
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 230
    :cond_2
    invoke-static {}, Lcom/miui/gallery/push/GalleryPushManager;->getInstance()Lcom/miui/gallery/push/GalleryPushManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/miui/gallery/push/GalleryPushManager;->registerPush(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 235
    const-wide/32 v2, 0x5265c00

    .line 236
    .local v2, "day":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 237
    .local v0, "current":J
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->getLastRequestSucceedTime()J

    move-result-wide v4

    .line 241
    .local v4, "lastRequestSucceedTime":J
    sub-long v6, v0, v4

    const-wide/16 v8, 0x3

    mul-long/2addr v8, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 242
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 243
    new-instance v6, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync()Z

    .line 251
    .end local v0    # "current":J
    .end local v2    # "day":J
    .end local v4    # "lastRequestSucceedTime":J
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 252
    invoke-static {p0}, Lcom/miui/gallery/cloud/receiver/CloudPrivacyAgreementDeniedReceiver;->onCloudPrivacyAgreementDenied(Landroid/content/Context;)V

    .line 254
    :cond_4
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->init()V

    .line 255
    return-void

    .line 244
    .restart local v0    # "current":J
    .restart local v2    # "day":J
    .restart local v4    # "lastRequestSucceedTime":J
    :cond_5
    sub-long v6, v0, v4

    const-wide/16 v8, 0x7

    mul-long/2addr v8, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 245
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    new-instance v6, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync()Z

    goto :goto_0
.end method

.method private initDataInSubThread()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/gallery/GalleryApp$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/GalleryApp$4;-><init>(Lcom/miui/gallery/GalleryApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method private initDataInUIThread()V
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->init(Landroid/content/Context;)V

    .line 136
    sget-object v0, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->init(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/GalleryApp;->mImageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->setInitializer(Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)V

    .line 139
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryStatHelper;->init(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/miui/gallery/GalleryApp;->setupLeakCanary()V

    .line 142
    invoke-static {}, Lcom/miui/gallery/cloud/CloudReceiverRegister;->getInstance()Lcom/miui/gallery/cloud/CloudReceiverRegister;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/CloudReceiverRegister;->onAppCreate()V

    .line 144
    invoke-static {}, Lcom/miui/gallery/util/PreferenceCleaner;->clean()V

    .line 146
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/gallery/util/uil/CloudUriAdapter;

    invoke-direct {v2}, Lcom/miui/gallery/util/uil/CloudUriAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->init(Landroid/content/Context;Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;)V

    .line 147
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/GalleryApp$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/GalleryApp$3;-><init>(Lcom/miui/gallery/GalleryApp;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;->addUploadStatusChangedListener(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy$UploadStatusChangedListener;)V

    .line 164
    return-void
.end method

.method public static isEditorProcess()Z
    .locals 2

    .prologue
    .line 270
    const-string v0, "com.miui.gallery:photo_editor"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lmiui/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openBlockMonitor()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/monitor/LooperBlockDetector;->start(Landroid/os/Looper;J)V

    .line 112
    return-void
.end method

.method public static sGetAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private setupLeakCanary()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 85
    sput-object p0, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    .line 86
    sget-object v0, Lcom/miui/gallery/GalleryApp;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/StaticContext;->init(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/miui/gallery/modules/ModulesRegister;->register()V

    .line 88
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->isEditorProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;-><init>()V

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/GalleryApp$ApplicationDelegate;

    invoke-direct {v0, p0}, Lcom/miui/gallery/GalleryApp$ApplicationDelegate;-><init>(Lcom/miui/gallery/GalleryApp;)V

    goto :goto_0
.end method
