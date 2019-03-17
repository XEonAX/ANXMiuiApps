.class public Lcom/miui/gallery/util/photoview/TileView;
.super Ljava/lang/Object;
.source "TileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;
    }
.end annotation


# instance fields
.field private mAttachViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeHandler:Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;

.field private mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

.field private mDestroyedTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/photoview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/util/photoview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMemoryTrimmed:Z

.field private mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

.field private mRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

.field private mRefreshId:I

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mRotation:F

.field private mTempDecodeTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/photoview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mTempDrawingTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/util/photoview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mTileIntersect:Landroid/graphics/RectF;

.field private mTileRange:Landroid/graphics/Rect;

.field private final mTileSize:I

.field private mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

.field private mViewPort:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/photoview/TileBitProvider;Landroid/view/View;Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V
    .locals 3
    .param p1, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;
    .param p2, "attachView"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .param p4, "trimMemoryCallback"    # Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mDestroyedTiles:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDrawingTiles:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDecodeTiles:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mAttachViewRef:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object p3, p0, Lcom/miui/gallery/util/photoview/TileView;->mRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    .line 57
    iput-object p4, p0, Lcom/miui/gallery/util/photoview/TileView;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .line 58
    new-instance v0, Lcom/miui/gallery/util/photoview/TileDecodeManager;

    new-instance v1, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;-><init>(Lcom/miui/gallery/util/photoview/TileView;Lcom/miui/gallery/util/photoview/TileView$1;)V

    iput-object v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeHandler:Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;

    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/util/photoview/TileDecodeManager;-><init>(Landroid/os/Handler;Lcom/miui/gallery/util/photoview/TileBitProvider;)V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/photoview/TileView;->computeTileSize(Lcom/miui/gallery/util/photoview/TileBitProvider;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/photoview/TileView;)Lcom/miui/gallery/util/photoview/TileDecodeManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/photoview/TileView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/photoview/TileView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileView;->invalidate()Z

    move-result v0

    return v0
.end method

.method private calculateInSampleSize(Landroid/graphics/RectF;)I
    .locals 5
    .param p1, "displayRect"    # Landroid/graphics/RectF;

    .prologue
    .line 118
    const/4 v2, 0x1

    .line 120
    .local v2, "inSampleSize":I
    iget-object v3, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v3}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 121
    .local v1, "halfWidth":I
    iget-object v3, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v3}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 122
    .local v0, "halfHeight":I
    :goto_0
    div-int v3, v1, v2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    div-int v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 123
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 126
    :cond_1
    return v2
.end method

.method private ceil(II)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "sampleSize"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v1, v0

    mul-int/2addr v1, p2

    if-ge v1, p1, :cond_0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    iget v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v1, v0

    mul-int/2addr v1, p2

    return v1
.end method

.method private computeTileSize(Lcom/miui/gallery/util/photoview/TileBitProvider;)I
    .locals 5
    .param p1, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;

    .prologue
    const/16 v4, 0x4cc

    const/16 v3, 0x400

    .line 63
    const/16 v2, 0x400

    .line 64
    .local v2, "tileSize":I
    invoke-interface {p1}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageHeight()I

    move-result v0

    .line 65
    .local v0, "imageHeight":I
    invoke-interface {p1}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageWidth()I

    move-result v1

    .line 66
    .local v1, "imageWidth":I
    if-le v0, v3, :cond_0

    if-ge v0, v4, :cond_0

    .line 67
    move v2, v0

    .line 69
    :cond_0
    if-le v1, v3, :cond_1

    if-ge v1, v4, :cond_1

    .line 70
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 72
    :cond_1
    return v2
.end method

.method private floor(II)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "sampleSize"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v1, v0

    mul-int/2addr v1, p2

    if-gt v1, p1, :cond_0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v1, v2

    mul-int/2addr v1, p2

    return v1
.end method

.method private getAttachView()Landroid/view/View;
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mAttachViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mAttachViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 343
    .local v0, "view":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/miui/gallery/util/photoview/TileView;->cleanup()V

    .line 346
    :cond_0
    return-object v0

    .line 342
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private increaseRefreshId()V
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    .line 309
    :cond_0
    iget v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    .line 310
    return-void
.end method

