.class public Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiCameraCaptureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;
    }
.end annotation


# static fields
.field private static sLastPreloadTime:J

.field private static sPreloadBigPhotoRunnable:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;-><init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$1;)V

    sput-object v0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->sPreloadBigPhotoRunnable:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "broadcastAction":Ljava/lang/String;
    const-string v14, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 43
    const-string v14, "extra_file_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "filePath":Ljava/lang/String;
    const-string v14, "extra_media_store_id"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 45
    .local v12, "mediaStoreId":J
    const-string v14, "extra_is_temp_file"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 48
    .local v10, "isTempFile":Z
    invoke-static/range {p1 .. p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 50
    const-string v14, "extra_is_temp_file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 51
    if-eqz v10, :cond_3

    .line 52
    invoke-static {}, Lcom/miui/gallery/util/ProcessingMediaHelper;->getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;

    move-result-object v14

    invoke-virtual {v14, v12, v13, v5}, Lcom/miui/gallery/util/ProcessingMediaHelper;->addProcessingItem(JLjava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 58
    const-string v14, "MiuiCameraCaptureReceiver"

    const-string v15, "ACTION_SAVE_TO_CLOUD start, path: [%s] mediaId: [%d], temp: [%b]"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v5, v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v14

    new-instance v15, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v15, v0, v5, v1, v2}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$1;-><init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v14, v15}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 80
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v11

    .line 82
    .local v11, "mainHandler":Landroid/os/Handler;
    sget-object v14, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->sPreloadBigPhotoRunnable:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    invoke-virtual {v11, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    const-wide/16 v8, 0x0

    .line 85
    .local v8, "delayTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 86
    .local v6, "currentTime":J
    sget-wide v14, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->sLastPreloadTime:J

    sub-long v14, v6, v14

    const-wide/16 v16, 0x190

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    .line 87
    const-wide/16 v8, 0x190

    .line 89
    :cond_1
    sput-wide v6, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->sLastPreloadTime:J

    .line 90
    sget-object v14, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->sPreloadBigPhotoRunnable:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    invoke-virtual {v14, v5, v12, v13, v10}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->setData(Ljava/lang/String;JZ)V

    .line 91
    sget-object v14, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;->sPreloadBigPhotoRunnable:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    invoke-virtual {v11, v14, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "currentTime":J
    .end local v8    # "delayTime":J
    .end local v10    # "isTempFile":Z
    .end local v11    # "mainHandler":Landroid/os/Handler;
    .end local v12    # "mediaStoreId":J
    :cond_2
    :goto_1
    return-void

    .line 54
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v10    # "isTempFile":Z
    .restart local v12    # "mediaStoreId":J
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/ProcessingMediaHelper;->getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Lcom/miui/gallery/util/ProcessingMediaHelper;->removeProcessingItem(J)V

    goto :goto_0

    .line 93
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v10    # "isTempFile":Z
    .end local v12    # "mediaStoreId":J
    :cond_4
    const-string v14, "com.miui.gallery.DELETE_FROM_CLOUD"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 98
    const-string v14, "extra_file_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .restart local v5    # "filePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 100
    const-string v14, "MiuiCameraCaptureReceiver"

    const-string v15, "ACTION_DELETE_FROM_CLOUD start %s"

    invoke-static {v14, v15, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v14

    new-instance v15, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1, v5}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$2;-><init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_1
.end method
