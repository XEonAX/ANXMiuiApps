.class public Lcom/miui/gallery/scanner/MediaScannerService;
.super Lcom/miui/gallery/service/ServiceBase;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;,
        Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;,
        Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;,
        Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;
    }
.end annotation


# instance fields
.field private mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

.field private mMediaUnmountedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/service/ServiceBase;-><init>()V

    .line 492
    new-instance v0, Lcom/miui/gallery/scanner/MediaScannerService$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/scanner/MediaScannerService$2;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;)V

    iput-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mMediaUnmountedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/scanner/MediaScannerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/scanner/MediaScannerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScannerService;->recordStorageUnmounted()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/scanner/MediaScannerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/scanner/MediaScannerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScannerService;->recordMainSDCardUnwritable()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/scanner/MediaScannerService;)Lcom/miui/gallery/scanner/ScanTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/scanner/MediaScannerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    return-object v0
.end method

.method private recordMainSDCardUnwritable()V
    .locals 3

    .prologue
    .line 197
    const-string v0, "MediaScannerService"

    const-string v1, "Main SDCard is unwritable, skip cleanup"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "media_scanner"

    const-string v1, "main_sdcard_unwritable"

    .line 201
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v2

    .line 198
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    return-void
.end method

.method private recordStorageUnmounted()V
    .locals 3

    .prologue
    .line 188
    const-string v0, "MediaScannerService"

    const-string v1, "No external storage mounted, skip cleanup"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "media_scanner"

    const-string v1, "no_external_storage_mounted"

    .line 192
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v2

    .line 189
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    return-void
.end method


