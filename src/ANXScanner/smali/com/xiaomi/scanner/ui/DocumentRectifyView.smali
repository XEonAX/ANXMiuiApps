.class public Lcom/xiaomi/scanner/ui/DocumentRectifyView;
.super Landroid/view/View;
.source "DocumentRectifyView.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private mCorners:[Landroid/graphics/Point;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private mHalfIconHeight:I

.field private mHalfIconWidth:I

.field private final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageCorners:[Landroid/graphics/Point;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLastX:F

.field private mLastY:F

.field private mMovingPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderedCorners:[Landroid/graphics/Point;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPointComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DocumentRectifyView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 29
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TOUCH_TOLERANCE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageCorners:[Landroid/graphics/Point;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 405
    new-instance v1, Lcom/xiaomi/scanner/ui/DocumentRectifyView$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView$1;-><init>(Lcom/xiaomi/scanner/ui/DocumentRectifyView;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPointComparator:Ljava/util/Comparator;

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x4e000000

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mHalfIconWidth:I

    .line 62
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mHalfIconHeight:I

    .line 64
    :cond_0
    return-void
.end method

.method private detectMovingEdges(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 266
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 267
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    array-length v8, v9

    .line 269
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 270
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    aget-object v0, v9, v1

    .line 271
    .local v0, "corner":Landroid/graphics/Point;
    iget v9, v0, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget v10, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TOUCH_TOLERANCE:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    iget v9, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v9, p2

    .line 272
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget v10, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TOUCH_TOLERANCE:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 273
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v0    # "corner":Landroid/graphics/Point;
    :cond_0
    :goto_1
    return-void

    .line 269
    .restart local v0    # "corner":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "corner":Landroid/graphics/Point;
    :cond_2
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 279
    .local v2, "distance":D
    const/4 v4, -0x1

    .line 280
    .local v4, "lineIndex":I
    new-instance v5, Landroid/graphics/Point;

    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {v5, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 282
    .local v5, "point":Landroid/graphics/Point;
    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v9, v8, -0x1

    if-ge v1, v9, :cond_4

    .line 283
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    add-int/lit8 v11, v1, 0x1

    aget-object v10, v10, v11

    invoke-direct {p0, v9, v10, v5}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->distanceToLine(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v6

    .line 284
    .local v6, "newDistance":D
    sget v9, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TOUCH_TOLERANCE:I

    int-to-double v10, v9

    cmpg-double v9, v6, v10

    if-gez v9, :cond_3

    cmpg-double v9, v2, v6

    if-gez v9, :cond_3

    .line 285
    move-wide v2, v6

    .line 286
    move v4, v1

    .line 282
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 289
    .end local v6    # "newDistance":D
    :cond_4
    const/4 v9, -0x1

    if-le v4, v9, :cond_5

    .line 290
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    :cond_5
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    invoke-direct {p0, v9, v5}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->isPointInRect([Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 297
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private distanceToLine(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 8
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;
    .param p3, "p3"    # Landroid/graphics/Point;

    .prologue
    .line 314
    invoke-virtual {p3, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3, p2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    :cond_0
    const-wide/16 v4, 0x0

    .line 328
    :goto_0
    return-wide v4

    .line 318
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    iget v3, p3, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget v4, p3, Landroid/graphics/Point;->y:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iget v5, p3, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0

    .line 324
    :cond_2
    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int v0, v3, v4

    .line 325
    .local v0, "A":I
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v4

    .line 326
    .local v1, "B":I
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 328
    .local v2, "C":I
    iget v3, p3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v0

    iget v4, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    mul-int v3, v0, v0

    mul-int v6, v1, v1

    add-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method private getCropRect([Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "corners"    # [Landroid/graphics/Point;

    .prologue
    .line 344
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 345
    :cond_0
    const/4 v6, 0x0

    .line 367
    :goto_0
    return-object v6

    .line 347
    :cond_1
    const v3, 0x7fffffff

    .line 348
    .local v3, "minX":I
    const/4 v1, -0x1

    .line 349
    .local v1, "maxX":I
    const v4, 0x7fffffff

    .line 350
    .local v4, "minY":I
    const/4 v2, -0x1

    .line 351
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, p1

    if-ge v0, v6, :cond_6

    .line 352
    aget-object v5, p1, v0

    .line 353
    .local v5, "p":Landroid/graphics/Point;
    iget v6, v5, Landroid/graphics/Point;->x:I

    if-le v3, v6, :cond_2

    .line 354
    iget v3, v5, Landroid/graphics/Point;->x:I

    .line 356
    :cond_2
    iget v6, v5, Landroid/graphics/Point;->x:I

    if-ge v1, v6, :cond_3

    .line 357
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 359
    :cond_3
    iget v6, v5, Landroid/graphics/Point;->y:I

    if-le v4, v6, :cond_4

    .line 360
    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 362
    :cond_4
    iget v6, v5, Landroid/graphics/Point;->y:I

    if-ge v2, v6, :cond_5

    .line 363
    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 351
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    .end local v5    # "p":Landroid/graphics/Point;
    :cond_6
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private isPointInRect([Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "corners"    # [Landroid/graphics/Point;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 332
    if-nez p2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getCropRect([Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    .line 336
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 340
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v7, 0x0

    .line 194
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 196
    .local v4, "size":I
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    invoke-direct {p0, v5}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getCropRect([Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v3

    .line 198
    .local v3, "rect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 199
    cmpl-float v5, p1, v7

    if-lez v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 204
    :goto_0
    cmpl-float v5, p2, v7

    if-lez v5, :cond_2

    .line 205
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 211
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 213
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .local v1, "index":I
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    aget-object v2, v5, v1

    .line 215
    .local v2, "point":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v5, p1

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6, v7}, Lcom/xiaomi/scanner/util/Util;->clamp(FFF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 216
    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v5, p2

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7}, Lcom/xiaomi/scanner/util/Util;->clamp(FFF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "point":Landroid/graphics/Point;
    .restart local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 207
    :cond_2
    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-static {v5, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    .line 218
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local v0    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->onCropChange()V

    .line 219
    return-void
.end method

.method private onCropChange()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->orderCorners([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    .line 151
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->invalidate()V

    .line 152
    return-void
.end method

.method private orderCorners([Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 10
    .param p1, "corners"    # [Landroid/graphics/Point;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 376
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    .line 377
    :cond_0
    sget-object v6, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orderCorners: require 4 points but found "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x0

    .line 402
    :cond_1
    :goto_1
    return-object v1

    .line 377
    :cond_2
    array-length v4, p1

    goto :goto_0

    .line 382
    :cond_3
    array-length v2, p1

    .line 383
    .local v2, "size":I
    new-array v1, v2, [Landroid/graphics/Point;

    .line 384
    .local v1, "orderedCorners":[Landroid/graphics/Point;
    invoke-static {p1, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "cornerList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPointComparator:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 391
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v6, v4, :cond_4

    .line 392
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 393
    .local v3, "temp":Landroid/graphics/Point;
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-interface {v0, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    .end local v3    # "temp":Landroid/graphics/Point;
    :cond_4
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ge v5, v4, :cond_1

    .line 397
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 398
    .restart local v3    # "temp":Landroid/graphics/Point;
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-interface {v0, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private toImageCropRect([Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 9
    .param p1, "corners"    # [Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 118
    sget-object v6, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "toImageCropRect: null corners!"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-object v2

    .line 122
    :cond_1
    array-length v5, p1

    .line 123
    .local v5, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 124
    .local v3, "scaleX":F
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageHeight:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 125
    .local v4, "scaleY":F
    cmpl-float v6, v3, v8

    if-eqz v6, :cond_0

    cmpl-float v6, v4, v8

    if-eqz v6, :cond_0

    .line 126
    new-array v2, v5, [Landroid/graphics/Point;

    .line 127
    .local v2, "points":[Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 128
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 129
    .local v1, "p":Landroid/graphics/Point;
    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 130
    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 131
    aput-object v1, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toUICropRect([Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 9
    .param p1, "corners"    # [Landroid/graphics/Point;

    .prologue
    const/4 v8, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 95
    sget-object v6, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "toUICropRect: null corners!"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x0

    .line 113
    :cond_0
    :goto_0
    return-object v2

    .line 99
    :cond_1
    array-length v5, p1

    .line 100
    .local v5, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 101
    .local v3, "scaleX":F
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageHeight:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 102
    .local v4, "scaleY":F
    cmpl-float v6, v3, v8

    if-eqz v6, :cond_2

    cmpl-float v6, v4, v8

    if-eqz v6, :cond_2

    .line 103
    new-array v2, v5, [Landroid/graphics/Point;

    .line 104
    .local v2, "points":[Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 105
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 106
    .local v1, "p":Landroid/graphics/Point;
    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 107
    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 108
    aput-object v1, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "p":Landroid/graphics/Point;
    .end local v2    # "points":[Landroid/graphics/Point;
    :cond_2
    move-object v2, p1

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public getImageCropCorners()[Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->toImageCropRect([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public isMovingEdges()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 161
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDraw: null corners!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    array-length v0, v0

    if-ge v7, v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: null corner at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    const/4 v7, 0x0

    :goto_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    add-int/lit8 v3, v7, 0x1

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    add-int/lit8 v4, v7, 0x1

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 182
    :cond_4
    const/4 v7, 0x0

    :goto_4
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    array-length v0, v0

    if-ge v7, v0, :cond_5

    .line 183
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mHalfIconWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mHalfIconHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mHalfIconWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mHalfIconHeight:I

    add-int/2addr v3, v4

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    .local v6, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 190
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 74
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageCorners:[Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->toUICropRect([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->onCropChange()V

    .line 78
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->onCropChange()V

    .line 70
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->isMovingEdges()Z

    move-result v0

    .line 224
    .local v0, "last":Z
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 226
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 228
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 254
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->isMovingEdges()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 230
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->detectMovingEdges(FF)V

    .line 231
    iput v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mLastX:F

    .line 232
    iput v2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mLastY:F

    goto :goto_1

    .line 236
    :pswitch_1
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    iget v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mLastX:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mLastY:F

    sub-float v5, v2, v5

    invoke-direct {p0, v4, v5}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->moveEdges(FF)V

    .line 239
    :cond_4
    iput v1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mLastX:F

    .line 240
    iput v2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mLastY:F

    goto :goto_1

    .line 245
    :pswitch_2
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mMovingPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 246
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    if-eqz v4, :cond_5

    .line 247
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mOrderedCorners:[Landroid/graphics/Point;

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mCorners:[Landroid/graphics/Point;

    .line 249
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->invalidate()V

    goto :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImageParams(II[Landroid/graphics/Point;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "cropCorners"    # [Landroid/graphics/Point;

    .prologue
    .line 81
    iput p1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageWidth:I

    .line 82
    iput p2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageHeight:I

    .line 83
    if-nez p3, :cond_1

    .line 84
    sget-object v2, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "setImageParams: null crop corners!"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageCorners:[Landroid/graphics/Point;

    array-length v2, v2

    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 88
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->mImageCorners:[Landroid/graphics/Point;

    aget-object v3, p3, v0

    aput-object v3, v2, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
