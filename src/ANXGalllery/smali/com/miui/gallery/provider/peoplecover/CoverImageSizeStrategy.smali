.class public Lcom/miui/gallery/provider/peoplecover/CoverImageSizeStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverImageSizeStrategy.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public isValid(Landroid/database/Cursor;)Z
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v5

    .line 24
    :cond_1
    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 25
    .local v4, "width":I
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 26
    .local v2, "height":I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/peoplecover/CoverImageSizeStrategy;->getFacePositionRect(Landroid/database/Cursor;)Landroid/graphics/RectF;

    move-result-object v1

    .line 27
    .local v1, "faceRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    int-to-float v9, v4

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v2

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .local v0, "facePos":Landroid/graphics/Rect;
    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-static {v0, v4, v2, v6}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->roundToSquareAndScale(Landroid/graphics/Rect;IIF)Landroid/graphics/Rect;

    move-result-object v3

    .line 33
    .local v3, "translateRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 34
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0258

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 35
    const/4 v5, 0x1

    goto :goto_0
.end method
