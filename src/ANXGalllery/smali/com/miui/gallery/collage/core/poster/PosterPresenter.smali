.class public Lcom/miui/gallery/collage/core/poster/PosterPresenter;
.super Lcom/miui/gallery/collage/core/CollagePresenter;
.source "PosterPresenter.java"


# instance fields
.field private mPosterLayoutSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPosterSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/CollagePresenter;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/core/poster/PosterPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/core/poster/PosterPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static getPosterLayoutIndex(Lcom/miui/gallery/collage/core/poster/PosterModel;I)I
    .locals 6
    .param p0, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p1, "size"    # I

    .prologue
    .line 102
    const/4 v1, -0x1

    .line 103
    .local v1, "layoutIndex":I
    iget-object v3, p0, Lcom/miui/gallery/collage/core/poster/PosterModel;->collageModels:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 104
    .local v0, "index":I
    div-int/lit8 v5, v0, 0xa

    if-ne v5, p1, :cond_1

    .line 105
    rem-int/lit8 v1, v0, 0xa

    .line 109
    .end local v0    # "index":I
    :cond_0
    return v1

    .line 103
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createEngine(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 56
    new-instance v0, Lcom/miui/gallery/collage/core/poster/PosterRenderEngine;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/collage/core/poster/PosterRenderEngine;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V

    return-object v0
.end method

.method public getMenuFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "fragment_poster:menu"

    return-object v0
.end method

.method public getPosterCollageLayout(Lcom/miui/gallery/collage/core/poster/PosterModel;)Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .locals 3
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;

    .prologue
    .line 93
    iget v1, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mImageCount:I

    invoke-static {p1, v1}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->getPosterLayoutIndex(Lcom/miui/gallery/collage/core/poster/PosterModel;I)I

    move-result v0

    .line 94
    .local v0, "layoutIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    iget v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mImageCount:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 97
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterSparseArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mImageCount:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRenderFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "fragment_poster:render"

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0c011f

    return v0
.end method

.method protected hasResourceData()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mPosterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDataLoader(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)Lcom/miui/gallery/collage/app/common/IDataLoader;
    .locals 3
    .param p1, "dataLoadListener"    # Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    .prologue
    .line 66
    new-instance v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v1}, Lcom/miui/gallery/collage/core/ViewInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;-><init>(Lcom/miui/gallery/collage/core/poster/PosterPresenter;Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;-><init>(Landroid/content/res/AssetManager;Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;)V

    .line 85
    .local v0, "posterDataLoader":Lcom/miui/gallery/collage/core/poster/PosterDataLoader;
    return-object v0
.end method

.method protected onCreateMenuFragment()Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    invoke-direct {v0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;-><init>()V

    return-object v0
.end method

.method protected onCreateRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/miui/gallery/collage/core/poster/PosterFragment;

    invoke-direct {v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;-><init>()V

    return-object v0
.end method

.method protected onDetach()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
