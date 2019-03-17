.class public Lcom/xiaomi/scanner/module/PlantModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "PlantModule.java"


# instance fields
.field private mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

.field private progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "moduleId"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 33
    iput p1, p0, Lcom/xiaomi/scanner/module/PlantModule;->mModuleId:I

    .line 34
    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->dismiss()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    .line 143
    :cond_0
    return-void
.end method

.method private showPlantView(Lcom/xiaomi/scanner/bean/PlantResult;)V
    .locals 2
    .param p1, "object"    # Lcom/xiaomi/scanner/bean/PlantResult;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/scanner/bean/PlantResult;->resultPage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/PlantResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "plant_result_success"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    iget-object v1, p1, Lcom/xiaomi/scanner/bean/PlantResult;->resultPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->showResult(Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "plant_result_fail"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 151
    const v0, 0x7f07008c

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelWorkTask(Z)V
    .locals 0
    .param p1, "resetPreview"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    .line 105
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/PlantModule;->dismissProgress()V

    .line 106
    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 81
    aget-object v3, p1, v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move-object v3, v4

    .line 99
    :goto_0
    return-object v3

    .line 83
    :sswitch_0
    aget-object v3, p1, v5

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 84
    .local v1, "data":[B
    if-nez v1, :cond_0

    move-object v3, v4

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/module/PlantModule;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation([B)I

    move-result v4

    invoke-static {v3, v1, v5, v4, v6}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Landroid/content/Context;[BIIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 89
    .end local v1    # "data":[B
    :sswitch_1
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/PlantModule;->isTaskCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v6}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 95
    .end local v2    # "filePath":Ljava/lang/String;
    :sswitch_2
    aget-object v0, p1, v5

    check-cast v0, Landroid/graphics/Bitmap;

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/xiaomi/scanner/util/PictureDecoder;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/xiaomi/scanner/util/HttpUtils;->syncIdentifyPlantFromServer(Landroid/graphics/Bitmap;)Lcom/xiaomi/scanner/bean/PlantResult;

    move-result-object v3

    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public executeOnPostExecute(ILjava/lang/Object;)V
    .locals 5
    .param p1, "workType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 110
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/PlantModule;->isTaskCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/PlantModule;->cancelWorkTask(Z)V

    .line 136
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 115
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 122
    iget-object v2, p0, Lcom/xiaomi/scanner/module/PlantModule;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/xiaomi/scanner/module/PlantModule;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->cancel()V

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/module/PlantModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v3, 0x7f0200d3

    const v4, 0x7f07008d

    invoke-static {v2, v3, v4}, Lcom/xiaomi/scanner/dialog/CustomProgressDialog;->showProgress(Landroid/app/Activity;II)Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/PlantModule;->progressDialog:Lcom/xiaomi/scanner/dialog/CustomProgressDialog;

    move-object v0, p2

    .line 126
    check-cast v0, Landroid/graphics/Bitmap;

    .line 127
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/PlantModule;->clearTask()V

    .line 128
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/xiaomi/scanner/module/PlantModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/PlantModule;->cancelWorkTask(Z)V

    goto :goto_0

    .line 117
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/PlantModule;->dismissProgress()V

    .line 118
    check-cast p2, Lcom/xiaomi/scanner/bean/PlantResult;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/module/PlantModule;->showPlantView(Lcom/xiaomi/scanner/bean/PlantResult;)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/PlantModule;->cancelWorkTask(Z)V

    goto :goto_0

    .line 131
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    const-string v1, "select_image"

    .line 132
    .local v1, "type":Ljava/lang/String;
    :goto_1
    const-string v2, "plant_req"

    invoke-static {v2, v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1    # "type":Ljava/lang/String;
    :cond_4
    const-string v1, "take_photo"

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 39
    new-instance v0, Lcom/xiaomi/scanner/ui/PlantModuleUI;

    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/ui/PlantModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    .line 40
    const-string v0, "plant_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 45
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 46
    if-ne p1, v3, :cond_0

    .line 47
    const-string v1, "plant_album_cancel"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "filePath":Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaomi/scanner/module/PlantModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/PlantModule;->cancelWorkTask(Z)V

    .line 57
    :cond_2
    const-string v1, "plant_album_confirm"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 168
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
    .line 157
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaomi/scanner/module/PlantModule;->mUI:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->onDestroy()V

    .line 161
    :cond_0
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 2
    .param p1, "originalJpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/scanner/module/PlantModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/PlantModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method public selectPhotoClick()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->selectPhotoClick()V

    .line 65
    const-string v0, "plant_album_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 66
    return-void
.end method
