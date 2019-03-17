.class public Lcom/xiaomi/scanner/module/BusinessCardModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "BusinessCardModule.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BusinessCardModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/BusinessCardModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 0
    .param p1, "appController"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 40
    iput p2, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleId:I

    .line 41
    return-void
.end method

.method private deleteCropImage()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Lcom/xiaomi/scanner/util/DeleteFileTask;

    invoke-direct {v1, v0}, Lcom/xiaomi/scanner/util/DeleteFileTask;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void
.end method

.method private executeMainTask(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isCropped"    # Z

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/xiaomi/scanner/module/BusinessCardModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "executeMainTask fail null path"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-nez p2, :cond_2

    .line 87
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/BusinessCardModule;->requestCropImage(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/scanner/module/BusinessCardModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method private requestCropImage(Ljava/lang/String;)V
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "cropResultPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v6, v5

    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/scanner/module/BusinessCardModule;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v7

    .line 174
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 175
    const-string v0, "business_card_crop_view_show"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->trackBCEvent(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    const v0, 0x7f070052

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 179
    :cond_0
    return-void
.end method

.method private trackBCEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isOnlyBusinessCardScan()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackBCEvent(ZLjava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 113
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 115
    :sswitch_0
    aget-object v3, p1, v6

    instance-of v3, v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 118
    aget-object v0, p1, v6

    check-cast v0, Landroid/graphics/Bitmap;

    .line 119
    .local v0, "data":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    invoke-virtual {v2, v0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->getCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 121
    .end local v0    # "data":Landroid/graphics/Bitmap;
    :sswitch_1
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->isTaskCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 127
    .end local v1    # "filePath":Ljava/lang/String;
    :sswitch_2
    const-string v2, "business_card_req_server"

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/BusinessCardModule;->trackBCEvent(Ljava/lang/String;)V

    .line 128
    aget-object v2, p1, v5

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/xiaomi/scanner/util/HttpUtils;->syncBusinessFromServer(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public executeOnPostExecute(ILjava/lang/Object;)V
    .locals 4
    .param p1, "workType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 135
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->isTaskCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/BusinessCardModule;->cancelWorkTask(Z)V

    .line 157
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 139
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v0, p2

    .line 147
    check-cast v0, Landroid/graphics/Bitmap;

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->showImageAndLoading(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->clearTask()V

    .line 150
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaomi/scanner/module/BusinessCardModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/BusinessCardModule;->cancelWorkTask(Z)V

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->deleteCropImage()V

    goto :goto_0

    .line 141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    check-cast p2, Ljava/util/List;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->showBusinessResult(Ljava/util/List;)V

    .line 144
    :cond_3
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/BusinessCardModule;->cancelWorkTask(Z)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 46
    new-instance v0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    .line 47
    const-string v0, "business_card_tab_click"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->trackBCEvent(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public isZoomNeeded()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 72
    .local v1, "isCropped":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "filePath":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/module/BusinessCardModule;->executeMainTask(Ljava/lang/String;Z)V

    .line 74
    if-eqz v1, :cond_0

    .line 75
    const-string v2, "business_card_crop_confirm_click"

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/BusinessCardModule;->trackBCEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "isCropped":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 72
    .restart local v1    # "isCropped":Z
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->onDestroy()V

    .line 202
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mModuleUI:Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->onPause()V

    .line 194
    :cond_0
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/scanner/module/BusinessCardModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/scanner/module/BusinessCardModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onShutterButtonClick()V

    .line 108
    const-string v0, "business_card_take_photo"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->trackBCEvent(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public selectPhotoClick()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->selectPhotoClick()V

    .line 207
    const-string v0, "business_card_select_photo"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/BusinessCardModule;->trackBCEvent(Ljava/lang/String;)V

    .line 208
    return-void
.end method
