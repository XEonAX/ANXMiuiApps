.class public Lcom/miui/gallery/provider/peoplecover/CoverScaleStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverScaleStrategy.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;-><init>(I)V

    .line 12
    return-void
.end method

.method public static isFaceFullInDisplayRect(Landroid/graphics/Rect;II)Z
    .locals 7
    .param p0, "facePos"    # Landroid/graphics/Rect;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 31
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v5

    .line 32
    .local v3, "rawWidth":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, v4, v5

    .line 33
    .local v2, "rawHeight":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 35
    .local v1, "prefSize":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v5, p1, v5

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, p2, v6

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v0, v4, 0x2

    .line 38
    .local v0, "maxSizeWithFaceCentral":I
    if-gt v1, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isValid(Landroid/database/Cursor;)Z
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 v4, 0x0

    .line 26
    :goto_0
    return v4

    .line 19
    :cond_0
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 20
    .local v3, "width":I
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 21
    .local v2, "height":I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/peoplecover/CoverScaleStrategy;->getFacePositionRect(Landroid/database/Cursor;)Landroid/graphics/RectF;

    move-result-object v1

    .line 22
    .local v1, "faceRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 26
    .local v0, "facePos":Landroid/graphics/Rect;
    invoke-static {v0, v3, v2}, Lcom/miui/gallery/provider/peoplecover/CoverScaleStrategy;->isFaceFullInDisplayRect(Landroid/graphics/Rect;II)Z

    move-result v4

    goto :goto_0
.end method
