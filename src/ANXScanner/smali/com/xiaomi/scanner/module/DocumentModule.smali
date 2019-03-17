.class public Lcom/xiaomi/scanner/module/DocumentModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "DocumentModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/DocumentModule$MainTaskHandler;,
        Lcom/xiaomi/scanner/module/DocumentModule$DocumentHandler;
    }
.end annotation


# static fields
.field private static final MAX_PICTURE_SIZE:I = 0x800

.field private static final MSG_GRAY_DOCUMENT:I = 0x42

.field private static final MSG_GRAY_DOCUMENT_RESULT:I = 0x3d

.field private static final MSG_OCR:I = 0x41

.field private static final MSG_RECTIFY_DOCUMENT:I = 0x40

.field private static final MSG_SAVE_DOCUMENT:I = 0x43

.field private static final STATE_PREVIEW:I = 0x1

.field private static final STATE_PROCESS:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAppUi:Lcom/xiaomi/scanner/app/AppUI;

.field private mIsPause:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

.field private mRectifiedBitmap:Landroid/graphics/Bitmap;

.field private final mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mState:I

.field private mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

.field private mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DocumentModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 1
    .param p1, "app"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "moduleId"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mState:I

    .line 102
    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    .line 103
    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 104
    iput p2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mModuleId:I

    .line 105
    new-instance v0, Lcom/xiaomi/scanner/module/DocumentModule$MainTaskHandler;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/DocumentModule$MainTaskHandler;-><init>(Lcom/xiaomi/scanner/module/DocumentModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mMainHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/ui/DocumentModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/DocumentModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    return v0
.end method

.method static synthetic access$200()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/DocumentModule;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/recognizer/RecognizeResult;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    return-object v0
.end method

.method static synthetic access$602(Lcom/xiaomi/scanner/module/DocumentModule;Lcom/xiaomi/recognizer/RecognizeResult;)Lcom/xiaomi/recognizer/RecognizeResult;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;
    .param p1, "x1"    # Lcom/xiaomi/recognizer/RecognizeResult;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    return-object p1
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/app/AppUI;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/module/DocumentModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/DocumentModule;->publishRectifyResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    return-object v0
.end method

.method private detectBitmap(Landroid/graphics/Bitmap;)Lcom/xiaomi/recognizer/RecognizeResult;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 386
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 387
    :cond_0
    sget-object v4, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "detectBitmap: null bitmap!"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, v1

    .line 400
    :goto_0
    return-object v0

    .line 391
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 392
    .local v2, "start":J
    invoke-static {p1}, Lcom/xiaomi/recognizer/Quadrangle;->detectBitmap(Landroid/graphics/Bitmap;)Lcom/xiaomi/recognizer/RecognizeResult;

    move-result-object v0

    .line 393
    .local v0, "result":Lcom/xiaomi/recognizer/RecognizeResult;
    sget-object v4, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detectBitmap: cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 394
    if-nez v0, :cond_2

    .line 395
    sget-object v4, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "detectBitmap: failed!"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, v1

    .line 396
    goto :goto_0

    .line 399
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detectBitmap: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getState()I
    .locals 1

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCornerChanged(Lcom/xiaomi/recognizer/RecognizeResult;Lcom/xiaomi/recognizer/RecognizeResult;)Z
    .locals 7
    .param p1, "left"    # Lcom/xiaomi/recognizer/RecognizeResult;
    .param p2, "right"    # Lcom/xiaomi/recognizer/RecognizeResult;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 354
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v1

    .line 358
    :cond_1
    iget-object v3, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    array-length v3, v3

    iget-object v4, p2, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 363
    iget-object v3, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    aget v3, v3, v0

    iget-object v4, p2, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 364
    sget-object v3, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "corner[%d]: %f != %f"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    iget-object v6, p2, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    aget v6, v6, v0

    .line 365
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    .line 364
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 370
    goto :goto_0
.end method

.method private publishRectifyResult(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "rectified"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 435
    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p1, v0}, Lcom/xiaomi/scanner/module/DocumentModule;->resetRectifyData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->updateProcessResult(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)V

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onRectifyCanceled()V

    goto :goto_0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    const/4 p1, 0x0

    .line 254
    :cond_0
    return-void
.end method

.method private resetRectifyData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Z
    .locals 3
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "rectified"    # Landroid/graphics/Bitmap;
    .param p3, "result"    # Lcom/xiaomi/recognizer/RecognizeResult;

    .prologue
    .line 405
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rectified="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    if-nez v0, :cond_5

    .line 407
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 413
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 417
    :cond_2
    iput-object p2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    .line 419
    :cond_3
    if-eqz p3, :cond_4

    .line 420
    iput-object p3, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    .line 422
    :cond_4
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    .line 423
    :cond_5
    if-eqz p1, :cond_6

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected cancelWorkTask(Z)V
    .locals 1
    .param p1, "resetPreview"    # Z

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    .line 278
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 279
    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, "source":Landroid/graphics/Bitmap;
    aget-object v6, p1, v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 230
    :pswitch_0
    sget-object v6, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/DocumentModule;->isTaskCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    invoke-direct {p0, v5}, Lcom/xiaomi/scanner/module/DocumentModule;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 245
    :goto_1
    return-object v6

    .line 215
    :pswitch_1
    aget-object v6, p1, v10

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 216
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 217
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation([B)I

    move-result v4

    .line 218
    .local v4, "rotation":I
    sget-object v6, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-object v6, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppContext:Landroid/content/Context;

    invoke-static {v6, v0, v10, v4, v9}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Landroid/content/Context;[BIIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 220
    const-string v6, "document_server_req"

    const-string v7, "take_photo"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v0    # "data":[B
    .end local v4    # "rotation":I
    :cond_0
    :pswitch_2
    aget-object v6, p1, v10

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "orientation":I
    invoke-static {v1, v2, v9}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 227
    const-string v6, "document_server_req"

    const-string v7, "select_image"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "orientation":I
    :cond_1
    if-eqz v5, :cond_2

    .line 237
    sget v6, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v6, v7

    sget v7, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    invoke-static {v5, v6, v7}, Lcom/xiaomi/scanner/util/PictureDecoder;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 239
    :cond_2
    invoke-direct {p0, v5}, Lcom/xiaomi/scanner/module/DocumentModule;->detectBitmap(Landroid/graphics/Bitmap;)Lcom/xiaomi/recognizer/RecognizeResult;

    move-result-object v3

    .line 240
    .local v3, "result":Lcom/xiaomi/recognizer/RecognizeResult;
    if-nez v3, :cond_3

    .line 241
    sget-object v6, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "null RecognizeResult"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, v5}, Lcom/xiaomi/scanner/module/DocumentModule;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    .line 245
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v3}, Lcom/xiaomi/scanner/module/DocumentModule;->resetRectifyData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public executeOnPostExecute(ILjava/lang/Object;)V
    .locals 5
    .param p1, "workType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 258
    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->setTakePhotoType(Z)V

    .line 259
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 260
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/DocumentModule;->isTaskCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "cancel task"

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/DocumentModule;->clearTask()V

    .line 263
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->setState(I)V

    .line 264
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    if-nez v0, :cond_1

    .line 265
    const v0, 0x7f070049

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 266
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 273
    :cond_1
    :goto_1
    return-void

    .line 258
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_3
    const-string v0, "document_server_result"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/DocumentModule;->clearTask()V

    .line 272
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->updateRectifyResult(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)V

    goto :goto_1
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-boolean v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage drop operation while pause state what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v2

    .line 345
    :goto_0
    return v1

    .line 317
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 343
    sget-object v1, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected sender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaomi/scanner/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 319
    :sswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->setState(I)V

    move-object v0, p3

    .line 320
    check-cast v0, Lcom/xiaomi/recognizer/RecognizeResult;

    .line 321
    .local v0, "result":Lcom/xiaomi/recognizer/RecognizeResult;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->isCornerChanged(Lcom/xiaomi/recognizer/RecognizeResult;Lcom/xiaomi/recognizer/RecognizeResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v3, 0x7f07004c

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    .line 323
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->updateGrayScaleView(Z)V

    .line 324
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 326
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "corner not change, cancle"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onRectifyCanceled()V

    goto :goto_1

    .line 331
    .end local v0    # "result":Lcom/xiaomi/recognizer/RecognizeResult;
    :sswitch_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v3, 0x7f070048

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    .line 332
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 335
    :sswitch_2
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 338
    :sswitch_3
    iget-object v3, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f070043

    :goto_2
    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    .line 340
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x42

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 338
    :cond_2
    const v1, 0x7f070040

    goto :goto_2

    .line 317
    :sswitch_data_0
    .sparse-switch
        0x7f0d00e8 -> :sswitch_3
        0x7f0d00e9 -> :sswitch_1
        0x7f0d00ec -> :sswitch_2
        0x7f0d00f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 111
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    invoke-static {v0, v1, p0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapterFactory;->getAdapter(Landroid/content/Context;Lcom/xiaomi/scanner/settings/SettingsManager;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .line 113
    new-instance v0, Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleLayoutRoot()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/module/DocumentModule;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    .line 114
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V

    .line 115
    const-string v0, "document_tab_click"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 194
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 205
    sget-object v1, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 197
    .local v0, "imgUri":Landroid/net/Uri;
    :goto_1
    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->setState(I)V

    .line 199
    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v2, 0x7f07004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    goto :goto_0

    .end local v0    # "imgUri":Landroid/net/Uri;
    :cond_1
    move-object v0, v1

    .line 196
    goto :goto_1

    .line 201
    .restart local v0    # "imgUri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->cancelWorkTask(Z)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDefinitionDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .prologue
    .line 92
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDefinitionDone"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    iput-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRectifiedBitmap:Landroid/graphics/Bitmap;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    iput-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    if-eqz v0, :cond_2

    .line 173
    iput-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mRecognizeResult:Lcom/xiaomi/recognizer/RecognizeResult;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->clear()V

    .line 176
    return-void
.end method

.method public onModuleSwitch(I)V
    .locals 1
    .param p1, "module"    # I

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    if-nez v0, :cond_0

    .line 378
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/DocumentModule;->setState(I)V

    .line 380
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 383
    :cond_0
    return-void
.end method

.method public onOcrDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V
    .locals 2
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;
    .param p2, "type"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    .prologue
    .line 72
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onOcrDone"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    .line 75
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->OCR:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    if-ne p2, v0, :cond_0

    .line 76
    new-instance v0, Lcom/xiaomi/scanner/module/DocumentModule$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/module/DocumentModule$1;-><init>(Lcom/xiaomi/scanner/module/DocumentModule;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onOcrFail()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onOcrFail"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/DocumentModule;->cancelWorkTask(Z)V

    .line 143
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 283
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    :goto_0
    return v0

    .line 286
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/xiaomi/scanner/module/DocumentModule;->executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/DocumentModule;->setState(I)V

    .line 288
    iget-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mAppUi:Lcom/xiaomi/scanner/app/AppUI;

    const v3, 0x7f07004c

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    :goto_1
    move v0, v1

    .line 292
    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/DocumentModule;->cancelWorkTask(Z)V

    goto :goto_1
.end method

.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 131
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mIsPause:Z

    .line 133
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mUI:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->isShowPreviewUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/DocumentModule;->setState(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    .line 123
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v0, Lcom/xiaomi/scanner/module/DocumentModule$DocumentHandler;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/scanner/module/DocumentModule$DocumentHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/scanner/module/DocumentModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerHandler:Landroid/os/Handler;

    .line 126
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mTranslationAdapter:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 152
    iput-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerThread:Landroid/os/HandlerThread;

    .line 153
    iput-object v2, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mWorkerHandler:Landroid/os/Handler;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onTranslationDone()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/xiaomi/scanner/module/DocumentModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onTranslationDone"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public requestPreviewFrame()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public shouldConsumeCameraKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/DocumentModule;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
