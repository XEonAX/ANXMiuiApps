.class public Lcom/miui/gallery/util/photoview/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# static fields
.field private static sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBit:Lcom/miui/gallery/util/photoview/TileBit;

.field private mColumn:I

.field private mDisplayRect:Landroid/graphics/RectF;

.field private mRecycleCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshId:I

.field private mRow:I

.field private mSampleSize:I

.field private mState:I

.field private mTileRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/RectF;ILcom/miui/gallery/util/photoview/BitmapRecycleCallback;)V
    .locals 1
    .param p1, "tileRect"    # Landroid/graphics/Rect;
    .param p2, "displayRect"    # Landroid/graphics/RectF;
    .param p3, "sampleSize"    # I
    .param p4, "callback"    # Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mRefreshId:I

    .line 51
    iput-object p1, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    .line 52
    iput-object p2, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    .line 53
    iput p3, p0, Lcom/miui/gallery/util/photoview/Tile;->mSampleSize:I

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mRecycleCallbackRef:Ljava/lang/ref/WeakReference;

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/photoview/Tile;->setActive(Z)V

    .line 56
    return-void
.end method

.method private getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mRecycleCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mRecycleCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/miui/gallery/util/photoview/Tile;->sPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/photoview/Tile;->sPaint:Landroid/graphics/Paint;

    .line 129
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/photoview/Tile;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private isContentValidate()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileBit;->isContentValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    or-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    goto :goto_0
.end method

.method private setDecoded()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/Tile;->isContentValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/miui/gallery/util/photoview/TileBitProvider;)Z
    .locals 2
    .param p1, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/gallery/util/photoview/Tile;->mSampleSize:I

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getTileBit(Landroid/graphics/Rect;I)Lcom/miui/gallery/util/photoview/TileBit;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/Tile;->setDecoded()V

    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/Tile;->isContentValidate()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/Tile;->isContentValidate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    if-nez p2, :cond_0

    .line 135
    invoke-static {}, Lcom/miui/gallery/util/photoview/Tile;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    invoke-virtual {v4}, Lcom/miui/gallery/util/photoview/TileBit;->getValidateWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mSampleSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 139
    .local v2, "realDisplayWidth":F
    iget-object v3, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    invoke-virtual {v4}, Lcom/miui/gallery/util/photoview/TileBit;->getValidateHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mSampleSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 140
    .local v0, "realDisplayHeight":F
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    .local v1, "realDisplayRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    invoke-virtual {v3, p1, v1, p2}, Lcom/miui/gallery/util/photoview/TileBit;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 152
    const/4 v3, 0x1

    .line 154
    .end local v0    # "realDisplayHeight":F
    .end local v1    # "realDisplayRect":Landroid/graphics/RectF;
    .end local v2    # "realDisplayWidth":F
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRefreshId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mRefreshId:I

    return v0
.end method

.method public getTileRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/Tile;->getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/TileBit;->recycle(Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mBit:Lcom/miui/gallery/util/photoview/TileBit;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/photoview/Tile;->setActive(Z)V

    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/Tile;->setDecoded()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mRefreshId:I

    .line 123
    return-void
.end method

.method public setIndex(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/miui/gallery/util/photoview/Tile;->mRow:I

    .line 60
    iput p2, p0, Lcom/miui/gallery/util/photoview/Tile;->mColumn:I

    .line 61
    return-void
.end method

.method public setRefreshId(I)V
    .locals 0
    .param p1, "refreshId"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/miui/gallery/util/photoview/Tile;->mRefreshId:I

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 180
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "tileRect %s, displayRect %s, sampleSize %d, state %d, refreshId %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    .line 181
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mSampleSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/miui/gallery/util/photoview/Tile;->mRefreshId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 180
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateDisplayParam(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "displayRect"    # Landroid/graphics/RectF;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/photoview/Tile;->setActive(Z)V

    .line 90
    return-void
.end method

.method protected updateTileParam(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "tileRect"    # Landroid/graphics/Rect;
    .param p2, "sampleSize"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/Tile;->mTileRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 94
    iput p2, p0, Lcom/miui/gallery/util/photoview/Tile;->mSampleSize:I

    .line 95
    return-void
.end method
