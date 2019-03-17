.class public Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;
.super Landroid/app/Service;
.source "nexAssetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$a;
    }
.end annotation


# static fields
.field public static final ACTION_ASSET_FEATUREDLIST_COMPLETED:Ljava/lang/String; = "com.nexstreaming.nexeditorsdk.asset.feathredlist.completed"

.field public static final ACTION_ASSET_INSTALL_COMPLETED:Ljava/lang/String; = "com.nexstreaming.nexeditorsdk.asset.install.completed"

.field public static final ACTION_ASSET_UNINSTALL_COMPLETED:Ljava/lang/String; = "com.nexstreaming.nexeditorsdk.asset.uninstall.completed"

.field private static final ACTION_BIND:Ljava/lang/String; = "com.nexstreaming.nexeditorsdk.service.bind"

.field private static final TAG:Ljava/lang/String; = "nexAssetService"

.field private static final TYPE_BITMAP_DATA:I = 0x1

.field private static final TYPE_JSON_DATA:I

.field private static final sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private checkReceivedFeaturedListAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private isRunningAsyncTask:Z

.field private volatile isUpdatedFeaturedList:Z

.field private volatile lastReceivedFeaturedListTime:J

.field private mCurrentAssetInfo:Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

.field private mCurrentThumbnail:Landroid/graphics/Bitmap;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mReceivedDataSize:J

