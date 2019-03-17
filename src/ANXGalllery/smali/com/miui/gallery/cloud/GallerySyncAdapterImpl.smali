.class public Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;
.super Ljava/lang/Object;
.source "GallerySyncAdapterImpl.java"


# static fields
.field public static sNeedSyncUserNames:Z


# instance fields
.field mAccount:Landroid/accounts/Account;

.field mContext:Landroid/content/Context;

.field mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

.field mSyncResult:Landroid/content/SyncResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private doPostFirstSyncJob()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 533
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->getLastRequestSucceedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->doSync(Landroid/content/Context;)V

    .line 537
    new-instance v1, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync(Z)Z

    move-result v0

    .line 538
    .local v0, "result":Z
    const-string v1, "GallerySyncAdapterImpl"

    const-string v2, "Request cloud control after first sync, result %s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    .end local v0    # "result":Z
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.gallery.action.FIRST_SYNC_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 544
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->canAutoDownload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->startBatchDownload(Landroid/content/Context;Z)V

    .line 547
    :cond_1
    return-void
.end method

.method private fetchSyncExtraInfoFromV2ToV3()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncFetchSyncExtraInfoFromV2ToV3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;

    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 72
    .local v0, "task":Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->run()V

    .line 73
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncFetchSyncExtraInfoFromV2ToV3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "GallerySyncAdapterImpl"

    const-string v2, "fail to fetch syncExtraInfo when upgrade from v2 to v3"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    .line 78
    .end local v0    # "task":Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hasBabyInfoForThisAccount(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 501
    invoke-static {p1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->ifHaveBabyType(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private needResyncFaceDataLaterForBaby()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->hasBabyInfoForThisAccount(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 486
    :cond_0
    return v0
.end method

.method private recordSyncError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "error"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_error_message"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 478
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static resetAccountInfo(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 516
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/AccountCache;->update(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 517
    const-string v0, "GallerySyncAdapterImpl"

    const-string v1, "reset AccountCache"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryKssManager;->reset()V

    .line 521
    const-string v0, "GallerySyncAdapterImpl"

    const-string v1, "reset GalleryKssManager"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private statSpaceStatus()V
    .locals 3

    .prologue
    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spaceFull"

    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_check_cloud_space"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 470
    return-void
.end method

.method private syncFaceData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;

    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 510
    .local v0, "syncPeopleFaceFromServer":Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->sync()V

    .line 512
    .end local v0    # "syncPeopleFaceFromServer":Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
    :cond_0
    return-void
.end method

.method private try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncWatermark(Landroid/accounts/Account;J)V

    .line 494
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 496
    const-string v0, "GallerySyncAdapterImpl"

    const-string v1, "reset people face wartemark to 0, zero"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method


# virtual methods
.method protected onPerformMiCloudSync(Landroid/os/Bundle;Landroid/accounts/Account;Landroid/content/SyncResult;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 42
    .param p1, "extrasIn"    # Landroid/os/Bundle;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "syncResult"    # Landroid/content/SyncResult;
    .param p4, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getUtilsProvider()Lcom/miui/gallery/util/deviceprovider/UtilsProviderInterface;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/util/deviceprovider/UtilsProviderInterface;->processMiCloudSyncBundle(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 84
    .local v7, "extras":Landroid/os/Bundle;
    const-string/jumbo v36, "sync_no_delay"

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 85
    .local v21, "syncNoDelay":Z
    if-eqz v7, :cond_6

    const-string/jumbo v36, "sync_tag_type"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    const/4 v8, 0x1

    .line 86
    .local v8, "isPush":Z
    :goto_0
    if-nez v8, :cond_0

    .line 87
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/SyncUtil;->unpackSyncParams(Landroid/os/Bundle;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v32

    .line 88
    .local v32, "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v36

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;Z)V

    .line 91
    .end local v32    # "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    .line 92
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mSyncResult:Landroid/content/SyncResult;

    .line 93
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 95
    .local v16, "startTime":J
    const/16 v34, 0x0

    .line 96
    .local v34, "wifiLock":Landroid/net/wifi/WifiManager$WifiLock;
    const/4 v13, 0x1

    .line 97
    .local v13, "result":Z
    const/4 v11, 0x0

    .line 99
    .local v11, "needResyncFaceDataLaterForBaby":Z
    const/16 v31, 0x0

    .line 101
    .local v31, "syncThrowable":Ljava/lang/Throwable;
    :try_start_0
    const-string v37, "GallerySyncAdapterImpl"

    const-string v38, "onPerformMiCloudSync start, extras: %s"

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v36

    :goto_1
    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Lcom/miui/gallery/cloud/CloudUtils;->checkAccount(Landroid/app/Activity;ZLjava/lang/Runnable;)Z

    move-result v14

    .line 105
    .local v14, "ret":Z
    if-nez v14, :cond_9

    .line 106
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "check account failed, return."

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    if-eqz v34, :cond_1

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_1
    if-eqz v31, :cond_2

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_8

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_3

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_3

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 451
    if-eqz v11, :cond_4

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_5
    :goto_2
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    .line 464
    .end local v14    # "ret":Z
    :goto_3
    return-void

    .line 85
    .end local v8    # "isPush":Z
    .end local v11    # "needResyncFaceDataLaterForBaby":Z
    .end local v13    # "result":Z
    .end local v16    # "startTime":J
    .end local v31    # "syncThrowable":Ljava/lang/Throwable;
    .end local v34    # "wifiLock":Landroid/net/wifi/WifiManager$WifiLock;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 101
    .restart local v8    # "isPush":Z
    .restart local v11    # "needResyncFaceDataLaterForBaby":Z
    .restart local v13    # "result":Z
    .restart local v16    # "startTime":J
    .restart local v31    # "syncThrowable":Ljava/lang/Throwable;
    .restart local v34    # "wifiLock":Landroid/net/wifi/WifiManager$WifiLock;
    :cond_7
    :try_start_1
    const-string v36, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 458
    .restart local v14    # "ret":Z
    :cond_8
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_2

    .line 110
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->start()V

    .line 112
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->setCancelledForAllBackground(Z)V

    .line 113
    const/16 v36, 0x0

    sput-boolean v36, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->sNeedSyncUserNames:Z

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 118
    .local v35, "wm":Landroid/net/wifi/WifiManager;
    const/16 v36, 0x3

    const-string v37, "GallerySyncAdapterImpl"

    invoke-virtual/range {v35 .. v37}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v34

    .line 119
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 121
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/net/ParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 122
    const/4 v13, 0x0

    .line 422
    if-eqz v34, :cond_a

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_a
    if-eqz v31, :cond_b

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_f

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_c

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_c

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_e

    .line 451
    if-eqz v11, :cond_d

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_e
    :goto_4
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_f
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_4

    .line 126
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 127
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 128
    :cond_11
    const-string v38, "GallerySyncAdapterImpl"

    const-string v39, "account: %s, name: %s, type %s, have none value, return."

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    if-nez v36, :cond_17

    const-string v36, ""

    move-object/from16 v37, v36

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    if-nez v36, :cond_18

    const-string v36, ""

    :goto_6
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v37

    move-object/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/net/ParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 422
    if-eqz v34, :cond_12

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_12
    if-eqz v31, :cond_13

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_19

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_14

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_14

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_16

    .line 451
    if-eqz v11, :cond_15

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_16
    :goto_7
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 128
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v37, v36

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/net/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 458
    :cond_19
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_7

    .line 132
    :cond_1a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->resetAccountInfo(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->insertAccountToDB(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 137
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->checkMiCloudServerException()V

    .line 140
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    .line 141
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncConditionManager.check PRI_SERVER_TAG Exit"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/net/ParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    const/4 v13, 0x0

    .line 422
    if-eqz v34, :cond_1b

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_1b
    if-eqz v31, :cond_1c

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_20

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_1d

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_1d

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_1f

    .line 451
    if-eqz v11, :cond_1e

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_1f
    :goto_8
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_20
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_8

    .line 146
    :cond_21
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->fetchSyncExtraInfoFromV2ToV3()Z

    move-result v36

    if-nez v36, :cond_28

    .line 147
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "fetchSyncExtraInfoFromV2ToV3 Exit"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/net/ParseException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 422
    if-eqz v34, :cond_22

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_22
    if-eqz v31, :cond_23

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_27

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_24

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_24

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_26

    .line 451
    if-eqz v11, :cond_25

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_26
    :goto_9
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_27
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_9

    .line 151
    :cond_28
    :try_start_7
    invoke-static {}, Lcom/miui/gallery/cloud/ClearDataManager;->getInstance()Lcom/miui/gallery/cloud/ClearDataManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Lcom/miui/gallery/cloud/ClearDataManager;->clearDataBaseIfNeeded(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 153
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v9

    .line 155
    .local v9, "isSpaceFullPreSync":Z
    if-eqz v8, :cond_54

    .line 156
    const-string/jumbo v36, "sync_tag_type"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 157
    .local v33, "type":I
    const-string/jumbo v36, "sync_tag_data"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "pushData":Ljava/lang/String;
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "request caused by push: %s, just start appointed sync."

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_3e

    .line 163
    invoke-static {}, Lcom/miui/gallery/cloud/control/ServerTagCache;->getInstance()Lcom/miui/gallery/cloud/control/ServerTagCache;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Lcom/miui/gallery/cloud/control/ServerTagCache;->contains(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2f

    .line 164
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "operation server tag, ignore push: %s"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/net/ParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 422
    if-eqz v34, :cond_29

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_29
    if-eqz v31, :cond_2a

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_2e

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_2b

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_2b

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_2d

    .line 451
    if-eqz v11, :cond_2c

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_2d
    :goto_a
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_2e
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_a

    .line 167
    :cond_2f
    :try_start_8
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerAlbum start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v22, Lcom/miui/gallery/cloud/SyncOwnerAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 169
    .local v22, "syncOwnerAlbum":Lcom/miui/gallery/cloud/SyncOwnerAlbum;
    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->sync()Z

    move-result v36

    if-nez v36, :cond_36

    .line 171
    const/4 v13, 0x0

    .line 173
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "isPush %s, sync owner album error, return"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    invoke-static/range {v36 .. v38}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/net/ParseException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 422
    if-eqz v34, :cond_30

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_30
    if-eqz v31, :cond_31

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_35

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_32

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_32

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_34

    .line 451
    if-eqz v11, :cond_33

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_34
    :goto_b
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_35
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_b

    .line 176
    :cond_36
    :try_start_9
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerAlbum end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerCloud start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v23, Lcom/miui/gallery/cloud/SyncOwnerAll;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncOwnerAll;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 180
    .local v23, "syncOwnerCloud":Lcom/miui/gallery/cloud/SyncOwnerCloud;
    invoke-virtual/range {v23 .. v23}, Lcom/miui/gallery/cloud/SyncOwnerCloud;->sync()Z

    move-result v36

    if-nez v36, :cond_37

    .line 182
    const/4 v13, 0x0

    .line 184
    :cond_37
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerCloud end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/miui/gallery/cloud/ClearDataManager;->getInstance()Lcom/miui/gallery/cloud/ClearDataManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/cloud/ClearDataManager;->checkClear(Landroid/content/Context;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/net/ParseException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v36

    if-eqz v36, :cond_4d

    .line 422
    if-eqz v34, :cond_38

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_38
    if-eqz v31, :cond_39

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_3d

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_3a

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_3a

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_3c

    .line 451
    if-eqz v11, :cond_3b

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_3c
    :goto_c
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_3d
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_c

    .line 188
    .end local v22    # "syncOwnerAlbum":Lcom/miui/gallery/cloud/SyncOwnerAlbum;
    .end local v23    # "syncOwnerCloud":Lcom/miui/gallery/cloud/SyncOwnerCloud;
    :cond_3e
    const/16 v36, 0xb

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_46

    .line 189
    :try_start_a
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncFaceData start from push"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isFaceAlbumFeatureOpen()Z

    move-result v36

    if-eqz v36, :cond_3f

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->doSync(Landroid/content/Context;)V

    .line 196
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->needResyncFaceDataLaterForBaby()Z

    move-result v11

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->syncFaceData()V

    .line 199
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncFaceData end from push"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/miui/gallery/cloud/ClearDataManager;->getInstance()Lcom/miui/gallery/cloud/ClearDataManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/cloud/ClearDataManager;->checkClear(Landroid/content/Context;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/net/ParseException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v36

    if-eqz v36, :cond_4d

    .line 422
    if-eqz v34, :cond_40

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_40
    if-eqz v31, :cond_41

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_45

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_42

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_42

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_44

    .line 451
    if-eqz v11, :cond_43

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_44
    :goto_d
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_45
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_d

    .line 203
    :cond_46
    :try_start_b
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v36

    if-eqz v36, :cond_4d

    .line 204
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerAll start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v28, Lcom/miui/gallery/cloud/SyncSharerAll;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/miui/gallery/cloud/SyncSharerAll;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Landroid/os/Bundle;)V

    .line 206
    .local v28, "syncSharerAll":Lcom/miui/gallery/cloud/SyncSharerAll;
    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/cloud/SyncSharerAll;->sync()Z

    .line 207
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerAll end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/miui/gallery/cloud/ClearDataManager;->getInstance()Lcom/miui/gallery/cloud/ClearDataManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/cloud/ClearDataManager;->checkClear(Landroid/content/Context;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/net/ParseException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v36

    if-eqz v36, :cond_4d

    .line 422
    if-eqz v34, :cond_47

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_47
    if-eqz v31, :cond_48

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_4c

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_49

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_49

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_4b

    .line 451
    if-eqz v11, :cond_4a

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_4b
    :goto_e
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_4c
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_e

    .line 422
    .end local v28    # "syncSharerAll":Lcom/miui/gallery/cloud/SyncSharerAll;
    :cond_4d
    if-eqz v34, :cond_4e

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_4e
    if-eqz v31, :cond_4f

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_53

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_50

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_50

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_52

    .line 451
    if-eqz v11, :cond_51

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_52
    :goto_f
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_53
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_f

    .line 215
    .end local v12    # "pushData":Ljava/lang/String;
    .end local v33    # "type":I
    :cond_54
    :try_start_c
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "request by others, start all the sync."

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->doSync(Landroid/content/Context;)V

    .line 224
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerAlbum start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v22, Lcom/miui/gallery/cloud/SyncOwnerAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 226
    .restart local v22    # "syncOwnerAlbum":Lcom/miui/gallery/cloud/SyncOwnerAlbum;
    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/cloud/SyncOwnerAlbum;->sync()Z

    move-result v36

    if-nez v36, :cond_5b

    .line 228
    const/4 v13, 0x0

    .line 230
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "isPush %s, sync owner album error, return"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    invoke-static/range {v36 .. v38}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/net/ParseException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 422
    if-eqz v34, :cond_55

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_55
    if-eqz v31, :cond_56

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_5a

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_57

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_57

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_59

    .line 451
    if-eqz v11, :cond_58

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_59
    :goto_10
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_5a
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_10

    .line 233
    :cond_5b
    :try_start_d
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerAlbum end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerCloud start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v23, Lcom/miui/gallery/cloud/SyncOwnerAll;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncOwnerAll;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 237
    .local v23, "syncOwnerCloud":Lcom/miui/gallery/cloud/SyncOwnerAll;
    const/4 v10, 0x0

    .line 238
    .local v10, "needFetchAllPrivateData":Z
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v36

    if-eqz v36, :cond_5c

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncFetchAllPrivateData()Z

    move-result v36

    if-nez v36, :cond_5c

    .line 239
    invoke-virtual/range {v23 .. v23}, Lcom/miui/gallery/cloud/SyncOwnerAll;->hasStarted()Z

    move-result v36

    if-eqz v36, :cond_65

    .line 240
    const/4 v10, 0x1

    .line 245
    :cond_5c
    :goto_11
    invoke-virtual/range {v23 .. v23}, Lcom/miui/gallery/cloud/SyncOwnerAll;->sync()Z

    move-result v36

    if-nez v36, :cond_5d

    .line 247
    const/4 v13, 0x0

    .line 250
    :cond_5d
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerCloud end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v36

    if-eqz v36, :cond_5e

    if-eqz v10, :cond_5e

    .line 252
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerPrivate start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v25, Lcom/miui/gallery/cloud/SyncOwnerPrivate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncOwnerPrivate;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 254
    .local v25, "syncOwnerPrivate":Lcom/miui/gallery/cloud/SyncOwnerPrivate;
    invoke-virtual/range {v25 .. v25}, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->sync()Z

    .line 255
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerPrivate ends"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncFetchAllPrivateData()V

    .line 259
    .end local v25    # "syncOwnerPrivate":Lcom/miui/gallery/cloud/SyncOwnerPrivate;
    :cond_5e
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isStoryAlbumFeatureOpen()Z

    move-result v36

    if-eqz v36, :cond_5f

    .line 260
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "Sync Story Card from Server start by sync"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v18, Lcom/miui/gallery/cloud/card/SyncCardFromServer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;-><init>(Landroid/accounts/Account;)V

    .line 262
    .local v18, "syncCardFromServer":Lcom/miui/gallery/cloud/card/SyncCardFromServer;
    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->sync()V

    .line 263
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "Sync Story Card from Server end by sync"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v18    # "syncCardFromServer":Lcom/miui/gallery/cloud/card/SyncCardFromServer;
    :cond_5f
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncFaceData start by sync"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->needResyncFaceDataLaterForBaby()Z

    move-result v11

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->syncFaceData()V

    .line 269
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncFaceData end by sync"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/miui/gallery/cloud/ClearDataManager;->getInstance()Lcom/miui/gallery/cloud/ClearDataManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/cloud/ClearDataManager;->checkClear(Landroid/content/Context;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Landroid/net/ParseException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v36

    if-eqz v36, :cond_6c

    .line 422
    if-eqz v34, :cond_60

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_60
    if-eqz v31, :cond_61

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_6b

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_62

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_62

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_64

    .line 451
    if-eqz v11, :cond_63

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_64
    :goto_12
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 242
    :cond_65
    :try_start_e
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncFetchAllPrivateData()V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/net/ParseException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_11

    .line 385
    .end local v9    # "isSpaceFullPreSync":Z
    .end local v10    # "needFetchAllPrivateData":Z
    .end local v14    # "ret":Z
    .end local v22    # "syncOwnerAlbum":Lcom/miui/gallery/cloud/SyncOwnerAlbum;
    .end local v23    # "syncOwnerCloud":Lcom/miui/gallery/cloud/SyncOwnerAll;
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v6

    .line 386
    .local v6, "e":Lorg/json/JSONException;
    :try_start_f
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mSyncResult:Landroid/content/SyncResult;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 388
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_66

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_66
    if-eqz v31, :cond_67

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_9e

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_68

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_68

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_6a

    .line 451
    if-eqz v11, :cond_69

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_6a
    :goto_13
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v9    # "isSpaceFullPreSync":Z
    .restart local v10    # "needFetchAllPrivateData":Z
    .restart local v14    # "ret":Z
    .restart local v22    # "syncOwnerAlbum":Lcom/miui/gallery/cloud/SyncOwnerAlbum;
    .restart local v23    # "syncOwnerCloud":Lcom/miui/gallery/cloud/SyncOwnerAll;
    .restart local v35    # "wm":Landroid/net/wifi/WifiManager;
    :cond_6b
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_12

    .line 275
    :cond_6c
    :try_start_10
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v36

    if-eqz v36, :cond_7a

    .line 276
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Landroid/net/ParseException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_73

    .line 277
    const/4 v13, 0x0

    .line 422
    if-eqz v34, :cond_6d

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_6d
    if-eqz v31, :cond_6e

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_72

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_6f

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_6f

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_71

    .line 451
    if-eqz v11, :cond_70

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_71
    :goto_14
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_72
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_14

    .line 281
    :cond_73
    :try_start_11
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerAll start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v28, Lcom/miui/gallery/cloud/SyncSharerAll;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/cloud/SyncSharerAll;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Landroid/os/Bundle;)V

    .line 284
    .restart local v28    # "syncSharerAll":Lcom/miui/gallery/cloud/SyncSharerAll;
    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/cloud/SyncSharerAll;->sync()Z

    .line 285
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerAll end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/miui/gallery/cloud/ClearDataManager;->getInstance()Lcom/miui/gallery/cloud/ClearDataManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/cloud/ClearDataManager;->checkClear(Landroid/content/Context;)Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v36

    if-eqz v36, :cond_7a

    .line 422
    if-eqz v34, :cond_74

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_74
    if-eqz v31, :cond_75

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_79

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_76

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_76

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_78

    .line 451
    if-eqz v11, :cond_77

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_78
    :goto_15
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_79
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_15

    .line 293
    .end local v28    # "syncSharerAll":Lcom/miui/gallery/cloud/SyncSharerAll;
    :cond_7a
    const/16 v36, 0x0

    :try_start_12
    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    .line 294
    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/GalleryUtils;->sIsStorageReady(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_82

    .line 295
    :cond_7b
    const/4 v13, 0x0

    .line 296
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncConditionManager.check owner PRI_INSTANT Exit"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Landroid/net/ParseException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 422
    if-eqz v34, :cond_7c

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_7c
    if-eqz v31, :cond_7d

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_81

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_7e

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_7e

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_80

    .line 451
    if-eqz v11, :cond_7f

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_80
    :goto_16
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_81
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_16

    .line 300
    :cond_82
    :try_start_13
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerFromLocal start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v24, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V

    .line 303
    .local v24, "syncOwnerFromLocal":Lcom/miui/gallery/cloud/SyncOwnerFromLocal;
    invoke-virtual/range {v24 .. v24}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->sync()V

    .line 304
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerFromLocal end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerSubUbiFromLocal start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v26, Lcom/miui/gallery/cloud/SyncOwnerSubUbiFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/cloud/SyncOwnerSubUbiFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V

    .line 309
    .local v26, "syncOwnerSubUbiFromLocal":Lcom/miui/gallery/cloud/SyncOwnerSubUbiFromLocal;
    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/cloud/SyncOwnerSubUbiFromLocal;->sync()V

    .line 310
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncOwnerSubUbiFromLocal end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v36

    if-eqz v36, :cond_93

    .line 314
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_83

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    .line 315
    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/GalleryUtils;->sIsStorageReady(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_8a

    .line 316
    :cond_83
    const/4 v13, 0x0

    .line 317
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncConditionManager.check share PRI_INSTANT Exit"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Landroid/net/ParseException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 422
    if-eqz v34, :cond_84

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_84
    if-eqz v31, :cond_85

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_89

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_86

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_86

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_88

    .line 451
    if-eqz v11, :cond_87

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_88
    :goto_17
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_89
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_17

    .line 321
    :cond_8a
    :try_start_14
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncShareAlbumFromLocal starts"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v27, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 324
    .local v27, "syncShareAlbumFromLocal":Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;
    invoke-virtual/range {v27 .. v27}, Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;->sync()V

    .line 325
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncShareAlbumFromLocal ends"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerFromLocal start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v29, Lcom/miui/gallery/cloud/SyncSharerFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncSharerFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 330
    .local v29, "syncSharerFromLocal":Lcom/miui/gallery/cloud/SyncSharerFromLocal;
    invoke-virtual/range {v29 .. v29}, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->sync()V

    .line 331
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerFromLocal end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerSubUbiFromLocal start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v30, Lcom/miui/gallery/cloud/SyncSharerSubUbiFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/SyncSharerSubUbiFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 336
    .local v30, "syncSharerSubUbiFromLocal":Lcom/miui/gallery/cloud/SyncSharerSubUbiFromLocal;
    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/cloud/SyncSharerSubUbiFromLocal;->sync()V

    .line 337
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncSharerSubUbiFromLocal end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    .line 342
    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/GalleryUtils;->sIsStorageReady(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_92

    .line 343
    :cond_8b
    const/4 v13, 0x0

    .line 344
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncConditionManager.check users PRI_INSTANT Exit"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Landroid/net/ParseException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 422
    if-eqz v34, :cond_8c

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_8c
    if-eqz v31, :cond_8d

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_91

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_8e

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_8e

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_90

    .line 451
    if-eqz v11, :cond_8f

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_90
    :goto_18
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_91
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_18

    .line 348
    :cond_92
    :try_start_15
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncUserNames start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/miui/gallery/cloud/AlbumShareOperations;->syncAllUserInfoFromNetwork()Lcom/miui/gallery/util/AsyncResult;

    .line 350
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncUserNames end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v27    # "syncShareAlbumFromLocal":Lcom/miui/gallery/cloud/SyncShareAlbumFromLocal;
    .end local v29    # "syncSharerFromLocal":Lcom/miui/gallery/cloud/SyncSharerFromLocal;
    .end local v30    # "syncSharerSubUbiFromLocal":Lcom/miui/gallery/cloud/SyncSharerSubUbiFromLocal;
    :cond_93
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isStoryAlbumFeatureOpen()Z

    move-result v36

    if-eqz v36, :cond_94

    .line 354
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "Sync Story Card to server start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v19, Lcom/miui/gallery/cloud/card/SyncCardToServer;

    invoke-direct/range {v19 .. v19}, Lcom/miui/gallery/cloud/card/SyncCardToServer;-><init>()V

    .line 356
    .local v19, "syncCardToServer":Lcom/miui/gallery/cloud/card/SyncCardToServer;
    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->sync()V

    .line 357
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "Sync Story Card to server end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v19    # "syncCardToServer":Lcom/miui/gallery/cloud/card/SyncCardToServer;
    :cond_94
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v36

    if-eqz v36, :cond_95

    .line 361
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncFaceFromLocal start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v20, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 363
    .local v20, "syncFaceFromLocal":Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->sync()V

    .line 364
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncFaceFromLocal end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v20    # "syncFaceFromLocal":Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;
    :cond_95
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isBabyAlbumFeatureOpen()Z

    move-result v36

    if-eqz v36, :cond_96

    .line 368
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncBabyInfoFromLocal start"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v15, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mExtToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v15, v0, v1, v2}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 371
    .local v15, "syncBabyInfoFromLocal":Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;
    invoke-virtual {v15}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->sync()V

    .line 372
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "SyncBabyInfoFromLocal end"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v15    # "syncBabyInfoFromLocal":Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;
    :cond_96
    invoke-static {}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->resumeInterrupted()I

    .line 379
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncRetryTimes(I)V

    .line 381
    if-eqz v9, :cond_97

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->statSpaceStatus()V

    .line 384
    :cond_97
    const-string v36, "GallerySyncAdapterImpl"

    const-string v37, "onPerformMiCloudSync end."

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Landroid/net/ParseException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 422
    if-eqz v34, :cond_98

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_98
    if-eqz v31, :cond_99

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_9d

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_9a

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_9a

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_9c

    .line 451
    if-eqz v11, :cond_9b

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_9c
    :goto_19
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_9d
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_19

    .end local v9    # "isSpaceFullPreSync":Z
    .end local v10    # "needFetchAllPrivateData":Z
    .end local v14    # "ret":Z
    .end local v22    # "syncOwnerAlbum":Lcom/miui/gallery/cloud/SyncOwnerAlbum;
    .end local v23    # "syncOwnerCloud":Lcom/miui/gallery/cloud/SyncOwnerAll;
    .end local v24    # "syncOwnerFromLocal":Lcom/miui/gallery/cloud/SyncOwnerFromLocal;
    .end local v26    # "syncOwnerSubUbiFromLocal":Lcom/miui/gallery/cloud/SyncOwnerSubUbiFromLocal;
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v6    # "e":Lorg/json/JSONException;
    :cond_9e
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_13

    .line 389
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 390
    .local v6, "e":Ljava/net/URISyntaxException;
    :try_start_16
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mSyncResult:Landroid/content/SyncResult;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 392
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_9f

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_9f
    if-eqz v31, :cond_a0

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_a4

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_a1

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_a1

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_a3

    .line 451
    if-eqz v11, :cond_a2

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_a3
    :goto_1a
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_a4
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_1a

    .line 393
    .end local v6    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v6

    .line 394
    .local v6, "e":Landroid/accounts/OperationCanceledException;
    :try_start_17
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 395
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_a5

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_a5
    if-eqz v31, :cond_a6

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_aa

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_a7

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_a7

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_a9

    .line 451
    if-eqz v11, :cond_a8

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_a9
    :goto_1b
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_aa
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_1b

    .line 396
    .end local v6    # "e":Landroid/accounts/OperationCanceledException;
    :catch_3
    move-exception v6

    .line 397
    .local v6, "e":Ljava/io/IOException;
    :try_start_18
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mSyncResult:Landroid/content/SyncResult;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 399
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_ab

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_ab
    if-eqz v31, :cond_ac

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_b0

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_ad

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_ad

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_af

    .line 451
    if-eqz v11, :cond_ae

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_af
    :goto_1c
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_b0
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_1c

    .line 400
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 401
    .local v6, "e":Landroid/net/ParseException;
    :try_start_19
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mSyncResult:Landroid/content/SyncResult;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 403
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_b1

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_b1
    if-eqz v31, :cond_b2

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_b6

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_b3

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_b3

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_b5

    .line 451
    if-eqz v11, :cond_b4

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_b5
    :goto_1d
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_b6
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_1d

    .line 404
    .end local v6    # "e":Landroid/net/ParseException;
    :catch_5
    move-exception v6

    .line 405
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1a
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mSyncResult:Landroid/content/SyncResult;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 407
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_b7

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_b7
    if-eqz v31, :cond_b8

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_bc

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_b9

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_b9

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_bb

    .line 451
    if-eqz v11, :cond_ba

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_bb
    :goto_1e
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_bc
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_1e

    .line 408
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v6

    .line 409
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_1b
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 410
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_bd

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_bd
    if-eqz v31, :cond_be

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_c2

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_bf

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_bf

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_c1

    .line 451
    if-eqz v11, :cond_c0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_c1
    :goto_1f
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_c2
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_1f

    .line 411
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v6

    .line 413
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1c
    instance-of v0, v6, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    move/from16 v36, v0

    if-eqz v36, :cond_c8

    .line 414
    move-object v0, v6

    check-cast v0, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v31

    .line 415
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    check-cast v6, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    .end local v6    # "e":Ljava/lang/Exception;
    throw v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 422
    :catchall_0
    move-exception v36

    if-eqz v34, :cond_c3

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_c3
    if-eqz v31, :cond_c4

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v37, "GallerySyncAdapterImpl"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "perform sync finished, time:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v16

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 434
    invoke-static/range {v37 .. v38}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_cf

    .line 441
    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_c5

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v37

    if-nez v37, :cond_c5

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v37

    if-nez v37, :cond_c7

    .line 451
    if-eqz v11, :cond_c6

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_c7
    :goto_20
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    throw v36

    .line 418
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_c8
    :try_start_1d
    const-string v36, "GallerySyncAdapterImpl"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 419
    move-object/from16 v31, v6

    .line 422
    if-eqz v34, :cond_c9

    .line 423
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 424
    const/16 v34, 0x0

    .line 427
    :cond_c9
    if-eqz v31, :cond_ca

    .line 428
    invoke-static/range {v31 .. v31}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncThrowable(Ljava/lang/Throwable;)V

    .line 429
    const/4 v13, 0x0

    .line 432
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/provider/GalleryDBHelper;->analyze()V

    .line 434
    const-string v36, "GallerySyncAdapterImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "perform sync finished, time:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v16

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 434
    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 440
    if-eqz v13, :cond_ce

    .line 441
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    .line 442
    if-nez v8, :cond_cb

    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v36

    if-nez v36, :cond_cb

    .line 443
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sSetFirstSynced()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->doPostFirstSyncJob()V

    .line 450
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sHaveCheckBabyForNewService(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_cd

    .line 451
    if-eqz v11, :cond_cc

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mAccount:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->try2updatePeopleFace2getBaby(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 454
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/util/deprecated/Preference;->sSetHaveCheckBabyForNewService(Landroid/content/Context;)V

    .line 460
    :cond_cd
    :goto_21
    invoke-static {}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountAfterSyncIfNeeded()V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->recordSyncError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 458
    :cond_ce
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto :goto_21

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_cf
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_20
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 525
    invoke-static {v0}, Lcom/miui/gallery/cloud/SyncConditionManager;->setCancelledForAllBackground(Z)V

    .line 526
    invoke-static {v0, v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->cancelAllBackgroundPriority(ZZ)V

    .line 527
    return-void
.end method
