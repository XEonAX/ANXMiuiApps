.class public Lcom/xiaomi/scanner/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/BaseModule$WorkTask;
    }
.end annotation


# static fields
.field private static final CROPPED_IMAGE_NAME:Ljava/lang/String; = "cropResult.jpg"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final WORK_TYPE_CHOOSE_PICTURE:I = 0x3

.field protected static final WORK_TYPE_PREVIEW:I = 0x2

.field protected static final WORK_TYPE_SERVER_REQ:I = 0x3e8

.field public static final WORK_TYPE_TAKE_PICTURE:I = 0x1


# instance fields
.field protected mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field protected mAppContext:Landroid/content/Context;

.field private mCroppedImagePath:Ljava/lang/String;

.field protected mDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

.field protected mExtraShareImagePath:Ljava/lang/String;

.field protected mIsBackToThirdApp:Z

.field protected mModuleId:I

.field protected mNeedFinishActivity:Z

.field private mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BaseModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public applyWindowInsets(I)V
    .locals 0
    .param p1, "insetBottom"    # I

    .prologue
    .line 414
    return-void
.end method

.method protected cancelWorkTask(Z)V
    .locals 2
    .param p1, "resetPreview"    # Z

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cancle task"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->cancel(Z)Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    .line 301
    :cond_0
    if-eqz p1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 304
    :cond_1
    return-void
.end method

.method protected clearTask()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    .line 319
    return-void
.end method

.method public doPrething()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mNeedFinishActivity:Z

    .line 227
    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public executeOnPostExecute(ILjava/lang/Object;)V
    .locals 0
    .param p1, "workType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 280
    return-void
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 284
    return-void
.end method

.method protected executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "extra1"    # Ljava/lang/Object;
    .param p3, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isTaskCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v2, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;-><init>(Lcom/xiaomi/scanner/module/ModuleController;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    .line 289
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p2, v3, v0

    const/4 v1, 0x2

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getCropImageIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 7
    .param p1, "imagePath"    # Landroid/net/Uri;
    .param p2, "cropResultPath"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "aspectX"    # I
    .param p6, "aspectY"    # I

    .prologue
    .line 323
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/scanner/module/BaseModule;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCropImageIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "cropResultPath"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "aspectX"    # I
    .param p6, "aspectY"    # I

    .prologue
    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    :cond_0
    sget-object v5, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "getFilePathFromUri: null path!"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    const/4 v4, 0x0

    .line 376
    :goto_0
    return-object v4

    .line 333
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "croppedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 335
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 336
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 341
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const-string v6, "com.xiaomi.scanner.fileprovider"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 347
    .local v3, "imageUri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 348
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.miui.gallery"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v5, "image/*"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v5, "scale"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string v5, "return-data"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const-string v5, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 355
    const-string v5, "outputFormat"

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const/4 v5, -0x1

    if-le p5, v5, :cond_3

    .line 357
    const-string v5, "aspectX"

    invoke-virtual {v4, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    :cond_3
    const/4 v5, -0x1

    if-le p6, v5, :cond_4

    .line 360
    const-string v5, "aspectY"

    invoke-virtual {v4, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    :cond_4
    if-eqz p3, :cond_5

    .line 363
    const-string v5, "tips"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :cond_5
    if-eqz p4, :cond_6

    .line 366
    const-string v5, "actionString"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :cond_6
    const-string v5, "fixed_aspect_ratio"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const-string v5, "noFaceDetection"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 342
    .end local v3    # "imageUri":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 373
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "imageUri":Landroid/net/Uri;
    :cond_7
    sget-object v5, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dir.exists() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dir.isDirectory() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public getCroppedImagePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mCroppedImagePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "parentPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cropResult.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mCroppedImagePath:Ljava/lang/String;

    .line 209
    .end local v0    # "parentPath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mCroppedImagePath:Ljava/lang/String;

    return-object v1
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mModuleId:I

    return v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    const/4 v3, 0x0

    .line 55
    iput-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 56
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/app/ScannerApp;

    .line 57
    .local v0, "app":Lcom/xiaomi/scanner/app/ScannerApp;
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScannerApp;->getApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    iput-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    .line 58
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mAppContext:Landroid/content/Context;

    .line 59
    iput-boolean v3, p0, Lcom/xiaomi/scanner/module/BaseModule;->mNeedFinishActivity:Z

    .line 61
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntentData()Landroid/os/Bundle;

    move-result-object v1

    .line 62
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 63
    const-string v2, "imagePath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mExtraShareImagePath:Ljava/lang/String;

    .line 64
    const-string v2, "isBackToThirdApp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mIsBackToThirdApp:Z

    .line 66
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->clearIntentData()V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mExtraShareImagePath:Ljava/lang/String;

    .line 70
    iput-boolean v3, p0, Lcom/xiaomi/scanner/module/BaseModule;->mIsBackToThirdApp:Z

    goto :goto_0
.end method

.method protected initShoppingSdk()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/module/PailitaoManager;->initialize(Landroid/app/Application;)V

    .line 418
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public isPickerNeeded()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public isSdkReady()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected isTaskCancelled()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTaskCreated()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsePreviewFrameAsPicture()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomNeeded()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 181
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onCTAAndPermissionAgree()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onCameraClosed()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public onConnectivityChanged()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChange(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 239
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 3
    .param p1, "originalJpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 186
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken drop this data, originalJpegData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isPause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onPreviewFrame: drop data. pause state"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0

    .line 135
    :cond_0
    if-nez p1, :cond_1

    .line 136
    sget-object v1, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onPreviewFrame: reset data, current null data"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->requestPreviewFrame()V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 409
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    .line 83
    .local v0, "captureModule":Lcom/xiaomi/scanner/camera/CaptureModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isPreviewStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 87
    .end local v0    # "captureModule":Lcom/xiaomi/scanner/camera/CaptureModule;
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 382
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected recordExtraCount(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callCount"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 392
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 393
    const-string v2, "miref"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "miref":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/scanner/module/BaseModule;->recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 395
    .end local v0    # "miref":Ljava/lang/String;
    :cond_0
    const-string v2, "miref"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "miref":Ljava/lang/String;
    goto :goto_0
.end method

.method protected recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callCount"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {p3, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 406
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public requestPreviewFrame()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public selectPhotoClick()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public shouldConsumeCameraKey()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isCaptureNeeded()Z

    move-result v0

    return v0
.end method

.method public updateWordTranslateUI(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 437
    return-void
.end method
