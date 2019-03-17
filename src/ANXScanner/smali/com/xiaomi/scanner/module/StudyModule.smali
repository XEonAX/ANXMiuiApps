.class public Lcom/xiaomi/scanner/module/StudyModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "StudyModule.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAppUi:Lcom/xiaomi/scanner/app/AppUI;

.field private mCapturedFile:Ljava/lang/String;

.field private mInitTime:J

.field private mIsPause:Z

.field mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mUI:Lcom/xiaomi/scanner/ui/StudyModuleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "StudyModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 1
    .param p1, "app"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 188
    new-instance v0, Lcom/xiaomi/scanner/module/StudyModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/StudyModule$1;-><init>(Lcom/xiaomi/scanner/module/StudyModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 36
    iput p2, p0, Lcom/xiaomi/scanner/module/StudyModule;->mModuleId:I

    .line 37
    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    .line 38
    return-void
.end method

.method private deleteCapturedFile()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/xiaomi/scanner/util/DeleteFileTask;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/StudyModule;->mCapturedFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/util/DeleteFileTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mCapturedFile:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private requestCropImage(Ljava/lang/String;)V
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 177
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/StudyModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "cropResultPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v6, v5

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/scanner/module/StudyModule;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v7

    .line 181
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "requestCropImage: null intent"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 165
    sget-object v1, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "searchImage: null path"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const-class v2, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "search_pic_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    iget-boolean v1, p0, Lcom/xiaomi/scanner/module/StudyModule;->mNeedFinishActivity:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelWorkTask(Z)V
    .locals 1
    .param p1, "resetPreview"    # Z

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    .line 155
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 156
    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 131
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, [B

    check-cast v1, [B

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/xiaomi/scanner/util/PictureDecoder;->saveJpeg(Ljava/lang/String;[BZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "jpegPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/StudyModule;->isTaskCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jpegPath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 136
    .end local v0    # "jpegPath":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 142
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/StudyModule;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop this data, object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/StudyModule;->clearTask()V

    .line 145
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/StudyModule;->clearTask()V

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/StudyModule;->requestCropImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 43
    new-instance v0, Lcom/xiaomi/scanner/ui/StudyModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleLayoutRoot()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/scanner/ui/StudyModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mUI:Lcom/xiaomi/scanner/ui/StudyModuleUI;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mInitTime:J

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mExtraShareImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mExtraShareImagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/StudyModule;->requestCropImage(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mNeedFinishActivity:Z

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "study_caller"

    const-string v2, "study_by_call_count"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/scanner/module/StudyModule;->recordExtraCount(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mIsPause:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/StudyModule;->deleteCapturedFile()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 110
    sget-object v1, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: unexpected request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "imgUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/StudyModule;->requestCropImage(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "imgUri":Landroid/net/Uri;
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/StudyModule;->deleteCapturedFile()V

    .line 107
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/StudyModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/StudyModule;->searchImage(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 71
    sget-object v0, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    const-string v0, "study_active_time"

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/scanner/module/StudyModule;->mInitTime:J

    sub-long/2addr v2, v4

    .line 72
    invoke-static {v0, v2, v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;J)V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mIsPause:Z

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/StudyModule;->cancelWorkTask(Z)V

    .line 67
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/module/StudyModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/xiaomi/scanner/module/StudyModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/xiaomi/scanner/module/StudyModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v3, 0x7f0700a8

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    :goto_1
    move v0, v1

    .line 126
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/StudyModule;->cancelWorkTask(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 55
    sget-object v0, Lcom/xiaomi/scanner/module/StudyModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mIsPause:Z

    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mUI:Lcom/xiaomi/scanner/ui/StudyModuleUI;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/module/StudyModule;->mUI:Lcom/xiaomi/scanner/ui/StudyModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/StudyModuleUI;->onResume()V

    .line 60
    :cond_0
    return-void
.end method
