.class public Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;
.super Ljava/lang/Object;
.source "nexAssetStoreAppUtils.java"


# static fields
.field public static final AssetStoreMimeType_Audio:I = 0x8

.field public static final AssetStoreMimeType_Background:I = 0x20

.field public static final AssetStoreMimeType_BeatTemplate:I = 0x400

.field public static final AssetStoreMimeType_DynamicCollage:I = 0x4000

.field public static final AssetStoreMimeType_Effect:I = 0x2

.field public static final AssetStoreMimeType_Extra:I = -0x80000000

.field public static final AssetStoreMimeType_Filter:I = 0x10

.field public static final AssetStoreMimeType_Font:I = 0x100

.field public static final AssetStoreMimeType_IntegratedCollage:I = 0x1000

.field public static final AssetStoreMimeType_Overlay:I = 0x40

.field public static final AssetStoreMimeType_RenderItem:I = 0x80

.field public static final AssetStoreMimeType_StaticCollage:I = 0x2000

.field public static final AssetStoreMimeType_Template:I = 0x1

.field public static final AssetStoreMimeType_TitleTemplate:I = 0x200

.field public static final AssetStoreMimeType_Transition:I = 0x4

.field private static final AssetStoreProtocolVersion:I = 0x1

.field public static final AssetStoreServerDRAFT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AssetStoreServerPRODUCTION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AssetStoreServerSTAGING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "nexAssetStoreAppUtils"

.field private static final assetStoreAppResultCode:I = 0x5689

.field private static availableCategory:I = 0x0

.field private static denyFeaturedList:Z = false

.field private static final getAssetStoreSDKLevel:I = 0x7

.field private static final kAssetStoreAssetConnectServer:Ljava/lang/String; = "AssetStore.intent.extra.ConnectServer"

.field private static final kAssetStoreAssetID:Ljava/lang/String; = "AssetStore.intent.extra.AssetID"

.field private static final kAssetStoreAssetImageUrl:Ljava/lang/String; = "AssetStore.intent.extra.AssetImageUrl"

.field private static final kAssetStoreAssetProtocolVersion:Ljava/lang/String; = "AssetStore.intent.extra.ProtocolVersion"

.field private static final kAssetStoreAssetSDKLevel:Ljava/lang/String; = "AssetStore.intent.extra.SDKLevel"

.field private static final kAssetStoreAvailableCategorys:Ljava/lang/String; = "AssetStore.intent.extra.UiSet.Categorys"

.field private static final kAssetStoreDenyFeaturedList:Ljava/lang/String; = "AssetStore.intent.extra.DenyFeaturedList"

.field private static final kAssetStoreLaunchMode:Ljava/lang/String; = "AssetStore.intent.extra.Launch.Mode"

.field private static final kAssetStoreMarketId:Ljava/lang/String; = "AssetStore.intent.extra.MarketId"

.field private static final kAssetStoreMimeType:Ljava/lang/String; = "AssetStore.intent.extra.MimeType"

.field private static final kAssetStoreMimeTypeExtra:Ljava/lang/String; = "AssetStore.intent.extra.MimeTypeExtra"

.field private static final kAssetStoreVendor:Ljava/lang/String; = "AssetStore.intent.extra.Vendor"

.field private static marketId:Ljava/lang/String;

.field private static mimeTypeExtra:Ljava/lang/String;

.field private static moveCategory:I

.field private static final sInstallThreadPool:Ljava/util/concurrent/Executor;

.field private static serverType:I

.field private static vendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->sInstallThreadPool:Ljava/util/concurrent/Executor;

    .line 231
    const-string v0, "NexStreaming"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    .line 232
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->moveCategory:I

    .line 233
    sput v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->availableCategory:I

    .line 235
    const-string v0, "default2"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->marketId:Ljava/lang/String;

    .line 237
    sput-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->denyFeaturedList:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKLevel()I
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x7

    return v0
.end method

