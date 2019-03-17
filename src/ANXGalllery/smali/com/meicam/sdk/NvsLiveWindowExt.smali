.class public Lcom/meicam/sdk/NvsLiveWindowExt;
.super Landroid/view/TextureView;
.source "NvsLiveWindowExt.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final FILLMODE_PRESERVEASPECTCROP:I = 0x0

.field public static final FILLMODE_PRESERVEASPECTFIT:I = 0x1

.field public static final FILLMODE_STRETCH:I = 0x2


# instance fields
.field protected m_fillMode:I

.field protected m_internalObject:J

.field private m_surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    .line 80
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 81
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    .line 87
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 88
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    .line 94
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 95
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    .line 96
    return-void
.end method

.method private destroyCurrentSurface()V
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSurfaceDestroyed(J)V

    .line 297
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0, p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 287
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeInit()V

    .line 289
    :cond_0
    return-void
.end method

.method private native nativeClearVideoFrame(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeInit()V
.end method

.method private native nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeOnSizeChanged(JII)V
.end method

.method private native nativeRepaintVideoFrame(J)V
.end method

.method private native nativeSetBackgroundColor(JFFF)V
.end method

.method private native nativeSetFillMode(JI)V
.end method

.method private native nativeSurfaceChanged(JLandroid/view/Surface;II)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeTakeScreenshot(J)Landroid/graphics/Bitmap;
.end method


# virtual methods
.method public clearVideoFrame()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 191
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeClearVideoFrame(J)V

    .line 192
    return-void
.end method

.method public getFillMode()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 124
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    return v0
.end method

.method public mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 136
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public mapNormalizedToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 160
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 148
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public mapViewToNormalized(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 172
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 219
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->init()V

    .line 220
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 227
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 228
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeClose(J)V

    .line 229
    iput-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    .line 233
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsLiveWindowExt;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 235
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 236
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeOnSizeChanged(JII)V

    .line 243
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 244
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 249
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 250
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-lt p2, v1, :cond_0

    if-lt p3, v1, :cond_0

    .line 251
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    .line 252
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    iget-object v4, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    .line 254
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 272
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->destroyCurrentSurface()V

    .line 260
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindowExt;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-lt p2, v1, :cond_0

    if-lt p3, v1, :cond_0

    .line 261
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    .line 262
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    iget-object v4, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_surface:Landroid/view/Surface;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    .line 264
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public repaintVideoFrame()V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 182
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeRepaintVideoFrame(J)V

    .line 183
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 7

    .prologue
    .line 209
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 210
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetBackgroundColor(JFFF)V

    .line 211
    return-void
.end method

.method public setFillMode(I)V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 105
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 108
    const/4 p1, 0x0

    .line 110
    :cond_0
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    if-ne p1, v0, :cond_1

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_fillMode:I

    .line 114
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeSetFillMode(JI)V

    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 200
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindowExt;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindowExt;->nativeTakeScreenshot(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    return-object v0
.end method