.method private invalidate()Z
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileView;->getAttachView()Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutTiles(Landroid/graphics/RectF;F)V
    .locals 20
    .param p1, "displayRect"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 136
    .local v14, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-virtual {v2}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->clear()V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 141
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/util/photoview/TileView;->mRotation:F

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    move/from16 v0, p2

    invoke-virtual {v2, v0, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v2}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getRotation()I

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v5}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getRotation()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v5, v6, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 148
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/util/photoview/TileView;->calculateInSampleSize(Landroid/graphics/RectF;)I

    move-result v7

    .line 154
    .local v7, "sampleSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v2, v5

    .line 155
    .local v9, "flipLeft":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v2}, Lcom/miui/gallery/util/photoview/TileBitProvider;->isFlip()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float v9, v2, v5

    .line 160
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v2}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v12, v2, v5

    .line 161
    .local v12, "scaleX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v2}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v13, v2, v5

    .line 164
    .local v13, "scaleY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, v9, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v5}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v10, v2

    .line 165
    .local v10, "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v5}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v16, v0

    .line 166
    .local v16, "top":I
    int-to-float v2, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, v12

    add-float/2addr v2, v5

    float-to-int v11, v2

    .line 167
    .local v11, "right":I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileIntersect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v13

    add-float/2addr v2, v5

    float-to-int v8, v2

    .line 169
    .local v8, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lcom/miui/gallery/util/photoview/TileView;->floor(II)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/util/photoview/TileView;->floor(II)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/miui/gallery/util/photoview/TileView;->ceil(II)I

    move-result v17

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/miui/gallery/util/photoview/TileView;->ceil(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v2, v5

    .line 173
    .local v3, "displayX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, v13

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v2, v5

    .line 175
    .local v4, "displayY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    div-float v5, v2, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    div-float v6, v2, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/photoview/TileView;->refreshTiles(FFFFI)V

    .line 176
    const-string v2, "TileView"

    const-string v5, "layoutTiles, tile range: %s, display rect: %s, costs %d ms."

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 176
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v5, v6, v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static makeTileKey(Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 329
    if-nez p0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 332
    :cond_0
    const/16 v0, 0x11

    .line 333
    .local v0, "result":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v0, v1, 0x20f

    .line 334
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 335
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int v0, v1, v2

    .line 336
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int v0, v1, v2

    .line 337
    goto :goto_0
.end method

.method private obtainTile(Landroid/graphics/Rect;Landroid/graphics/RectF;I)Lcom/miui/gallery/util/photoview/Tile;
    .locals 3
    .param p1, "tileRect"    # Landroid/graphics/Rect;
    .param p2, "displayRect"    # Landroid/graphics/RectF;
    .param p3, "sampleSize"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mDestroyedTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mDestroyedTiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/photoview/Tile;

    .line 193
    .local v0, "tile":Lcom/miui/gallery/util/photoview/Tile;
    invoke-virtual {v0, p1, p3}, Lcom/miui/gallery/util/photoview/Tile;->updateTileParam(Landroid/graphics/Rect;I)V

    .line 194
    invoke-virtual {v0, p2}, Lcom/miui/gallery/util/photoview/Tile;->updateDisplayParam(Landroid/graphics/RectF;)V

    .line 198
    :goto_0
    return-object v0

    .line 196
    .end local v0    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :cond_0
    new-instance v0, Lcom/miui/gallery/util/photoview/Tile;

    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileView;->mRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/miui/gallery/util/photoview/Tile;-><init>(Landroid/graphics/Rect;Landroid/graphics/RectF;ILcom/miui/gallery/util/photoview/BitmapRecycleCallback;)V

    .restart local v0    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    goto :goto_0
.end method

.method private refreshTiles(FFFFI)V
    .locals 15
    .param p1, "displayX"    # F
    .param p2, "displayY"    # F
    .param p3, "displaySizeX"    # F
    .param p4, "displaySizeY"    # F
    .param p5, "sampleSize"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileView;->increaseRefreshId()V

    .line 204
    move/from16 v5, p1

    .line 205
    .local v5, "loopX":F
    move/from16 v6, p2

    .line 206
    .local v6, "loopY":F
    const/4 v7, 0x0

    .line 207
    .local v7, "row":I
    const/4 v1, 0x0

    .line 208
    .local v1, "column":I
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    iget v12, v13, Landroid/graphics/Rect;->top:I

    .local v12, "y":I
    :goto_0
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v12, v13, :cond_3

    .line 209
    const/4 v1, 0x0

    .line 210
    add-int/lit8 v7, v7, 0x1

    .line 211
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    iget v11, v13, Landroid/graphics/Rect;->left:I

    .local v11, "x":I
    :goto_1
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileRange:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    if-ge v11, v13, :cond_2

    .line 212
    add-int/lit8 v1, v1, 0x1

    .line 213
    new-instance v10, Landroid/graphics/Rect;

    iget v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int v13, v13, p5

    add-int/2addr v13, v11

    iget v14, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int v14, v14, p5

    add-int/2addr v14, v12

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v10, "tileRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    add-float v13, v5, p3

    add-float v14, v6, p4

    invoke-direct {v2, v5, v6, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 215
    .local v2, "displayRect":Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/miui/gallery/util/photoview/TileView;->makeTileKey(Landroid/graphics/Rect;)I

    move-result v4

    .line 216
    .local v4, "key":I
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/util/photoview/Tile;

    .line 217
    .local v9, "tile":Lcom/miui/gallery/util/photoview/Tile;
    if-eqz v9, :cond_0

    .line 218
    invoke-virtual {v9, v2}, Lcom/miui/gallery/util/photoview/Tile;->updateDisplayParam(Landroid/graphics/RectF;)V

    .line 219
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    :goto_2
    invoke-virtual {v9, v7, v1}, Lcom/miui/gallery/util/photoview/Tile;->setIndex(II)V

    .line 231
    iget v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    invoke-virtual {v9, v13}, Lcom/miui/gallery/util/photoview/Tile;->setRefreshId(I)V

    .line 232
    add-float v5, v5, p3

    .line 211
    iget v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int v13, v13, p5

    add-int/2addr v11, v13

    goto :goto_1

    .line 221
    :cond_0
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-virtual {v13, v4}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->getDecodingTile(I)Lcom/miui/gallery/util/photoview/Tile;

    move-result-object v9

    .line 222
    if-eqz v9, :cond_1

    .line 223
    invoke-virtual {v9, v2}, Lcom/miui/gallery/util/photoview/Tile;->updateDisplayParam(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 225
    :cond_1
    move/from16 v0, p5

    invoke-direct {p0, v10, v2, v0}, Lcom/miui/gallery/util/photoview/TileView;->obtainTile(Landroid/graphics/Rect;Landroid/graphics/RectF;I)Lcom/miui/gallery/util/photoview/Tile;

    move-result-object v9

    .line 226
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDecodeTiles:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v13, "TileView"

    const-string/jumbo v14, "tile create %s"

    invoke-static {v13, v14, v9}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 234
    .end local v2    # "displayRect":Landroid/graphics/RectF;
    .end local v4    # "key":I
    .end local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    .end local v10    # "tileRect":Landroid/graphics/Rect;
    :cond_2
    move/from16 v5, p1

    .line 235
    add-float v6, v6, p4

    .line 208
    iget v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int v13, v13, p5

    add-int/2addr v12, v13

    goto :goto_0

    .line 238
    .end local v11    # "x":I
    :cond_3
    invoke-direct {p0, v7, v1}, Lcom/miui/gallery/util/photoview/TileView;->trimMemoryIfNeeded(II)V

    .line 241
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 242
    .local v8, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v8, :cond_5

    .line 243
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDrawingTiles:Landroid/util/SparseArray;

    iget-object v14, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 244
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/util/photoview/Tile;

    .line 245
    .restart local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    invoke-virtual {v9}, Lcom/miui/gallery/util/photoview/Tile;->recycle()V

    .line 246
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDestroyedTiles:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 250
    :cond_5
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 251
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 252
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_6

    .line 253
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/util/photoview/Tile;

    .line 254
    .restart local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v9}, Lcom/miui/gallery/util/photoview/Tile;->getTileRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/gallery/util/photoview/TileView;->makeTileKey(Landroid/graphics/Rect;)I

    move-result v14

    invoke-virtual {v13, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 257
    .end local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :cond_6
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 258
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileView;->invalidate()Z

    .line 261
    :cond_7
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDecodeTiles:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/util/photoview/Tile;

    .line 262
    .restart local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    iget-object v14, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-virtual {v14, v9}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->put(Lcom/miui/gallery/util/photoview/Tile;)Z

    goto :goto_5

    .line 264
    .end local v9    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :cond_8
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 265
    iget-object v13, p0, Lcom/miui/gallery/util/photoview/TileView;->mTempDecodeTiles:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 266
    return-void
.end method

.method private trimMemoryIfNeeded(II)V
    .locals 8
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    const/4 v3, 0x1

    .line 269
    iget-boolean v4, p0, Lcom/miui/gallery/util/photoview/TileView;->mIsMemoryTrimmed:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/TileView;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    if-eqz v4, :cond_0

    .line 270
    invoke-static {}, Lcom/miui/gallery/Config$TileConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v4

    int-to-long v0, v4

    .line 271
    .local v0, "bytesPerPixel":J
    mul-int v4, p1, p2

    iget v5, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/util/photoview/TileView;->mTileSize:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v4, v0

    const-wide/32 v6, 0x3000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    move v2, v3

    .line 272
    .local v2, "needTrimMemory":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 273
    iget-object v4, p0, Lcom/miui/gallery/util/photoview/TileView;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    invoke-interface {v4, v3}, Lcom/miui/gallery/util/photoview/TrimMemoryCallback;->onTrimMemory(I)V

    .line 274
    iput-boolean v3, p0, Lcom/miui/gallery/util/photoview/TileView;->mIsMemoryTrimmed:Z

    .line 277
    .end local v0    # "bytesPerPixel":J
    .end local v2    # "needTrimMemory":Z
    :cond_0
    return-void

    .line 271
    .restart local v0    # "bytesPerPixel":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeManager:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-virtual {v2}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->cancel()V

    .line 97
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mDecodeHandler:Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;

    invoke-virtual {v2, v4}, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 99
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/photoview/Tile;

    invoke-virtual {v2}, Lcom/miui/gallery/util/photoview/Tile;->recycle()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 103
    iget-boolean v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mIsMemoryTrimmed:Z

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/gallery/util/photoview/TrimMemoryCallback;->onStopTrimMemory(I)V

    .line 106
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/TileView;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .line 108
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/util/photoview/TileView;->mIsMemoryTrimmed:Z

    .line 110
    :cond_2
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/TileView;->mRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    .line 111
    if-lez v1, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileView;->invalidate()Z

    .line 115
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 281
    .local v4, "start":J
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 282
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 303
    :goto_0
    return-void

    .line 285
    :cond_0
    const/4 v1, 0x0

    .line 286
    .local v1, "saveCount":I
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v6}, Lcom/miui/gallery/util/photoview/TileBitProvider;->isFlip()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v6}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getRotation()I

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mRotation:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 288
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v6}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getRotation()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/util/photoview/TileView;->mRotation:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 289
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v6}, Lcom/miui/gallery/util/photoview/TileBitProvider;->isFlip()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 293
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 294
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/TileView;->mDrawingTiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/photoview/Tile;

    .line 295
    .local v3, "tile":Lcom/miui/gallery/util/photoview/Tile;
    invoke-virtual {v3}, Lcom/miui/gallery/util/photoview/Tile;->getRefreshId()I

    move-result v6

    iget v7, p0, Lcom/miui/gallery/util/photoview/TileView;->mRefreshId:I

    if-ne v6, v7, :cond_3

    .line 296
    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/util/photoview/Tile;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 293
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v3    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :cond_4
    if-lez v1, :cond_5

    .line 300
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 302
    :cond_5
    const-string v6, "TileView"

    const-string v7, "TileView draw cost %d ms."

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getTileProviderHeight()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v0}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTileProviderRotation()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v0}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTileProviderWidth()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v0}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyInvalidate(Landroid/graphics/RectF;F)V
    .locals 0
    .param p1, "displayRect"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/photoview/TileView;->layoutTiles(Landroid/graphics/RectF;F)V

    .line 77
    return-void
.end method

.method public setViewPort(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewPort"    # Landroid/graphics/Rect;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileView;->mViewPort:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    return-void
.end method
