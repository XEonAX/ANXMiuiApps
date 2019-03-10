.class public Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongBitmapDrawable"
.end annotation


# static fields
.field static final MAX_PART_HEIGHT:I = 0x400


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "longBitmap"    # Landroid/graphics/Bitmap;

    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 106
    if-nez p1, :cond_13

    return-void

    .line 108
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 110
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 111
    .local v2, "restHeight":I
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 113
    .local v3, "paint":Landroid/graphics/Paint;
    :goto_26
    if-lez v2, :cond_4b

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 115
    .local v4, "currY":I
    const/16 v5, 0x400

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 116
    .local v5, "currBmpHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 117
    .local v6, "currBmp":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    neg-int v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, p1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sub-int/2addr v2, v5

    .line 122
    .end local v4    # "currY":I
    .end local v5    # "currBmpHeight":I
    .end local v6    # "currBmp":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    goto :goto_26

    .line 123
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "file"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :try_start_15
    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_69

    .line 88
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    nop

    .line 87
    nop

    .line 89
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    const/16 v6, 0x400

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 91
    .local v4, "restHeight":I
    :goto_32
    if-lez v4, :cond_57

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 93
    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v0, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 96
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    .line 97
    if-gez v4, :cond_56

    .line 98
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v4

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_56
    goto :goto_32

    .line 101
    :cond_57
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 103
    return-void

    .line 85
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "restHeight":I
    :catch_69
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    return-void
.end method

.method public constructor <init>([Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 126
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 127
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 128
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    invoke-virtual {p0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v1, v2, :cond_41

    .line 137
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    .line 138
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 139
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    :cond_36
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 143
    .end local v1    # "i":I
    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    return-void
.end method

.method public getBitmaps()[Landroid/graphics/Bitmap;
    .registers 2

    .line 177
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 4

    .line 154
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_1f

    .line 155
    :cond_b
    const/4 v0, 0x0

    .line 156
    .local v0, "totalHeight":I
    nop

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    .line 157
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 159
    .end local v1    # "i":I
    :cond_1e
    return v0

    .line 154
    .end local v0    # "totalHeight":I
    :cond_1f
    :goto_1f
    return v1
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .line 148
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 149
    :cond_b
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 148
    :cond_14
    :goto_14
    return v1
.end method

.method public getOpacity()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 164
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 169
    return-void
.end method