.method public static isInstalledAssetStoreApp(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 365
    .line 366
    const/4 v1, 0x0

    .line 367
    if-nez p0, :cond_0

    .line 368
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object p0

    .line 371
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 372
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 378
    :goto_0
    return v0

    .line 375
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isInstalledKineMaster(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 390
    .line 391
    const/4 v1, 0x0

    .line 392
    if-nez p0, :cond_0

    .line 393
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object p0

    .line 396
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getKineMasterPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 397
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 403
    :goto_0
    return v0

    .line 400
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isServiceRunningCheck(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 340
    .line 342
    if-nez p0, :cond_0

    .line 343
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object p0

    .line 346
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 348
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 349
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpdatedFeaturedList(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 547
    invoke-static {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->isUpdatedFeaturedList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static makeConfigAsync()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils$1;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils$1;-><init>()V

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->sInstallThreadPool:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 311
    return-void
.end method

.method public static moveGooglePlayAssetStoreLink(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 492
    .line 494
    if-nez p0, :cond_0

    .line 495
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object p0

    .line 498
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method public static moveGooglePlayKineMaster(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 511
    .line 513
    if-nez p0, :cond_0

    .line 514
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object p0

    .line 517
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getKineMasterPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method public static runAssetStoreApp(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 415
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->runAssetStoreApp(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static runAssetStoreApp(Landroid/app/Activity;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 430
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->availableCategory:I

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;

    const-string v1, "must called \'setAvailableCategorys(int mimeTypes)\'"

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "com.nexstreaming.app.assetstore.start.application"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    if-eqz p1, :cond_7

    .line 440
    const-string v1, "FL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 442
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getInstance(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getThumbnailUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    const-string v2, "AssetStore.intent.extra.AssetImageUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    :cond_1
    const-string v1, "AssetStore.intent.extra.AssetID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    :goto_0
    sget v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->serverType:I

    if-lez v1, :cond_2

    .line 452
    const-string v1, "AssetStore.intent.extra.ConnectServer"

    sget v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->serverType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    :cond_2
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->marketId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 456
    const-string v1, "AssetStore.intent.extra.MarketId"

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->marketId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    :cond_3
    const-string v1, "AssetStore.intent.extra.Vendor"

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "AssetStore.intent.extra.SDKLevel"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v1, "AssetStore.intent.extra.ProtocolVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string v1, "AssetStore.intent.extra.UiSet.Categorys"

    sget v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->availableCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v1, "AssetStore.intent.extra.DenyFeaturedList"

    sget-boolean v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->denyFeaturedList:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->mimeTypeExtra:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 464
    const-string v1, "AssetStore.intent.extra.MimeTypeExtra"

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->mimeTypeExtra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    :cond_4
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    const-string v2, "TINNO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-lez p2, :cond_8

    .line 468
    :cond_5
    if-lez p2, :cond_6

    .line 469
    const-string v1, "AssetStore.intent.extra.Launch.Mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v1, "nexAssetStoreAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set intent flag value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_6
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".EnterActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 480
    :goto_1
    const/16 v0, 0x5689

    return v0

    .line 448
    :cond_7
    const-string v1, "AssetStore.intent.extra.MimeType"

    sget v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->moveCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 476
    :cond_8
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".AssetStoreService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public static saveFeaturedList(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 540
    invoke-static {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->saveFeaturedList(ILjava/lang/String;)V

    .line 541
    return-void
.end method

.method public static saveFeaturedThumbnail(ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 554
    invoke-static {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->saveFeaturedThumbnail(ILandroid/graphics/Bitmap;)V

    .line 555
    return-void
.end method

.method public static sendAssetStoreAppServiceIntent(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->getAssetStoreAppServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "AssetStore.intent.extra.Vendor"

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "AssetStore.intent.extra.SDKLevel"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v1, "AssetStore.intent.extra.ProtocolVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v1, "AssetStore.intent.extra.DenyFeaturedList"

    sget-boolean v2, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->denyFeaturedList:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    return-void
.end method

.method public static setAvailableCategorys(I)V
    .locals 0

    .prologue
    .line 287
    sput p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->availableCategory:I

    .line 288
    return-void
.end method

.method public static setDenyFeaturedList(Z)V
    .locals 0

    .prologue
    .line 291
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->denyFeaturedList:Z

    .line 292
    return-void
.end method

.method public static setMarketId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    sput-object p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->marketId:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public static setMimeType(I)V
    .locals 0

    .prologue
    .line 256
    sput p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->moveCategory:I

    .line 257
    return-void
.end method

.method public static setMimeTypeExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    sput-object p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->mimeTypeExtra:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static setServer(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    sput p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->serverType:I

    .line 301
    return-void
.end method

.method public static setVendor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    sput-object p0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public static vendorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetStoreAppUtils;->vendor:Ljava/lang/String;

    return-object v0
.end method
