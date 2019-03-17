.class public Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;
.source "LongScreenshotCropFragment.java"


# instance fields
.field private mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

.field private mOrigin:Landroid/graphics/Bitmap;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;-><init>()V

    return-void
.end method

.method private getClipRatioRectByPreData(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .prologue
    .local p1, "renderDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 104
    .local v0, "clipRatioRect":Landroid/graphics/RectF;
    invoke-virtual {v0, v5, v5, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/RenderData;

    .line 106
    .local v3, "renderData":Lcom/miui/gallery/editor/photo/core/RenderData;
    instance-of v6, v3, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;

    if-eqz v6, :cond_0

    .line 107
    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;

    .end local v3    # "renderData":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v1, v3, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;

    .line 108
    .local v1, "entry":Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 109
    .local v2, "height":F
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 110
    .local v4, "top":F
    iget v6, v1, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;->mTopRatio:F

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 111
    iget v6, v1, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;->mBottomRatio:F

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 114
    .end local v1    # "entry":Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;
    .end local v2    # "height":F
    .end local v4    # "top":F
    :cond_1
    return-object v0
.end method

.method private validateBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mOrigin:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v0, 0x7f0400a9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;->onDestroyView()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mOrigin:Landroid/graphics/Bitmap;

    .line 43
    return-void
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 4
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
    .line 52
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;

    move-result-object v0

    .line 54
    .local v0, "entry":Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;
    iget v1, v0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;->mBottomRatio:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;->mTopRatio:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "long_crop"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f120149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    .line 32
    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->validateBitmap()V

    .line 37
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->validateBitmap()V

    .line 72
    :cond_0
    return-void
.end method

.method public setOriginBitmap(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "preRenderData":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mOrigin:Landroid/graphics/Bitmap;

    .line 85
    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->getClipRatioRectByPreData(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    .line 86
    .local v0, "clipRatioRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, p1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView;->setOriginalBitmap(Landroid/graphics/Bitmap;FF)V

    .line 88
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropFragment;->validateBitmap()V

    goto :goto_0
.end method
