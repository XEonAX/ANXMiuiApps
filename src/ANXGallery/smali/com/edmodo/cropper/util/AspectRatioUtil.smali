.class public Lcom/edmodo/cropper/util/AspectRatioUtil;
.super Ljava/lang/Object;
.source "AspectRatioUtil.java"


# direct methods
.method public static calculateAspectRatio(FFFF)F
    .locals 3
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F

    .prologue
    .line 28
    sub-float v1, p2, p0

    .line 29
    .local v1, "width":F
    sub-float v0, p3, p1

    .line 30
    .local v0, "height":F
    div-float v2, v1, v0

    return v2
.end method

.method public static calculateAspectRatio(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static calculateBottom(FFFF)F
    .locals 2
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 86
    sub-float v0, p2, p0

    .line 91
    .local v0, "width":F
    div-float v1, v0, p3

    add-float/2addr v1, p1

    return v1
.end method

.method public static calculateHeight(FF)F
    .locals 1
    .param p0, "width"    # F
    .param p1, "targetAspectRatio"    # F

    .prologue
    .line 105
    div-float v0, p0, p1

    return v0
.end method

.method public static calculateLeft(FFFF)F
    .locals 2
    .param p0, "top"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 46
    sub-float v0, p2, p0

    .line 50
    .local v0, "height":F
    mul-float v1, p3, v0

    sub-float v1, p1, v1

    return v1
.end method

.method public static calculateRight(FFFF)F
    .locals 2
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 73
    sub-float v0, p2, p1

    .line 77
    .local v0, "height":F
    mul-float v1, p3, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public static calculateTop(FFFF)F
    .locals 2
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 59
    sub-float v0, p1, p0

    .line 64
    .local v0, "width":F
    div-float v1, v0, p3

    sub-float v1, p2, v1

    return v1
.end method

.method public static calculateWidth(FF)F
    .locals 1
    .param p0, "height"    # F
    .param p1, "targetAspectRatio"    # F

    .prologue
    .line 98
    mul-float v0, p1, p0

    return v0
.end method
