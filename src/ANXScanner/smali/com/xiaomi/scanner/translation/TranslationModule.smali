.class public Lcom/xiaomi/scanner/translation/TranslationModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "TranslationModule.java"


# static fields
.field private static final DELAY_NEXT_PREVIEW_TIME:J = 0x1f4L

.field private static final DETECT_PREVIEW_INTERVAL_MS:J = 0x12cL

.field private static final MSG_DEFINITION_DONE:I = 0x2

.field private static final MSG_OCR_DONE:I = 0x1

.field private static final MSG_REQUEST_FRAME:I = 0x3

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mIsPause:Z

.field private mMainHandler:Landroid/os/Handler;

.field private final mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

.field private mSkipPreviewCallback:Z

.field private mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

.field private mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

.field private mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "TranslationModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 1
    .param p1, "app"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaomi/scanner/translation/TranslationModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/translation/TranslationModule$1;-><init>(Lcom/xiaomi/scanner/translation/TranslationModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    .line 83
    new-instance v0, Lcom/xiaomi/scanner/translation/TranslationModule$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/translation/TranslationModule$2;-><init>(Lcom/xiaomi/scanner/translation/TranslationModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    .line 43
    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 44
    iput p2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mModuleId:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/translation/TranslationModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mIsPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/translation/TranslationModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/TranslationModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    return-object v0
.end method

.method static synthetic access$400()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object v0
.end method


# virtual methods
.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 237
    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 253
    :pswitch_0
    sget-object v2, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v3

    .line 255
    :goto_0
    return-object v2

    .line 240
    :pswitch_1
    aget-object v2, p1, v4

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 241
    sget-object v2, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "null data"

    invoke-static {v2, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v3

    .line 242
    goto :goto_0

    .line 244
    :cond_0
    aget-object v0, p1, v4

    check-cast v0, Landroid/graphics/Bitmap;

    .line 245
    .local v0, "data":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getRealHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeWithMaxHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 247
    .end local v0    # "data":Landroid/graphics/Bitmap;
    :pswitch_2
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModule;->isTaskCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 249
    goto :goto_0

    .line 251
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getRealHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafelyWithSameScale(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public executeOnPostExecute(ILjava/lang/Object;)V
    .locals 4
    .param p1, "workType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 260
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModule;->isTaskCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "cancel task"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModule;->clearTask()V

    .line 263
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModule;->clearTask()V

    .line 267
    iget-boolean v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mIsPause:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move-object v0, p2

    .line 269
    check-cast v0, Landroid/graphics/Bitmap;

    .line 270
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->showTranslateView(Landroid/graphics/Bitmap;)V

    .line 271
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->getTakePhotoOrientation(Z)I

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->sendTranslate(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public finishCurrentTranslation()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->finishCurrentTranslation()V

    .line 306
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    return-void
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 114
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapterFactory;->getAdapter(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .line 116
    new-instance v0, Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleLayoutRoot()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/view/View;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;Lcom/xiaomi/scanner/translation/TranslationModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    .line 117
    const-string v0, "translate_tab_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mIsPause:Z

    return v0
.end method

.method public isPickerNeeded()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomNeeded()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 156
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-ne p1, v3, :cond_0

    .line 161
    const/4 v0, 0x3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/scanner/translation/TranslationModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/TranslationModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectivityChanged()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->updatePrompt()V

    .line 313
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->clear()V

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->onDestroy()V

    .line 194
    return-void
.end method

.method public onOrientationChange(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->onOrientationChange(I)V

    .line 318
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->updateTranslateOrientation(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mIsPause:Z

    .line 181
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    .line 182
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->cancelWorkTask(Z)V

    .line 185
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->setCallback(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 186
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 222
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string v1, "translate_take_pic"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaomi/scanner/translation/TranslationModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->cancelWorkTask(Z)V

    goto :goto_0
.end method

.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    iget-boolean v2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mSkipPreviewCallback:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    new-instance v0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->TRANSLATE_POINT:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->getWordRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;-><init>(Landroid/graphics/Bitmap;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;Landroid/graphics/Rect;)V

    .line 215
    .local v0, "dataBean":Lcom/xiaomi/scanner/translation/bean/ScanDataBean;
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->scan(Lcom/xiaomi/scanner/translation/bean/ScanDataBean;)V

    .line 217
    .end local v0    # "dataBean":Lcom/xiaomi/scanner/translation/bean/ScanDataBean;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 170
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mIsPause:Z

    .line 172
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->onResume()V

    .line 173
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModule;->switchScanType()V

    .line 174
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->setCallback(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 175
    return-void
.end method

.method public selectPhotoClick()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->selectPhotoClick()V

    .line 123
    const-string v0, "translate_long_word_select_image"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public shouldConsumeCameraKey()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchScanType()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 289
    sget-object v0, Lcom/xiaomi/scanner/translation/TranslationModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "switchScanType"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Z)V

    .line 292
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->initScan()V

    .line 293
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 294
    iput-boolean v4, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mSkipPreviewCallback:Z

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Z)V

    .line 297
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    .line 298
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/TranslationModule;->finishCurrentTranslation()V

    .line 299
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iput-boolean v2, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mSkipPreviewCallback:Z

    goto :goto_0
.end method

.method public updateWordTranslateUI(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->updateWordTranslateUI(Z)V

    .line 129
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule;->mUI:Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->updateWordLock(Z)V

    .line 132
    :cond_0
    return-void
.end method
