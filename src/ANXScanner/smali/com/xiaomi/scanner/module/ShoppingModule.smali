.class public Lcom/xiaomi/scanner/module/ShoppingModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "ShoppingModule.java"


# static fields
.field private static final MSG_UPLOAD_END:I = 0x17

.field private static final MSG_UPLOAD_ERROR:I = 0x16

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAppUi:Lcom/xiaomi/scanner/app/AppUI;

.field private mCacheTempImageFile:Ljava/lang/String;

.field private mIsPause:Z

.field mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ShoppingModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 1
    .param p1, "app"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 188
    new-instance v0, Lcom/xiaomi/scanner/module/ShoppingModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/ShoppingModule$1;-><init>(Lcom/xiaomi/scanner/module/ShoppingModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 42
    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    .line 43
    iput p2, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mModuleId:I

    .line 44
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/ShoppingModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/ShoppingModule;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mIsPause:Z

    return v0
.end method

.method private deleteCapturedFile()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/xiaomi/scanner/util/DeleteFileTask;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mCacheTempImageFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/util/DeleteFileTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mCacheTempImageFile:Ljava/lang/String;

    .line 186
    return-void
.end method

.method private getSavePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_0

    .line 205
    sget-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null mActivity"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected cancelWorkTask(Z)V
    .locals 1
    .param p1, "resetPreview"    # Z

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    .line 166
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 167
    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 145
    :pswitch_0
    sget-object v2, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    .line 127
    :pswitch_1
    aget-object v2, p1, v4

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 128
    .local v0, "data":[B
    if-nez v0, :cond_1

    .line 129
    sget-object v2, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "null data"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 132
    :cond_1
    const-string v2, "shopping_server_req"

    const-string v3, "take_photo"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isImageNeedRotate()Z

    move-result v3

    const-string v4, "Temp"

    invoke-static {v2, v0, v3, v4}, Lcom/xiaomi/scanner/util/PictureDecoder;->saveJpeg(Ljava/lang/String;[BZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mCacheTempImageFile:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mCacheTempImageFile:Ljava/lang/String;

    goto :goto_0

    .line 137
    .end local v0    # "data":[B
    :pswitch_2
    const-string v2, "shopping_server_req"

    const-string v3, "select_image"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    aget-object v2, p1, v4

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isImageNeedRotate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/xiaomi/scanner/util/PictureDecoder;->rectifyBitmap(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mCacheTempImageFile:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mCacheTempImageFile:Ljava/lang/String;

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 153
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/ShoppingModule;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 154
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop this search, object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/ShoppingModule;->clearTask()V

    .line 156
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/ShoppingModule;->clearTask()V

    .line 160
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/PailitaoManager;->searchImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v1, 0x7f0700a5

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/ShoppingModule;->initShoppingSdk()V

    .line 51
    const-string v0, "shopping_tab_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mIsPause:Z

    return v0
.end method

.method public isSdkReady()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/xiaomi/scanner/module/PailitaoManager;->isReady()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 118
    sget-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: unexpected request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/scanner/module/ShoppingModule;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/scanner/module/ShoppingModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v1, 0x7f0700a4

    const v2, 0x7f0700a6

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/ShoppingModule;->cancelWorkTask(Z)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 90
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/ShoppingModule;->deleteCapturedFile()V

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mIsPause:Z

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/ShoppingModule;->cancelWorkTask(Z)V

    .line 79
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/scanner/module/ShoppingModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v2, 0x7f0700a4

    const v3, 0x7f0700a6

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/ShoppingModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/ShoppingModule;->mIsPause:Z

    .line 73
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/xiaomi/scanner/module/ShoppingModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    return-void
.end method
