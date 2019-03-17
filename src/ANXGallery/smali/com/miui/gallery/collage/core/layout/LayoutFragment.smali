.class public Lcom/miui/gallery/collage/core/layout/LayoutFragment;
.super Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;
.source "LayoutFragment.java"


# instance fields
.field private mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

.field private mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

.field private mImageViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/miui/gallery/collage/widget/CollageImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInit:Z

.field private mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

.field private mModelReady:Z

.field private mViewReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mModelReady:Z

    .line 30
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mViewReady:Z

    .line 31
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mInit:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mImageViewMap:Ljava/util/Map;

    .line 147
    new-instance v0, Lcom/miui/gallery/collage/core/layout/LayoutFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment$1;-><init>(Lcom/miui/gallery/collage/core/layout/LayoutFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/core/layout/LayoutFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/layout/LayoutFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mImageViewMap:Ljava/util/Map;

    return-object v0
.end method

.method private generateCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 9
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 115
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->removeAllViews()V

    .line 116
    iget-object v4, p1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->items:[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;

    .line 117
    .local v4, "layoutItemModels":[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v5, v2

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    aget-object v3, v4, v2

    .line 120
    .local v3, "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    new-instance v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/miui/gallery/collage/widget/CollageImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 122
    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v6, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    iget-object v7, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v8, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->data:[F

    invoke-direct {v6, v7, v8}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    invoke-virtual {v5, v1, v6}, Lcom/miui/gallery/collage/widget/CollageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v3    # "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    :cond_1
    return-void
.end method

.method private refreshCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 8
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 130
    iget-object v4, p1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->items:[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;

    .line 131
    .local v4, "viewModels":[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v1

    .line 132
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 133
    aget-object v3, v4, v2

    .line 134
    .local v3, "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "child":Landroid/view/View;
    new-instance v5, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    iget-object v6, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v7, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->data:[F

    invoke-direct {v5, v6, v7}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    :cond_0
    return-void
.end method

.method private refreshLayout()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mInit:Z

    if-nez v0, :cond_1

    .line 102
    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mModelReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmapReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mViewReady:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->generateCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setReplaceImageListener(Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setBitmapExchangeListener(Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mInit:Z

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->refreshCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->dismissControlWindow()V

    .line 76
    :cond_0
    return-void
.end method

.method public export()Lcom/miui/gallery/collage/core/RenderData;
    .locals 7

    .prologue
    .line 85
    iget-object v2, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 86
    .local v0, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v2, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lcom/miui/gallery/collage/core/layout/LayoutModel;->ratio:F

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    iget-object v5, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v6, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v6}, Lcom/miui/gallery/collage/widget/CollageLayout;->getWidth()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/gallery/collage/render/CollageRender;->generateRenderData(Landroid/content/Context;Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;Lcom/miui/gallery/collage/widget/CollageLayout;I)Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    move-result-object v1

    .line 88
    .local v1, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    new-instance v2, Lcom/miui/gallery/collage/core/layout/LayoutRenderData;

    invoke-direct {v2, v1}, Lcom/miui/gallery/collage/core/layout/LayoutRenderData;-><init>(Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V

    return-object v2
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->isActivating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "from"    # Landroid/graphics/Bitmap;
    .param p2, "to"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 142
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method protected onBitmapsReceive()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->refreshLayout()V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSelectMargin(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setCollageMargin(FZ)V

    .line 57
    return-void
.end method

.method public onSelectModel(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 1
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mModelReady:Z

    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->refreshLayout()V

    .line 52
    return-void
.end method

.method public onSelectRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 61
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 62
    .local v0, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->requestLayout()V

    .line 64
    return-void
.end method

.method public onSimple()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "simple":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "collage_save_type"

    const-string v2, "Layout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "collage_image_size"

    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "Layout"

    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    iget-object v1, v1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v0, 0x7f12012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageLayout;

    iput-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->mViewReady:Z

    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/layout/LayoutFragment;->refreshLayout()V

    .line 45
    return-void
.end method
