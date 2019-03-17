.class public Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;
.source "FrameFragment.java"


# instance fields
.field private mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

.field private mSimpleString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public getUnSupportStringRes()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0c0235

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSupportBitmap(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 53
    .local v0, "ratio":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 54
    div-float v0, v3, v0

    .line 56
    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .local v0, "layout":Landroid/view/ViewGroup;
    const v1, 0x7f120155

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    .line 29
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 2
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
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mSimpleString:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object v0
.end method

.method public setRatio(FLjava/lang/String;)V
    .locals 1
    .param p1, "ratio"    # F
    .param p2, "simpleString"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mSimpleString:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->setRatio(F)V

    .line 75
    :cond_0
    return-void
.end method

.method public setScaleProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;->mFrameEditorView:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->setScaleProgress(F)V

    .line 82
    :cond_0
    return-void
.end method
