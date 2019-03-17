.class Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;
.super Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GradientDelegator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator",
        "<",
        "Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mColors:[I


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->getColors()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    .line 115
    return-void
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 150
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private findColorProgress(III)F
    .locals 7
    .param p1, "color"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 202
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->getValueProgress(III)F

    move-result v0

    .line 203
    .local v0, "progress_a":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->getValueProgress(III)F

    move-result v3

    .line 204
    .local v3, "progress_r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->getValueProgress(III)F

    move-result v2

    .line 205
    .local v2, "progress_g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->getValueProgress(III)F

    move-result v1

    .line 206
    .local v1, "progress_b":F
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private getValueProgress(III)F
    .locals 2
    .param p1, "value"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 197
    if-ne p3, p2, :cond_0

    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p2

    int-to-float v0, v0

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private isValueInside(III)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 210
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    :cond_0
    if-lt p1, p3, :cond_2

    if-gt p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method findLevel(I)I
    .locals 25
    .param p1, "color"    # I

    .prologue
    .line 155
    const/high16 v22, -0x1000000

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 156
    const/16 v22, 0x0

    .line 193
    :goto_0
    return v22

    .line 157
    :cond_0
    const/16 v22, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 158
    invoke-static {}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->access$000()I

    move-result v22

    goto :goto_0

    .line 161
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 162
    .local v4, "a":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v20

    .line 163
    .local v20, "r":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 164
    .local v6, "g":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 165
    .local v5, "b":I
    const/4 v8, -0x1

    .line 166
    .local v8, "index":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v22, v0

    aget v14, v22, v7

    .line 168
    .local v14, "preColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v22, v0

    add-int/lit8 v23, v7, 0x1

    aget v9, v22, v23

    .line 169
    .local v9, "nextColor":I
    move/from16 v0, p1

    if-ne v0, v14, :cond_2

    .line 170
    int-to-float v0, v7

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static {}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->access$000()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    goto :goto_0

    .line 172
    :cond_2
    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    .line 173
    add-int/lit8 v22, v7, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static {}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->access$000()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_0

    .line 175
    :cond_3
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    .line 176
    .local v15, "pre_a":I
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v18

    .line 177
    .local v18, "pre_r":I
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v17

    .line 178
    .local v17, "pre_g":I
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    .line 179
    .local v16, "pre_b":I
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 180
    .local v10, "next_a":I
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 181
    .local v13, "next_r":I
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 182
    .local v12, "next_g":I
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 183
    .local v11, "next_b":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v10}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->isValueInside(III)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v13}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->isValueInside(III)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v1, v12}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->isValueInside(III)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1, v11}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->isValueInside(III)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 184
    move v8, v7

    .line 188
    .end local v9    # "nextColor":I
    .end local v10    # "next_a":I
    .end local v11    # "next_b":I
    .end local v12    # "next_g":I
    .end local v13    # "next_r":I
    .end local v14    # "preColor":I
    .end local v15    # "pre_a":I
    .end local v16    # "pre_b":I
    .end local v17    # "pre_g":I
    .end local v18    # "pre_r":I
    :cond_4
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_6

    .line 189
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 166
    .restart local v9    # "nextColor":I
    .restart local v10    # "next_a":I
    .restart local v11    # "next_b":I
    .restart local v12    # "next_g":I
    .restart local v13    # "next_r":I
    .restart local v14    # "preColor":I
    .restart local v15    # "pre_a":I
    .restart local v16    # "pre_b":I
    .restart local v17    # "pre_g":I
    .restart local v18    # "pre_r":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 191
    .end local v9    # "nextColor":I
    .end local v10    # "next_a":I
    .end local v11    # "next_b":I
    .end local v12    # "next_g":I
    .end local v13    # "next_r":I
    .end local v14    # "preColor":I
    .end local v15    # "pre_a":I
    .end local v16    # "pre_b":I
    .end local v17    # "pre_g":I
    .end local v18    # "pre_r":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v23, v0

    add-int/lit8 v24, v8, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->findColorProgress(III)F

    move-result v19

    .line 192
    .local v19, "progress":F
    int-to-float v0, v8

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v23, v23, v19

    add-float v21, v22, v23

    .line 193
    .local v21, "scale":F
    invoke-static {}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->access$000()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_0
.end method

.method getColor()I
    .locals 12

    .prologue
    .line 119
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v10, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;

    invoke-virtual {v10}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->getLevel()I

    move-result v6

    .line 120
    .local v6, "level":I
    invoke-static {}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->access$000()I

    move-result v10

    if-ne v6, v10, :cond_0

    .line 121
    const/4 v10, -0x1

    .line 146
    :goto_0
    return v10

    .line 122
    :cond_0
    if-nez v6, :cond_1

    .line 123
    const/high16 v10, -0x1000000

    goto :goto_0

    .line 126
    :cond_1
    int-to-float v10, v6

    invoke-static {}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->access$000()I

    move-result v11

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 127
    .local v9, "scale":F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_2

    .line 128
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    goto :goto_0

    .line 130
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_3

    .line 131
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    iget-object v11, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    goto :goto_0

    .line 134
    :cond_3
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float v7, v9, v10

    .line 135
    .local v7, "p":F
    float-to-int v5, v7

    .line 136
    .local v5, "i":I
    int-to-float v10, v5

    sub-float/2addr v7, v10

    .line 139
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    aget v2, v10, v5

    .line 140
    .local v2, "c0":I
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->mColors:[I

    add-int/lit8 v11, v5, 0x1

    aget v3, v10, v11

    .line 141
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    invoke-direct {p0, v10, v11, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->ave(IIF)I

    move-result v0

    .line 142
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-direct {p0, v10, v11, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->ave(IIF)I

    move-result v8

    .line 143
    .local v8, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-direct {p0, v10, v11, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->ave(IIF)I

    move-result v4

    .line 144
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-direct {p0, v10, v11, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;->ave(IIF)I

    move-result v1

    .line 146
    .local v1, "b":I
    invoke-static {v0, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    goto :goto_0
.end method
