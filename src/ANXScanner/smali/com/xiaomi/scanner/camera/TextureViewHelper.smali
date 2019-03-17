.class public Lcom/xiaomi/scanner/camera/TextureViewHelper;
.super Ljava/lang/Object;
.source "TextureViewHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final MATCH_SCREEN:F = 0.0f

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final UNSET:I = -0x1


# instance fields
.field private mAspectRatio:F

.field private final mAspectRatioChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoAdjustTransform:Z

.field private final mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

.field private mHeight:I

.field private mMatrixPreview:Landroid/graphics/Matrix;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOrientation:I

.field private mPreview:Landroid/view/TextureView;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private mPreviewDisplayHeight:I

.field private mPreviewDisplayWidth:I

.field private final mPreviewSizeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "TextureView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/xiaomi/scanner/camera/CameraProvider;)V
    .locals 1
    .param p1, "preview"    # Landroid/view/TextureView;
    .param p2, "cameraProvider"    # Lcom/xiaomi/scanner/camera/CameraProvider;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    .line 36
    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    .line 59
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    .line 60
    iput-object p2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    .line 61
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 63
    return-void
.end method

.method private getPreviewScale(Landroid/graphics/PointF;Lcom/android/ex/camera2/portability/Size;)V
    .locals 5
    .param p1, "scalePoint"    # Landroid/graphics/PointF;
    .param p2, "previewSize"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 254
    const/high16 v0, 0x3f800000    # 1.0f

    .line 255
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 256
    .local v1, "scaleY":F
    if-eqz p2, :cond_1

    .line 257
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-eq v2, v3, :cond_0

    .line 258
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 260
    :cond_0
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-eq v2, v3, :cond_1

    .line 261
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 264
    :cond_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    .line 265
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .line 283
    :cond_2
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 284
    return-void

    .line 266
    :cond_3
    cmpg-float v2, v0, v4

    if-gez v2, :cond_5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    .line 267
    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 268
    div-float v2, v4, v1

    mul-float/2addr v0, v2

    .line 269
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 270
    :cond_4
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 271
    div-float v2, v4, v0

    mul-float/2addr v1, v2

    .line 272
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 275
    :cond_5
    cmpl-float v2, v0, v1

    if-lez v2, :cond_6

    .line 276
    div-float v2, v4, v1

    mul-float v1, v2, v0

    .line 277
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 278
    :cond_6
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 279
    div-float v2, v4, v0

    mul-float v0, v2, v1

    .line 280
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getPreviewSize(Lcom/android/ex/camera2/portability/Size;I)Lcom/android/ex/camera2/portability/Size;
    .locals 3
    .param p1, "size"    # Lcom/android/ex/camera2/portability/Size;
    .param p2, "orientation"    # I

    .prologue
    .line 246
    if-eqz p2, :cond_0

    const/16 v0, 0xb4

    if-ne p2, v0, :cond_1

    .line 249
    .end local p1    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    move-object p1, v0

    goto :goto_0
.end method

.method private onAspectRatioChanged()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;

    .line 136
    .local v0, "listener":Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    invoke-interface {v0, v2}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;->onPreviewAspectRatioChanged(F)V

    goto :goto_0

    .line 138
    .end local v0    # "listener":Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;
    :cond_0
    return-void
.end method

