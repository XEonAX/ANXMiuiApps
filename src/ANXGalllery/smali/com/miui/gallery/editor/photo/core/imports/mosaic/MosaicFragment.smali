.class public Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;
.source "MosaicFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/miui/gallery/editor/photo/core/GLFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;
    }
.end annotation


# instance fields
.field private mMosaicContext:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

.field private mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

.field private mNextEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

.field private mNextPaintSize:I

.field private mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextPaintSize:I

    .line 25
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicContext:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicContext:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

    return-object v0
.end method


# virtual methods
.method public canRevert()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->canRevert()Z

    move-result v0

    return v0
.end method

.method public canRevoke()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->canRevoke()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->onClear()V

    .line 76
    return-void
.end method

.method public doRevert()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->doRevert()V

    .line 124
    return-void
.end method

.method public doRevoke()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->doRevoke()V

    .line 119
    return-void
.end method

.method public getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicContext:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 29
    const v3, 0x7f04006e

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 30
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    .line 31
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setCurrentEntity(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    .line 34
    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 36
    :cond_0
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextPaintSize:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 37
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextPaintSize:I

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setMosaicPaintSize(I)V

    .line 38
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextPaintSize:I

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    if-eqz v3, :cond_2

    .line 41
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V

    .line 42
    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 46
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 47
    .local v2, "paddingTop":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v3, v1, v2, v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setPadding(IIII)V

    .line 48
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0, v3, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 55
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->export()Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 1
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
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->generateSample()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setMosaicData(Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;)V
    .locals 2
    .param p1, "mosaicData"    # Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    .prologue
    .line 80
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 81
    .local v0, "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setCurrentEntity(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    goto :goto_0
.end method

.method public setMosaicPaintSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setMosaicPaintSize(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mNextPaintSize:I

    goto :goto_0
.end method

.method public setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V
    .locals 1
    .param p1, "operationUpdateListener"    # Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicView:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 134
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 129
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->mMosaicContext:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;->surfaceDestroyed()V

    .line 139
    return-void
.end method