.field private nexAssetService:Lcom/nexstreaming/nexeditorsdk/service/INexAssetService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mReceivedDataSize:J

    .line 371
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$2;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$2;-><init>(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->nexAssetService:Lcom/nexstreaming/nexeditorsdk/service/INexAssetService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->lastReceivedFeaturedListTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isUpdatedFeaturedList:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isUpdatedFeaturedList:Z

    return p1
.end method

.method static synthetic access$202(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isRunningAsyncTask:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;ILjava/lang/String;Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/service/INexAssetConnectionCallback;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->onConnectionInstaller(ILjava/lang/String;Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/service/INexAssetConnectionCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;ILjava/lang/String;IJLcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->onReceivedAssetData(ILjava/lang/String;IJLcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;ILcom/nexstreaming/nexeditorsdk/service/INexAssetUninstallCallback;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->onUninstallAsset(ILcom/nexstreaming/nexeditorsdk/service/INexAssetUninstallCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->onLoadInstalledAssetList(Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->onReceivedAssetInfoData(IILjava/lang/String;)V

    return-void
.end method

.method private installAsset(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;)V
    .locals 6

    .prologue
    .line 355
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 356
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;)V

    .line 358
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installAsset fail!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz p4, :cond_0

    .line 363
    :try_start_0
    iget v0, p3, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;->idx:I

    const-string v1, "component not found!"

    invoke-interface {p4, v0, v1}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;->onInstallFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onConnectionInstaller(ILjava/lang/String;Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/service/INexAssetConnectionCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 124
    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 125
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 126
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionInstaller: make bitmap completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    const-class v1, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-virtual {v0, p3, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentAssetInfo:Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    .line 128
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionInstaller: convert Asset completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentAssetInfo:Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    invoke-interface {p4, p1}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetConnectionCallback;->onConnectionCompleted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onLoadInstalledAssetList(Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback;)V
    .locals 14

    .prologue
    .line 183
    if-eqz p1, :cond_5

    .line 184
    const-string v0, "nexAssetService"

    const-string v1, "internalLoadInstallAssetList() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getInstance(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getAssetInstalledDownloadItemItems()Ljava/util/List;

    move-result-object v0

    .line 186
    const-string v1, ""

    .line 187
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 188
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    .line 192
    invoke-static {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expire Asset Idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetIdx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetIdx()I

    move-result v1

    .line 198
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v2

    .line 199
    const-string v3, ""

    .line 200
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetName()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetName()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nexstreaming/app/common/util/n;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 217
    :cond_1
    const-string v0, ""

    .line 219
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/a;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 220
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/a;->getCategoryAlias()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_2
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetSubCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/d;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 224
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetSubCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/d;->getSubCategoryAlias()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetSubCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/d;->getSubCategoryName()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetSubCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/d;->getSubCategoryName()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nexstreaming/app/common/util/n;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 231
    :cond_3
    :goto_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/service/NexInstalledAssetItem;

    .line 232
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getThumbUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getInstalledTime()J

    move-result-wide v6

    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getExpireTime()J

    move-result-wide v8

    .line 233
    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getMinVersion()I

    move-result v10

    invoke-interface {v11}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getPackageVersion()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/nexstreaming/nexeditorsdk/service/NexInstalledAssetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    .line 236
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    :cond_4
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    invoke-virtual {v0, v12}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :try_start_0
    invoke-interface {p1, v0}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback;->onLoadAssetDatas(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_5
    :goto_2
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 247
    :cond_6
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback;->onLoadAssetDatas(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 248
    :catch_1
    move-exception v0

    .line 249
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_7
    move-object v4, v0

    goto :goto_1
.end method

.method private onReceivedAssetData(ILjava/lang/String;IJLcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-wide v2, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mReceivedDataSize:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mReceivedDataSize:J

    .line 142
    invoke-static {p2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 145
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mFileOutputStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_1
    iget-wide v2, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mReceivedDataSize:J

    cmp-long v0, v2, p4

    if-nez v0, :cond_1

    .line 160
    const-string v0, "nexAssetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedAssetData: Received Completed size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mReceivedDataSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_2
    const-string v0, "nexAssetService"

    const-string v2, "onReceivedAssetData: try close stream "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentAssetInfo:Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    invoke-direct {p0, v1, v0, v2, p6}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->installAsset(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;)V

    .line 175
    iput-object v6, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 176
    iput-object v6, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentAssetInfo:Lcom/nexstreaming/app/common/nexasset/store/json/AssetStoreAPIData$AssetInfo;

    .line 177
    iput-object v6, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->mReceivedDataSize:J

    .line 180
    :cond_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 164
    :catch_2
    move-exception v0

    .line 165
    const-string v2, "nexAssetService"

    const-string v3, "onReceivedAssetData: fileOutputStream close error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onReceivedAssetInfoData(IILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->lastReceivedFeaturedListTime:J

    .line 264
    if-eqz p3, :cond_0

    .line 265
    packed-switch p1, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isRunningAsyncTask:Z

    if-nez v0, :cond_1

    .line 269
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isRunningAsyncTask:Z

    .line 270
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isUpdatedFeaturedList:Z

    .line 271
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService$1;-><init>(Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->checkReceivedFeaturedListAsyncTask:Landroid/os/AsyncTask;

    .line 306
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->checkReceivedFeaturedListAsyncTask:Landroid/os/AsyncTask;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Context;

    aput-object p0, v2, v3

    aput-object v5, v2, v4

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isUpdatedFeaturedList:Z

    if-nez v0, :cond_2

    .line 309
    invoke-static {p2, p3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->isUpdatedFeaturedList(ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->isUpdatedFeaturedList:Z

    .line 311
    :cond_2
    invoke-static {p2, p3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->saveFeaturedList(ILjava/lang/String;)V

    .line 313
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedAssetInfoData: featuredAsset ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 319
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    invoke-static {p2, v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->saveFeaturedThumbnail(ILandroid/graphics/Bitmap;)V

    .line 322
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedAssetInfoData: bitmap index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUninstallAsset(ILcom/nexstreaming/nexeditorsdk/service/INexAssetUninstallCallback;)V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->putUninstallItem(I)V

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getInstance(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->uninstallPackage(I)I

    .line 335
    invoke-interface {p2, p1}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetUninstallCallback;->onUninstallCompleted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nexstreaming.nexeditorsdk.asset.uninstall.completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    const-string v1, "nexAssetService"

    const-string v2, "onUninstallAsset: error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetUninstallCallback;->onUninstallFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 340
    :catch_1
    move-exception v0

    .line 341
    const-string v1, "nexAssetService"

    const-string v2, "onUninstallAsset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 98
    const-string v0, "nexAssetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() called with: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nexstreaming.nexeditorsdk.service.bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "com.nexstreaming.app.assetstore.sdk.service.bind"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".AssetStoreService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "nexAssetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/nexAssetService;->nexAssetService:Lcom/nexstreaming/nexeditorsdk/service/INexAssetService$Stub;

    .line 112
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    const-string v0, "nexAssetService"

    const-string v1, "onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    const-string v0, "nexAssetService"

    const-string v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 119
    const-string v0, "nexAssetService"

    const-string v1, "onTaskRemoved() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method