# virtual methods
.method protected getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/NotificationHelper;->getEmptyNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationId()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x8

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 67
    new-instance v1, Lcom/miui/gallery/scanner/MediaScannerService$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/scanner/MediaScannerService$1;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;)V

    .line 74
    .local v1, "listener":Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;
    new-instance v2, Lcom/miui/gallery/scanner/ScanTaskManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/miui/gallery/scanner/ScanTaskManager;-><init>(ILcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;)V

    iput-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mMediaUnmountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/scanner/MediaScannerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    const-string v2, "MediaScannerService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mMediaUnmountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/scanner/MediaScannerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/scanner/ScanTaskManager;->shutdown()V

    .line 209
    const-string v0, "MediaScannerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 33
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 86
    invoke-super/range {p0 .. p3}, Lcom/miui/gallery/service/ServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 88
    :cond_0
    const/4 v2, 0x2

    .line 184
    :goto_0
    return v2

    .line 90
    :cond_1
    const-string v2, "MediaScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v30, 0x0

    .line 92
    .local v30, "cacheKey":Ljava/lang/String;
    const-string v2, "scan_file_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "filePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 95
    .local v10, "filePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "scan_files_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const-string v2, "scan_files_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 97
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    invoke-static {}, Lcom/miui/gallery/util/GalleryDataCache;->getInstance()Lcom/miui/gallery/util/GalleryDataCache;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/miui/gallery/util/GalleryDataCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "filePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v10, Ljava/util/ArrayList;

    .line 102
    .restart local v10    # "filePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/16 v18, 0x0

    .line 103
    .local v18, "folderPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "scan_folder_paths"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    const-string v2, "scan_folder_paths"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 105
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    invoke-static {}, Lcom/miui/gallery/util/GalleryDataCache;->getInstance()Lcom/miui/gallery/util/GalleryDataCache;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/miui/gallery/util/GalleryDataCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "folderPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v18, Ljava/util/ArrayList;

    .line 110
    .restart local v18    # "folderPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v2, "scan_volume"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 111
    .local v32, "volume":Ljava/lang/String;
    const-string v2, "cleanup_by_album_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 112
    .local v29, "albumIdsToCleanup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "key_scan_priority"

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 116
    .local v5, "scanPriority":I
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v6

    .line 117
    .local v6, "foreground":Z
    const-string v2, "key_force_scan"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 119
    .local v7, "forceScan":Z
    const-string v2, "key_cancel_running"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelAll()V

    .line 123
    :cond_4
    const-string v2, "key_trigger_full_cleanup"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    new-instance v3, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;

    const/4 v8, 0x7

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v8}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;ZI)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/scanner/ScanTaskManager;->submit(Lcom/miui/gallery/scanner/ScanTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_5
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 133
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    new-instance v2, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFileTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/lang/String;IZZ)V

    invoke-virtual {v8, v2}, Lcom/miui/gallery/scanner/ScanTaskManager;->submit(Lcom/miui/gallery/scanner/ScanTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_6
    :goto_2
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 141
    :try_start_2
    const-string v2, "key_scan_type"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 142
    .local v13, "scanType":I
    const-string v2, "key_task_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 143
    .local v14, "taskStartTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    new-instance v8, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;

    move-object/from16 v9, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v15}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFilesTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZIJ)V

    invoke-virtual {v2, v8}, Lcom/miui/gallery/scanner/ScanTaskManager;->submit(Lcom/miui/gallery/scanner/ScanTask;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .end local v13    # "scanType":I
    .end local v14    # "taskStartTime":J
    :cond_7
    :goto_3
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    :try_start_3
    const-string v2, "key_bulk_notify"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 152
    .local v22, "bulkNotify":Z
    const-string v2, "key_recursive_scan"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 153
    .local v20, "recursiveScan":Z
    const/4 v2, 0x3

    if-ne v5, v2, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelByPriority(I)V

    .line 156
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    new-instance v16, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;

    move-object/from16 v17, p0

    move/from16 v19, v5

    move/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/miui/gallery/scanner/ScanTaskManager;->submit(Lcom/miui/gallery/scanner/ScanTask;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    .end local v20    # "recursiveScan":Z
    .end local v22    # "bulkNotify":Z
    :cond_9
    :goto_4
    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 164
    const/4 v2, 0x4

    if-ne v5, v2, :cond_a

    .line 165
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelByPriority(I)V

    .line 167
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    new-instance v3, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v3, v0, v6, v5, v1}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;ZILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/scanner/ScanTaskManager;->submit(Lcom/miui/gallery/scanner/ScanTask;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 173
    :cond_b
    :goto_5
    const-string v2, "external"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 174
    const-string v2, "MediaScannerService"

    const-string v3, "scan external volume"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/scanner/MediaScannerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v25

    .line 176
    .local v25, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v25 .. v25}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    new-instance v23, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;

    const/16 v27, 0x1

    move-object/from16 v24, p0

    move/from16 v26, v5

    move/from16 v28, v6

    invoke-direct/range {v23 .. v28}, Lcom/miui/gallery/scanner/MediaScannerService$ScanFoldersTask;-><init>(Lcom/miui/gallery/scanner/MediaScannerService;Ljava/util/List;IZZ)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/miui/gallery/scanner/ScanTaskManager;->submit(Lcom/miui/gallery/scanner/ScanTask;)V

    .line 184
    .end local v25    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :goto_6
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v31

    .line 127
    .local v31, "e":Ljava/lang/Exception;
    const-string v2, "MediaScannerService"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 134
    .end local v31    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v31

    .line 135
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v2, "MediaScannerService"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 144
    .end local v31    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v31

    .line 145
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v2, "MediaScannerService"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 157
    .end local v31    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v31

    .line 158
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v2, "MediaScannerService"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 168
    .end local v31    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v31

    .line 169
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v2, "MediaScannerService"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 179
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_d
    const-string v2, "internal"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 180
    const-string v2, "MediaScannerService"

    const-string v3, "Received a scan internal volume command, ignore it."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/miui/gallery/service/ServiceBase;->onTrimMemory(I)V

    .line 215
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 216
    const-string v0, "MediaScannerService"

    const-string v1, "TRIM_MEMORY_UI_HIDDEN"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScannerService;->mManager:Lcom/miui/gallery/scanner/ScanTaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelForegroundTask()V

    .line 219
    :cond_0
    return-void
.end method
