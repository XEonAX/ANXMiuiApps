.class public Lcom/miui/screenrecorder/service/RecorderService;
.super Landroid/app/Service;
.source "RecorderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;,
        Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final FREQUENTLY_RECORD_TOAST:I = 0x2

.field public static final HIDE_HARD_KEY_WINDOW:I = 0x1

.field private static final IS_START_IMMEDIATELY:Ljava/lang/String; = "is_start_immediately"

.field public static final START_FAIL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RecorderService"

.field private static final UPDATE_VIDEO_INFO:I = 0x3


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mClickTimer:Landroid/os/CountDownTimer;

.field private mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

.field private mCurrentBattery:I

.field private mHandler:Landroid/os/Handler;

.field private mIsSleep:Z

.field private mLocale:Ljava/util/Locale;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mRecorderWindowListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mCurrentBattery:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mIsSleep:Z

    .line 127
    new-instance v0, Lcom/miui/screenrecorder/service/RecorderService$1;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/service/RecorderService$1;-><init>(Lcom/miui/screenrecorder/service/RecorderService;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v0, Lcom/miui/screenrecorder/service/RecorderService$2;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/service/RecorderService$2;-><init>(Lcom/miui/screenrecorder/service/RecorderService;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mRecorderWindowListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    .line 455
    new-instance v0, Lcom/miui/screenrecorder/service/RecorderService$3;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/screenrecorder/service/RecorderService$3;-><init>(Lcom/miui/screenrecorder/service/RecorderService;JJ)V

    iput-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mClickTimer:Landroid/os/CountDownTimer;

    .line 479
    return-void
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mClickTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/screenrecorder/service/RecorderService;->updateVideoDetail(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/service/RecorderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->stopRecorder()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/service/RecorderService;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mCurrentBattery:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/screenrecorder/service/RecorderService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mCurrentBattery:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/service/RecorderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->stopRecorderWithoutThumbnail()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/screenrecorder/service/RecorderService;->sendUpdateVideoMessage(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/screenrecorder/service/RecorderService;->updateVideoDetailThread(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/service/RecorderService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/screenrecorder/service/RecorderService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mIsSleep:Z

    return p1
.end method

.method private createNotificationBuilderAboveSDK26()Landroid/app/Notification$Builder;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 401
    const-string v1, "110"

    .line 402
    .local v1, "channelId":Ljava/lang/String;
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v3, "screenrecorder"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 405
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 406
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/service/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 407
    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 410
    :cond_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    .line 411
    new-instance v2, Landroid/content/Intent;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/high16 v4, 0x7f080000

    .line 414
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/service/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f080001

    .line 415
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/service/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020016

    .line 416
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 417
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 418
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 419
    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    return-object v3
.end method

.method private createNotificationBuilderBelowSDK26()Landroid/app/Notification$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/service/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 424
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/high16 v2, 0x7f080000

    .line 428
    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/service/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f080001

    .line 429
    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/service/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f020016

    .line 430
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 431
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 432
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 433
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 434
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    return-object v1
.end method

.method private runAsForeground()V
    .locals 4

    .prologue
    .line 389
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->createNotificationBuilderAboveSDK26()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 394
    .local v0, "builder":Landroid/app/Notification$Builder;
    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 395
    .local v1, "notification":Landroid/app/Notification;
    const/16 v2, 0x6e

    invoke-virtual {p0, v2, v1}, Lcom/miui/screenrecorder/service/RecorderService;->startForeground(ILandroid/app/Notification;)V

    .line 396
    return-void

    .line 392
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->createNotificationBuilderBelowSDK26()Landroid/app/Notification$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    goto :goto_0
.end method

.method private sendUpdateVideoMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "newfilePath"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 469
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 470
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "display_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v2, "duration"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 474
    const-string v2, "file_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 476
    iget-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    return-void
.end method

.method private showThumbnailWindow(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {v0, p0, p1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    .local v0, "thumbnailWindow":Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;
    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->showWindow()V

    .line 315
    return-void
.end method

.method private stopRecorder()V
    .locals 2

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->stopRecorderWithoutThumbnail()V

    .line 439
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/service/RecorderService;->showThumbnailWindow(Ljava/lang/String;)V

    .line 443
    :cond_0
    return-void
.end method

.method private stopRecorderWithoutThumbnail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->setRecording(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->notifyViewChanged(IZ)V

    .line 452
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->stopRecorder()V

    goto :goto_0
.end method

.method private updateVideoDetail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 297
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "_display_name"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v6, "hermes"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 301
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_1

    .line 302
    const-string v6, "duration"

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    :cond_1
    const-string v5, "_data=?"

    .line 306
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p4, v2, v6

    .line 307
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, "result":I
    const-string v6, "RecorderService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVideoDetail duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s  displayName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u3000filePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  update result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVideoDetailThread(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 287
    new-instance v1, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;-><init>(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;Lcom/miui/screenrecorder/service/RecorderService$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 288
    invoke-virtual {v1, v0}, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 376
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iput-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mLocale:Ljava/util/Locale;

    .line 379
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/service/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f080001

    .line 381
    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/service/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 382
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x6e

    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 385
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    new-instance v2, Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;-><init>(Lcom/miui/screenrecorder/service/RecorderService;Lcom/miui/screenrecorder/service/RecorderService$1;)V

    iput-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->setRecording(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService;->mLocale:Ljava/util/Locale;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v2, "miui.screenrecorder.touch.mode.change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "miui.intent.SCREEN_RECORDER_TRACK_KEYEVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "miui.screenrecorder.touch.hardkey"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "miui.screenrecorder.record.sucess"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "miui.screenrecorder.record.fail"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/screenrecorder/service/RecorderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->runAsForeground()V

    .line 103
    invoke-static {}, Lcom/miui/screenrecorder/StableScreenRecorder;->getInstance()Lcom/miui/screenrecorder/StableScreenRecorder;

    move-result-object v1

    .line 105
    .local v1, "screenRecorder":Lcom/miui/screenrecorder/ScreenRecorder;
    new-instance v2, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v1, v3}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;-><init>(Landroid/content/Context;Lcom/miui/screenrecorder/ScreenRecorder;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService;->mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    .line 107
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService;->mRecorderWindowListener:Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->createRecorderSwitchWindow(Lcom/miui/screenrecorder/view/RecorderSwitchWindow$OnClickListener;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->removeRecorderSwitchWindow()V

    .line 364
    invoke-direct {p0}, Lcom/miui/screenrecorder/service/RecorderService;->stopRecorderWithoutThumbnail()V

    .line 365
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->onDestroy()V

    .line 366
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mClickTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 368
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/service/RecorderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 113
    if-nez p1, :cond_1

    .line 114
    const-string v1, "RecorderService"

    const-string v2, "intent is null, failed to init RecorderService"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    return v4

    .line 116
    :cond_1
    const-string v1, "is_start_immediately"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    .local v0, "isStartImmediately":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->setRecording(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->notifyViewChanged(IZ)V

    .line 121
    iget-object v1, p0, Lcom/miui/screenrecorder/service/RecorderService;->mController:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    iget v2, p0, Lcom/miui/screenrecorder/service/RecorderService;->mCurrentBattery:I

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->preStart(I)V

    goto :goto_0
.end method
