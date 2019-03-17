.class public Lcom/miui/gallery/collage/core/poster/ElementPositionModel;
.super Ljava/lang/Object;
.source "ElementPositionModel.java"


# instance fields
.field public height:F

.field public locationType:I

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public static getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/core/poster/ElementPositionModel;FFIIZ)V
    .locals 5
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "positionModel"    # Lcom/miui/gallery/collage/core/poster/ElementPositionModel;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "parentWidth"    # I
    .param p5, "parentHeight"    # I
    .param p6, "isRTL"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    iget v2, p1, Lcom/miui/gallery/collage/core/poster/ElementPositionModel;->x:F

    int-to-float v3, p4

    mul-float v0, v2, v3

    .line 27
    .local v0, "x":F
    iget v2, p1, Lcom/miui/gallery/collage/core/poster/ElementPositionModel;->y:F

    int-to-float v3, p5

    mul-float v1, v2, v3

    .line 28
    .local v1, "y":F
    iget v2, p1, Lcom/miui/gallery/collage/core/poster/ElementPositionModel;->locationType:I

    packed-switch v2, :pswitch_data_0

    .line 66
    :goto_0
    if-eqz p6, :cond_0

    .line 67
    int-to-float v2, p4

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 69
    :cond_0
    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 70
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 71
    return-void

    .line 30
    :pswitch_0
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 31
    iput v1, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 34
    :pswitch_1
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 35
    div-float v2, p3, v4

    sub-float v2, v1, v2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 38
    :pswitch_2
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 39
    sub-float v2, v1, p3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 42
    :pswitch_3
    div-float v2, p2, v4

    sub-float v2, v0, v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 43
    iput v1, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 46
    :pswitch_4
    div-float v2, p2, v4

    sub-float v2, v0, v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 47
    div-float v2, p3, v4

    sub-float v2, v1, v2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 50
    :pswitch_5
    div-float v2, p2, v4

    sub-float v2, v0, v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 51
    sub-float v2, v1, p3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 54
    :pswitch_6
    sub-float v2, v0, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 55
    iput v1, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 58
    :pswitch_7
    sub-float v2, v0, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 59
    div-float v2, p3, v4

    sub-float v2, v1, v2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 62
    :pswitch_8
    sub-float v2, v0, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 63
    sub-float v2, v1, p3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