.method private onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;>;"
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    new-instance v2, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;-><init>(Lcom/xiaomi/scanner/camera/TextureViewHelper;Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method private setAspectRatio(F)V
    .locals 6
    .param p1, "aspectRatio"    # F

    .prologue
    .line 125
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "aspectRatio: [%.2f -> %.2f] "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    .line 127
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 126
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iput p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    .line 129
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->onAspectRatioChanged()V

    .line 131
    :cond_0
    return-void
.end method

.method private updatePreviewArea(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 180
    return-void
.end method

.method private updateTransform()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 205
    sget-object v5, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTransform: autoAdjust="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " orientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-boolean v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    if-nez v5, :cond_0

    .line 207
    const/4 v5, 0x0

    .line 242
    :goto_0
    return v5

    .line 210
    :cond_0
    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    cmpg-float v5, v5, v11

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-nez v5, :cond_2

    :cond_1
    move v5, v6

    .line 211
    goto :goto_0

    .line 214
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    .line 215
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    invoke-interface {v5}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCurrentCameraId()I

    move-result v0

    .line 217
    .local v0, "cameraId":I
    if-ltz v0, :cond_4

    .line 219
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    invoke-interface {v5, v0}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    .line 220
    .local v2, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 221
    .local v3, "scale":Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mCameraProvider:Lcom/xiaomi/scanner/camera/CameraProvider;

    invoke-interface {v5}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCameraDevice()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    .line 223
    .local v1, "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v5

    :goto_1
    invoke-direct {p0, v7, v5}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewSize(Lcom/android/ex/camera2/portability/Size;I)Lcom/android/ex/camera2/portability/Size;

    move-result-object v4

    .line 225
    .local v4, "size":Lcom/android/ex/camera2/portability/Size;
    invoke-direct {p0, v3, v4}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewScale(Landroid/graphics/PointF;Lcom/android/ex/camera2/portability/Size;)V

    .line 227
    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v5, v5

    iget v7, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayWidth:I

    .line 228
    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v5, v5

    iget v7, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayHeight:I

    .line 230
    .end local v4    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_3
    if-eqz v2, :cond_6

    .line 231
    iget v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v11, v11, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v5, v7, v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    .line 238
    :goto_2
    sget-object v5, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTransform: matrix="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    .end local v1    # "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .end local v2    # "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .end local v3    # "scale":Landroid/graphics/PointF;
    :cond_4
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    iget-object v7, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 241
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    invoke-direct {p0, v5}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updatePreviewArea(Landroid/graphics/Matrix;)V

    move v5, v6

    .line 242
    goto/16 :goto_0

    .line 224
    .restart local v1    # "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .restart local v2    # "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .restart local v3    # "scale":Landroid/graphics/PointF;
    :cond_5
    const/16 v5, 0x5a

    goto :goto_1

    .line 234
    :cond_6
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    .line 235
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v11, v11, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2
.end method


# virtual methods
.method public addAspectRatioChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    return-void
.end method

.method public addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    const/4 v3, 0x0

    .line 351
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 354
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, v0}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p1, v0}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public clearTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 108
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 109
    return-void
.end method

.method public getPreviewArea()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayWidth:I

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayHeight:I

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-eq v2, v3, :cond_1

    .line 419
    :cond_0
    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayWidth:I

    iget v4, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewDisplayHeight:I

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mMatrixPreview:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    :cond_1
    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "downSample"    # I

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getTextureArea()Landroid/graphics/RectF;

    move-result-object v7

    .line 328
    .local v7, "textureArea":Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    div-int v3, v2, p1

    .line 329
    .local v3, "width":I
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    div-int v4, v2, p1

    .line 330
    .local v4, "height":I
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v3, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, "preview":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    return v0
.end method

.method public getTextureArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    if-nez v2, :cond_0

    .line 318
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 323
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 321
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 322
    .local v0, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 79
    sub-int v12, p4, p2

    .line 80
    .local v12, "width":I
    sub-int v10, p5, p3

    .line 81
    .local v10, "height":I
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v11

    .line 82
    .local v11, "rotation":I
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "onLayoutChange: [%d %d %d %d]->[%d %d %d %d], orientation=%d"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 84
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 82
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-ne v0, v12, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-ne v0, v10, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    if-eq v0, v11, :cond_1

    .line 86
    :cond_0
    iput v12, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    .line 87
    iput v10, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    .line 88
    iput v11, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOrientation:I

    .line 89
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->clearTransform()V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 97
    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform()Z

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 383
    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 398
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 390
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 406
    :cond_0
    return-void
.end method

.method public removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 368
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    return-void
.end method

.method public setAutoAdjustTransform(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    .line 74
    return-void
.end method

.method public setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 184
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 188
    return-void
.end method

.method public updateAspectRatio(F)V
    .locals 4
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 112
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 114
    sget-object v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    .line 118
    div-float p1, v3, p1

    .line 120
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 121
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform()Z

    goto :goto_0
.end method

.method public updateTransform(Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 148
    new-instance v4, Landroid/graphics/RectF;

    iget v6, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v7, v7

    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 149
    .local v4, "previewRect":Landroid/graphics/RectF;
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 151
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 152
    .local v5, "previewWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 153
    .local v3, "previewHeight":F
    cmpl-float v6, v3, v8

    if-eqz v6, :cond_0

    cmpl-float v6, v5, v8

    if-nez v6, :cond_1

    .line 154
    :cond_0
    sget-object v6, Lcom/xiaomi/scanner/camera/TextureViewHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid preview size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_1
    div-float v1, v5, v3

    .line 158
    .local v1, "aspectRatio":F
    cmpg-float v6, v1, v9

    if-gez v6, :cond_2

    div-float v1, v9, v1

    .line 159
    :cond_2
    iget v6, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_3

    .line 160
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 163
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    iget v6, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mHeight:I

    int-to-float v7, v7

    invoke-direct {v2, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 164
    .local v2, "previewAreaBasedOnAspectRatio":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    .local v0, "additionalTransform":Landroid/graphics/Matrix;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 168
    iget-object v6, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v6, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updatePreviewArea(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
