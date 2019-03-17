.class public Lcom/meicam/sdk/NvsLiveWindow;
.super Landroid/view/SurfaceView;
.source "NvsLiveWindow.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 63
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 64
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 65
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 71
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 72
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 78
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 79
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 85
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 86
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    .line 87
    return-void
.end method

.method private destroyCurrentSurface()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSurfaceDestroyed(J)V

    .line 260
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->nativeInit()V

    .line 250
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 252
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
    .line 171
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 172
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeClearVideoFrame(J)V

    .line 173
    return-void
.end method

.method public getFillMode()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 115
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    return v0
.end method

.method public mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 127
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public mapNormalizedToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 151
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 139
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public mapViewToNormalized(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 163
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 200
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    .line 201
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeClose(J)V

    .line 209
    iput-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    .line 210
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 214
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 215
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsLiveWindow;->nativeOnSizeChanged(JII)V

    .line 222
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 223
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 7

    .prologue
    .line 190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 191
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSetBackgroundColor(JFFF)V

    .line 192
    return-void
.end method

.method public setFillMode(I)V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 96
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 99
    const/4 p1, 0x0

    .line 101
    :cond_0
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    if-ne p1, v0, :cond_1

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 105
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSetFillMode(JI)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-lt p3, v1, :cond_0

    if-lt p4, v1, :cond_0

    .line 229
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    .line 230
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSurfaceDestroyed(J)V

    .line 243
    :cond_0
    return-void
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 181
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeTakeScreenshot(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    return-object v0
.end method
