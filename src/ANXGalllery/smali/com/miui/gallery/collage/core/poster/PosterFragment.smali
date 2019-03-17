.class public Lcom/miui/gallery/collage/core/poster/PosterFragment;
.super Lcom/miui/gallery/collage/app/common/AbstractPosterFragment;
.source "PosterFragment.java"


# instance fields
.field private mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

.field private mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

.field private mDefaultRatio:F

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

.field private mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

.field private mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

.field private mRootView:Landroid/view/ViewGroup;

.field private mViewReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/common/AbstractPosterFragment;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mModelReady:Z

    .line 44
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mViewReady:Z

    .line 45
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mInit:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mImageViewMap:Ljava/util/Map;

    .line 215
    new-instance v0, Lcom/miui/gallery/collage/core/poster/PosterFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment$3;-><init>(Lcom/miui/gallery/collage/core/poster/PosterFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/CollageLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/poster/PosterFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Lcom/miui/gallery/collage/widget/PosterLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/poster/PosterFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/core/poster/PosterFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/poster/PosterFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mImageViewMap:Ljava/util/Map;

    return-object v0
.end method

.method private generateCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 9
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 128
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->removeAllViews()V

    .line 129
    iget-object v4, p1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->items:[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;

    .line 130
    .local v4, "layoutItemModels":[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 131
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v5, v2

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    aget-object v3, v4, v2

    .line 133
    .local v3, "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    new-instance v1, Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/miui/gallery/collage/widget/CollageImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v6, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    iget-object v7, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v8, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->data:[F

    invoke-direct {v6, v7, v8}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    invoke-virtual {v5, v1, v6}, Lcom/miui/gallery/collage/widget/CollageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v3    # "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    :cond_1
    return-void
.end method

.method private static getResourceFloat(Landroid/content/res/Resources;IF)F
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 226
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 228
    .local v1, "value":Landroid/util/TypedValue;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 229
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 232
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 230
    .restart local p2    # "defaultValue":F
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PosterFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 8
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 143
    iget-object v4, p1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->items:[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;

    .line 144
    .local v4, "viewModels":[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v1

    .line 145
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 146
    aget-object v3, v4, v2

    .line 147
    .local v3, "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "child":Landroid/view/View;
    new-instance v5, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    iget-object v6, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v7, v3, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->data:[F

    invoke-direct {v5, v6, v7}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    :cond_0
    return-void
.end method

.method private refreshCollagePosition(Lcom/miui/gallery/collage/core/poster/PosterModel;)V
    .locals 8
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;

    .prologue
    .line 153
    iget-object v5, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->collagePositions:[Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    iget-object v6, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v6, v6

    invoke-static {v5, v6}, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->getCollagePositionModelByImageSize([Lcom/miui/gallery/collage/core/poster/CollagePositionModel;I)Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    move-result-object v0

    .line 154
    .local v0, "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v6, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    iget-object v7, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->position:[F

    invoke-direct {v6, v7}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;-><init>([F)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/collage/widget/CollageLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget v6, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->margin:F

    iget-boolean v7, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->ignoreEdgeMargin:Z

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/collage/widget/CollageLayout;->setCollageMargin(FZ)V

    .line 157
    iget-object v4, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->masks:[Ljava/lang/String;

    .line 158
    .local v4, "masks":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 159
    .local v3, "maskDrawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 160
    array-length v5, v4

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    .line 161
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->relativePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/collage/CollageUtils;->getDrawableByAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_0
    move-object v1, v3

    .line 167
    .local v1, "finalMaskDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v6, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;

    invoke-direct {v6, p0, v1, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment$1;-><init>(Lcom/miui/gallery/collage/core/poster/PosterFragment;[Landroid/graphics/drawable/Drawable;Lcom/miui/gallery/collage/core/poster/CollagePositionModel;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/collage/widget/CollageLayout;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private refreshLayout()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mInit:Z

    if-nez v0, :cond_1

    .line 112
    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mModelReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmapReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mViewReady:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->generateCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshCollagePosition(Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->setPosterModelToPosterLayout(Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setReplaceImageListener(Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;)V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmapExchangeListener:Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setBitmapExchangeListener(Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mInit:Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshCollageLayout(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshCollagePosition(Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->setPosterModelToPosterLayout(Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    goto :goto_0
.end method

.method private setPosterModelToPosterLayout(Lcom/miui/gallery/collage/core/poster/PosterModel;)V
    .locals 5
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;

    .prologue
    .line 177
    iget v2, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->ratio:F

    .line 178
    .local v2, "ratio":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 179
    iget v2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mDefaultRatio:F

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/widget/PosterLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 182
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 183
    .local v0, "currentRatio":F
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/widget/PosterLayout;->requestLayout()V

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    new-instance v4, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/collage/core/poster/PosterFragment$2;-><init>(Lcom/miui/gallery/collage/core/poster/PosterFragment;Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/collage/widget/PosterLayout;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method


# virtual methods
.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->dismissControlWindow()V

    .line 83
    :cond_0
    return-void
.end method

.method public export()Lcom/miui/gallery/collage/core/RenderData;
    .locals 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    iget-object v3, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    iget-object v4, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/PosterLayout;->getWidth()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/gallery/collage/render/CollageRender;->generateRenderData(Landroid/content/Context;Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;Lcom/miui/gallery/collage/widget/CollageLayout;I)Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    move-result-object v0

    .line 93
    .local v0, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    new-instance v1, Lcom/miui/gallery/collage/core/poster/PosterRenderData;

    invoke-direct {v1, v0}, Lcom/miui/gallery/collage/core/poster/PosterRenderData;-><init>(Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V

    return-object v1
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

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
    .line 206
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 207
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onBitmapsReceive()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshLayout()V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f040057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSelectModel(Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 1
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p2, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    .line 68
    iput-object p2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mLayoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mModelReady:Z

    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshLayout()V

    .line 71
    return-void
.end method

.method public onSimple()Ljava/util/HashMap;
    .locals 4
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
    const/4 v3, 0x3

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v1, "simple":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 100
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    const-string v2, "collage_save_type"

    const-string v3, "Poster"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "collage_image_size"

    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "Poster"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v1

    .line 99
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    iget-object v0, v2, Lcom/miui/gallery/collage/core/poster/PosterModel;->name:Ljava/lang/String;

    goto :goto_0

    .line 105
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mRootView:Landroid/view/ViewGroup;

    .line 58
    const v0, 0x7f120137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/PosterLayout;

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    .line 59
    const v0, 0x7f12012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageLayout;

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mViewReady:Z

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b028b

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->getResourceFloat(Landroid/content/res/Resources;IF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/core/poster/PosterFragment;->mDefaultRatio:F

    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/poster/PosterFragment;->refreshLayout()V

    .line 63
    return-void
.end method
