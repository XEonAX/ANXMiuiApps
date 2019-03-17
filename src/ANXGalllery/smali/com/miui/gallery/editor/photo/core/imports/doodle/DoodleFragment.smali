.class public Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;
.source "DoodleFragment.java"


# instance fields
.field private mCurrentColor:I

.field private mDoodleCallback:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

.field private mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

.field private mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

.field private mStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;-><init>()V

    .line 21
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mCurrentColor:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mStats:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleCallback:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mStats:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public canRevert()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->canRevert()Z

    move-result v0

    return v0
.end method

.method public canRevoke()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->canRevoke()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->onClear()V

    .line 65
    return-void
.end method

.method public doRevert()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->doRevert()V

    .line 103
    return-void
.end method

.method public doRevoke()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->doRevoke()V

    .line 98
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 27
    const v3, 0x7f04006e

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .local v0, "layout":Landroid/view/ViewGroup;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .line 29
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mCurrentColor:I

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setColor(I)V

    .line 31
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleCallback:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setDoodleCallback(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 33
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 34
    .local v2, "paddingTop":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v3, v1, v2, v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setPadding(IIII)V

    .line 35
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V

    .line 39
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .line 42
    :cond_0
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;)V

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
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mStats:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-object v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mCurrentColor:I

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setColor(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setDoodleData(Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;)V
    .locals 3
    .param p1, "doodleData"    # Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;

    .line 71
    .local v0, "doodleConfig":Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;->getDoodleItem()Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setCurrentDoodleItem(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;)V

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->clearActivation()V

    .line 74
    .end local v0    # "doodleConfig":Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleConfig;
    :cond_0
    return-void
.end method

.method public setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V
    .locals 1
    .param p1, "operationUpdateListener"    # Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    goto :goto_0
.end method

.method public setPaintSize(F)V
    .locals 1
    .param p1, "paintSize"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleFragment;->mDoodleEditorView:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setPaintSize(F)V

    .line 123
    return-void
.end method
