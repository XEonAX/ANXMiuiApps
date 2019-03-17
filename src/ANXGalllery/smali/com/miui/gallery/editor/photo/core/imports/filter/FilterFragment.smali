.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/miui/gallery/editor/photo/core/GLFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;,
        Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;
    }
.end annotation


# instance fields
.field private mBeautyBitmap:Landroid/graphics/Bitmap;

.field private mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

.field private mCompareBtn:Landroid/widget/Button;

.field private mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

.field private mFloatView:Landroid/view/View;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

.field private mNeedDoRender:Z

.field private mShowFloatView:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    .line 288
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->renderOriginal()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRenderAfterBeauty()V

    return-void
.end method

.method private createFloatView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 86
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 87
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x3ea

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 89
    const/16 v2, 0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 91
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 92
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 93
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    .line 97
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private doRender()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 190
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v2, v5}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 191
    .local v2, "renderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->isPortraitBeauty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->idBeautyAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 193
    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;)V

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    .line 194
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRenderAfterBeauty()V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v1

    .line 200
    .local v1, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 201
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 202
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 203
    const/4 v0, 0x1

    .line 204
    .local v0, "changed":Z
    instance-of v5, v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;

    if-eqz v5, :cond_2

    .line 205
    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;

    .end local v1    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 207
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->enableComparison(Z)V

    goto :goto_0

    :cond_3
    move v0, v4

    .line 205
    goto :goto_1
.end method

.method private doRenderAfterBeauty()V
    .locals 4

    .prologue
    .line 212
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 213
    .local v1, "renderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->isPortraitBeauty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v0

    .line 215
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 217
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 218
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->enableComparison(Z)V

    .line 220
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_0
    return-void

    .line 218
    .restart local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeFloatView()V
    .locals 3

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 103
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mShowFloatView:Z

    .line 106
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private renderOriginal()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->requestRender()V

    .line 178
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 1
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 159
    instance-of v0, p1, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    return-void
.end method

.method public enableComparison(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    .line 225
    .local v0, "renderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 59
    const v2, 0x7f040080

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 61
    const v2, 0x7f0c05be

    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 62
    .local v0, "bgColorComponent":F
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    .line 63
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v2, v0, v0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setBackgroundColor(FFF)V

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/opengl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    const v2, 0x7f04006d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFloatView:Landroid/view/View;

    const v3, 0x7f120154

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mCompareBtn:Landroid/widget/Button;

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->createFloatView()V

    .line 76
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mNeedDoRender:Z

    if-eqz v2, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRender()V

    .line 79
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mBeautyTask:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$BeautyTask;->cancel(Z)Z

    .line 126
    :cond_0
    return-void
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onPause()V

    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->removeFloatView()V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->createFloatView()V

    .line 112
    return-void
.end method

.method protected onSample()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    return-object v1

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/Metadata;

    .line 236
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/Metadata;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V9-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/gallery/editor/photo/core/Metadata;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 2
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 166
    instance-of v1, p1, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mNeedDoRender:Z

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->doRender()V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 263
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 258
    const-string v0, "FilterFragment:AbstractEffectFragment"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->mFilterContext:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;->surfaceDestroyed()V

    .line 268
    return-void
.end method
