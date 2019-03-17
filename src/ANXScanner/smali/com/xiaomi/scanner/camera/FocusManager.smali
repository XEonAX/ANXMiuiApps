.class public Lcom/xiaomi/scanner/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;,
        Lcom/xiaomi/scanner/camera/FocusManager$Listener;
    }
.end annotation


# static fields
.field public static final AE_REGION_BOX:F = 0.3f

.field public static final AF_REGION_BOX:F = 0.2f

.field private static final RESET_AUTO_FOCUS:I = 0x1

.field private static final RESET_AUTO_FOCUS_DELAY_MILLIS:I = 0x1388

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY_MILLIS:I = 0x7d0

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAeAwbLock:Z

.field private mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCoordinateTransformer:Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

.field private final mDefaultFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusLocked:Z

.field private mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "FocusManager"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/xiaomi/scanner/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 2
    .param p2, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "listener"    # Lcom/xiaomi/scanner/camera/FocusManager$Listener;
    .param p4, "mirror"    # Z
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            "Lcom/xiaomi/scanner/camera/FocusManager$Listener;",
            "Z",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "defaultFocusModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p5}, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;-><init>(Lcom/xiaomi/scanner/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDefaultFocusModes:Ljava/util/List;

    .line 132
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/FocusManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 133
    iput-object p3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    .line 134
    invoke-virtual {p0, p4}, Lcom/xiaomi/scanner/camera/FocusManager;->setMirror(Z)V

    .line 135
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    .line 136
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/camera/FocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/FocusManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/camera/FocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/FocusManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    return-void
.end method

.method private autoFocus()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocus(I)V

    .line 395
    return-void
.end method

.method private autoFocus(I)V
    .locals 5
    .param p1, "focusingState"    # I

    .prologue
    const/4 v4, 0x1

    .line 378
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->autoFocus()V

    .line 379
    iput p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 380
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 387
    :cond_0
    return-void
.end method

.method private autoFocusAndCapture()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocus(I)V

    .line 403
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cancel auto focus"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetTouchFocus()V

    .line 411
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 412
    iput v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 413
    iput-boolean v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    .line 414
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iput v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 421
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    :cond_0
    return-void
.end method

.method private computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I

    .prologue
    .line 483
    div-int/lit8 v3, p3, 0x2

    sub-int v3, p1, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, p3

    invoke-static {v3, v4, v5}, Lcom/xiaomi/scanner/util/CameraUtil;->clamp(III)I

    move-result v0

    .line 485
    .local v0, "left":I
    div-int/lit8 v3, p3, 0x2

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p3

    invoke-static {v3, v4, v5}, Lcom/xiaomi/scanner/util/CameraUtil;->clamp(III)I

    move-result v2

    .line 488
    .local v2, "top":I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v2

    add-int v5, v0, p3

    int-to-float v5, v5

    add-int v6, v2, p3

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 489
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCoordinateTransformer:Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

    invoke-virtual {v3, v1}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/scanner/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method private getAERegionSizePx()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAFRegionSizePx()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initializeFocusAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 303
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->getAFRegionSizePx()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 308
    return-void
.end method

.method private initializeMeteringAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 313
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->getAERegionSizePx()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 318
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    .line 192
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    .line 194
    :cond_0
    return-void
.end method

.method private needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z
    .locals 1
    .param p1, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 518
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCoordinateTransformer()V
    .locals 12

    .prologue
    .line 179
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .local v3, "top":I
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .local v0, "bottom":I
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .local v1, "left":I
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 180
    .local v2, "right":I
    sub-int v4, v2, v1

    if-lez v4, :cond_0

    sub-int v4, v0, v3

    if-lez v4, :cond_0

    .line 181
    new-instance v4, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

    iget-boolean v5, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMirror:Z

    iget v6, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDisplayOrientation:I

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v3

    int-to-float v10, v2

    int-to-float v11, v0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;-><init>(ZILandroid/graphics/RectF;)V

    iput-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCoordinateTransformer:Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v4, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "The coordinate transformer could not be built because the preview rect did not have a width and height"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    .line 199
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 5
    .param p1, "currentFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    const/4 v4, 0x1

    .line 222
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusAndCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 224
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "focusAndCapture: not initialize"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/FocusManager;->needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    goto :goto_0

    .line 231
    :cond_2
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 233
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    goto :goto_0

    .line 234
    :cond_4
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    if-ne v0, v4, :cond_5

    .line 236
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 237
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 240
    :cond_5
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocusAndCapture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 4
    .param p1, "currentFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 428
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-nez v1, :cond_0

    .line 429
    sget-object v1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "no capabilities, returning default AUTO focus mode"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 459
    :goto_0
    return-object v1

    .line 433
    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 434
    sget-object v1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "in tap to focus, returning AUTO focus mode"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 448
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 452
    sget-object v1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "falling back to AUTO"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 459
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDefaultFocusModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 440
    .local v0, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 442
    sget-object v1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected focus mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v0    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :cond_5
    sget-object v1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "falling back to current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_2
.end method

.method getFocusState()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(ZZ)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "shutterButtonPressed"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x1

    .line 246
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 250
    if-eqz p1, :cond_1

    .line 251
    iput v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 255
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    .line 279
    :cond_0
    :goto_1
    return-void

    .line 253
    :cond_1
    iput v3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    if-ne v0, v4, :cond_5

    .line 260
    if-eqz p1, :cond_4

    .line 261
    iput v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 266
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 267
    iput-boolean v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    .line 268
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    if-eqz p2, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 263
    :cond_4
    iput v3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    goto :goto_2

    .line 275
    :cond_5
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 0
    .param p1, "moving"    # Z

    .prologue
    .line 284
    return-void
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->onPreviewStopped()V

    .line 362
    return-void
.end method

.method public onMoving()V
    .locals 3

    .prologue
    .line 365
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoving: focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 366
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onMoving: Early focus unlock."

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    .line 370
    :cond_0
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 165
    invoke-static {p1}, Lcom/xiaomi/scanner/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 166
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 352
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetTouchFocus()V

    .line 353
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 358
    return-void
.end method

.method public onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 2
    .param p1, "currentFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/FocusManager;->needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/FocusManager;->initializeFocusAreas(II)V

    .line 339
    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/FocusManager;->initializeMeteringAreas(II)V

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    .line 345
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 476
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 479
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    .line 511
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDisplayOrientation:I

    .line 175
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetCoordinateTransformer()V

    .line 176
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMirror:Z

    .line 170
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetCoordinateTransformer()V

    .line 171
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetCoordinateTransformer()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    .line 162
    :cond_0
    return-void
.end method

.method public updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 2
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 147
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    .line 148
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
