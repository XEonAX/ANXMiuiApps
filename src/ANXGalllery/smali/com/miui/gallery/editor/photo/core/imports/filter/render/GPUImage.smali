.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;
.super Ljava/lang/Object;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;
    }
.end annotation


# instance fields
.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

.field private mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;->CENTER_INSIDE:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->supportsOpenGLES2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-direct {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .line 34
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;-><init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setDrawBoundLines(Z)V

    .line 36
    return-void
.end method

.method private supportsOpenGLES2(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v2, "activity"

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 48
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 49
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->deleteImage()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 150
    return-void
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v5

    .line 187
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 171
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-direct {v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;-><init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 173
    .local v1, "renderer":Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;
    sget-object v6, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .line 174
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->isFlippedHorizontally()Z

    move-result v7

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->isFlippedVertically()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 173
    :goto_1
    invoke-virtual {v1, v6, v7, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)V

    .line 175
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setScaleType(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;)V

    .line 176
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v3, v6}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;-><init>(II)V

    .line 177
    .local v0, "buffer":Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;
    invoke-virtual {v1, p1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 179
    invoke-virtual {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setDrawBoundLines(Z)V

    .line 182
    if-eqz p2, :cond_3

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    .local v2, "result":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->destroy()V

    .line 184
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->deleteImage()V

    .line 185
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->destroy()V

    .line 186
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    goto :goto_0

    .end local v0    # "buffer":Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move v3, v4

    .line 174
    goto :goto_1

    .restart local v0    # "buffer":Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;
    :cond_3
    move-object p1, v5

    .line 182
    goto :goto_2
.end method

.method public getBitmapWithFilterApplied(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "recycle"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 86
    :cond_0
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setBackgroundColor(FFF)V

    .line 77
    return-void
.end method

.method public setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 97
    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 7
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 58
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 66
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->mRenderer:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 109
    :cond_0
    return-void
.end method
