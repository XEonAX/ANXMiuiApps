.class public Lmiui/imagefilters/ImageFilterUtils;
.super Ljava/lang/Object;
.source "ImageFilterUtils.java"


# static fields
.field static final COLOR_TO_GRAYSCALE_FACTOR_B:F = 0.114f

.field static final COLOR_TO_GRAYSCALE_FACTOR_G:F = 0.587f

.field static final COLOR_TO_GRAYSCALE_FACTOR_R:F = 0.299f

.field static final TAG:Ljava/lang/String; = "ImageFilterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HslToRgb(FFF)I
    .locals 16
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "l"    # F

    .line 32
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 35
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    move v1, v0

    .local v1, "b":I
    move v3, v0

    .local v0, "r":I
    .local v3, "g":I
    goto/16 :goto_4

    .line 39
    .end local v0    # "r":I
    .end local v1    # "b":I
    .end local v3    # "g":I
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    add-float v1, v3, p1

    mul-float v1, v1, p2

    goto :goto_0

    :cond_1
    add-float v1, p2, p1

    mul-float v4, p2, p1

    sub-float/2addr v1, v4

    .line 40
    .local v1, "q":F
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p2

    sub-float/2addr v4, v1

    .line 42
    .local v4, "p":F
    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, p0, v5

    .line 43
    .local v5, "Hk":F
    const/4 v6, 0x3

    new-array v7, v6, [F

    .line 44
    .local v7, "T":[F
    const v8, 0x3eaaaaab

    add-float v9, v5, v8

    aput v9, v7, v2

    .line 45
    const/4 v9, 0x1

    aput v5, v7, v9

    .line 46
    sub-float v8, v5, v8

    const/4 v10, 0x2

    aput v8, v7, v10

    .line 48
    move v8, v2

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_7

    .line 50
    aget v11, v7, v8

    cmpg-float v11, v11, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-gez v11, :cond_2

    aget v11, v7, v8

    float-to-double v10, v11

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v7, v8

    goto :goto_2

    .line 51
    :cond_2
    aget v10, v7, v8

    cmpl-float v10, v10, v3

    if-lez v10, :cond_3

    aget v10, v7, v8

    float-to-double v10, v10

    sub-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v7, v8

    .line 53
    :cond_3
    :goto_2
    aget v10, v7, v8

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v10, v11

    cmpg-float v10, v10, v3

    if-gez v10, :cond_4

    .line 55
    sub-float v10, v1, v4

    mul-float/2addr v10, v11

    aget v11, v7, v8

    mul-float/2addr v10, v11

    add-float/2addr v10, v4

    aput v10, v7, v8

    goto :goto_3

    .line 57
    :cond_4
    aget v10, v7, v8

    float-to-double v9, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v14

    cmpg-double v9, v9, v12

    if-gez v9, :cond_5

    .line 59
    aput v1, v7, v8

    goto :goto_3

    .line 61
    :cond_5
    aget v9, v7, v8

    float-to-double v9, v9

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v9, v12

    cmpg-double v9, v9, v14

    if-gez v9, :cond_6

    .line 63
    sub-float v9, v1, v4

    const v10, 0x3f2aaaab

    aget v12, v7, v8

    sub-float/2addr v10, v12

    mul-float/2addr v9, v10

    mul-float/2addr v9, v11

    add-float/2addr v9, v4

    aput v9, v7, v8

    goto :goto_3

    .line 65
    :cond_6
    aput v4, v7, v8

    .line 48
    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto :goto_1

    .line 68
    .end local v8    # "i":I
    :cond_7
    aget v0, v7, v2

    float-to-double v8, v0

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 69
    .restart local v0    # "r":I
    const/4 v3, 0x1

    aget v3, v7, v3

    float-to-double v8, v3

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 70
    .restart local v3    # "g":I
    const/4 v6, 0x2

    aget v6, v7, v6

    float-to-double v8, v6

    mul-double/2addr v8, v10

    double-to-int v1, v8

    .line 73
    .end local v4    # "p":F
    .end local v5    # "Hk":F
    .end local v7    # "T":[F
    .local v1, "b":I
    :goto_4
    const/16 v4, 0xff

    invoke-static {v2, v0, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    .line 74
    invoke-static {v2, v3, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v3

    .line 75
    invoke-static {v2, v1, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v1

    .line 77
    const/high16 v2, -0x1000000

    shl-int/lit8 v4, v0, 0x10

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method public static HslToRgb([F)I
    .locals 3
    .param p0, "hsl"    # [F

    .line 25
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static HsvToRgb(FFF)I
    .locals 11
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "r":F
    const/4 v1, 0x0

    .line 84
    .local v1, "g":F
    const/4 v2, 0x0

    .line 86
    .local v2, "b":F
    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    .line 88
    move v2, p2

    move v1, p2

    move v0, p2

    goto :goto_0

    .line 93
    :cond_0
    const/high16 v4, 0x42700000    # 60.0f

    div-float v4, p0, v4

    .line 94
    .local v4, "sectorPos":F
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 96
    .local v6, "sectorNumber":I
    int-to-float v7, v6

    sub-float v7, v4, v7

    .line 99
    .local v7, "fractionalSector":F
    sub-float v8, v5, p1

    mul-float/2addr v8, p2

    .line 100
    .local v8, "p":F
    mul-float v9, p1, v7

    sub-float v9, v5, v9

    mul-float/2addr v9, p2

    .line 101
    .local v9, "q":F
    sub-float v10, v5, v7

    mul-float/2addr v10, p1

    sub-float v10, v5, v10

    mul-float/2addr v10, p2

    .line 104
    .local v10, "t":F
    packed-switch v6, :pswitch_data_0

    .end local v4    # "sectorPos":F
    .end local v6    # "sectorNumber":I
    .end local v7    # "fractionalSector":F
    .end local v8    # "p":F
    .end local v9    # "q":F
    .end local v10    # "t":F
    goto :goto_0

    .line 132
    .restart local v4    # "sectorPos":F
    .restart local v6    # "sectorNumber":I
    .restart local v7    # "fractionalSector":F
    .restart local v8    # "p":F
    .restart local v9    # "q":F
    .restart local v10    # "t":F
    :pswitch_0
    move v0, p2

    .line 133
    move v1, v8

    .line 134
    move v2, v9

    .end local v4    # "sectorPos":F
    .end local v6    # "sectorNumber":I
    .end local v7    # "fractionalSector":F
    .end local v8    # "p":F
    .end local v9    # "q":F
    .end local v10    # "t":F
    goto :goto_0

    .line 127
    .restart local v4    # "sectorPos":F
    .restart local v6    # "sectorNumber":I
    .restart local v7    # "fractionalSector":F
    .restart local v8    # "p":F
    .restart local v9    # "q":F
    .restart local v10    # "t":F
    :pswitch_1
    move v0, v10

    .line 128
    move v1, v8

    .line 129
    move v2, p2

    .line 130
    goto :goto_0

    .line 122
    :pswitch_2
    move v0, v8

    .line 123
    move v1, v9

    .line 124
    move v2, p2

    .line 125
    goto :goto_0

    .line 117
    :pswitch_3
    move v0, v8

    .line 118
    move v1, p2

    .line 119
    move v2, v10

    .line 120
    goto :goto_0

    .line 112
    :pswitch_4
    move v0, v9

    .line 113
    move v1, p2

    .line 114
    move v2, v8

    .line 115
    goto :goto_0

    .line 107
    :pswitch_5
    move v0, p2

    .line 108
    move v1, v10

    .line 109
    move v2, v8

    .line 110
    nop

    .line 139
    .end local v4    # "sectorPos":F
    .end local v6    # "sectorNumber":I
    .end local v7    # "fractionalSector":F
    .end local v8    # "p":F
    .end local v9    # "q":F
    .end local v10    # "t":F
    :goto_0
    invoke-static {v3, v0, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    .line 140
    invoke-static {v3, v1, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v1

    .line 141
    invoke-static {v3, v2, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v2

    .line 143
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    .line 144
    .local v4, "nr":I
    mul-float v5, v1, v3

    float-to-int v5, v5

    .line 145
    .local v5, "ng":I
    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 146
    .local v3, "nb":I
    const/high16 v6, -0x1000000

    shl-int/lit8 v7, v4, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v3

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static RgbToHsl(III[F)V
    .locals 18
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsl"    # [F

    .line 156
    const/4 v0, 0x0

    .local v0, "h":F
    const/4 v1, 0x0

    .local v1, "s":F
    const/4 v2, 0x0

    .line 159
    .local v2, "l":F
    move/from16 v3, p0

    int-to-float v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    .line 160
    .local v4, "r":F
    move/from16 v6, p1

    int-to-float v7, v6

    div-float/2addr v7, v5

    .line 161
    .local v7, "g":F
    move/from16 v8, p2

    int-to-float v9, v8

    div-float/2addr v9, v5

    .line 163
    .local v9, "b":F
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 164
    .local v5, "max":F
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 167
    .local v10, "min":F
    cmpl-float v11, v5, v10

    const/high16 v12, 0x43b40000    # 360.0f

    if-nez v11, :cond_0

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_0
    cmpl-float v11, v5, v4

    const/high16 v13, 0x42700000    # 60.0f

    if-nez v11, :cond_1

    cmpl-float v11, v7, v9

    if-ltz v11, :cond_1

    .line 173
    sub-float v11, v7, v9

    mul-float/2addr v13, v11

    sub-float v11, v5, v10

    div-float v0, v13, v11

    goto :goto_0

    .line 175
    :cond_1
    cmpl-float v11, v5, v4

    if-nez v11, :cond_2

    cmpg-float v11, v7, v9

    if-gez v11, :cond_2

    .line 177
    sub-float v11, v7, v9

    mul-float/2addr v13, v11

    sub-float v11, v5, v10

    div-float/2addr v13, v11

    add-float v0, v13, v12

    goto :goto_0

    .line 179
    :cond_2
    cmpl-float v11, v5, v7

    if-nez v11, :cond_3

    .line 181
    sub-float v11, v9, v4

    mul-float/2addr v13, v11

    sub-float v11, v5, v10

    div-float/2addr v13, v11

    const/high16 v11, 0x42f00000    # 120.0f

    add-float v0, v13, v11

    goto :goto_0

    .line 183
    :cond_3
    cmpl-float v11, v5, v9

    if-nez v11, :cond_4

    .line 185
    sub-float v11, v4, v7

    mul-float/2addr v13, v11

    sub-float v11, v5, v10

    div-float/2addr v13, v11

    const/high16 v11, 0x43700000    # 240.0f

    add-float v0, v13, v11

    .line 189
    :cond_4
    :goto_0
    add-float v11, v5, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    .line 192
    .end local v2    # "l":F
    .local v11, "l":F
    const/4 v2, 0x0

    cmpl-float v14, v11, v2

    if-eqz v14, :cond_7

    cmpl-float v14, v5, v10

    if-nez v14, :cond_5

    goto :goto_1

    .line 196
    :cond_5
    cmpg-float v14, v2, v11

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    if-gez v14, :cond_6

    float-to-double v2, v11

    cmpg-double v2, v2, v15

    if-gtz v2, :cond_6

    .line 198
    sub-float v2, v5, v10

    add-float v3, v5, v10

    div-float v1, v2, v3

    goto :goto_2

    .line 200
    :cond_6
    float-to-double v2, v11

    cmpl-double v2, v2, v15

    if-lez v2, :cond_8

    .line 202
    sub-float v2, v5, v10

    add-float v3, v5, v10

    sub-float/2addr v13, v3

    div-float v1, v2, v13

    goto :goto_2

    .line 194
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 205
    :cond_8
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v0, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    aput v12, p3, v2

    .line 206
    const/4 v2, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v13

    aput v13, p3, v2

    .line 207
    const/4 v2, 0x2

    invoke-static {v3, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v3

    aput v3, p3, v2

    .line 208
    return-void
.end method

.method public static RgbToHsl(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .line 151
    ushr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    and-int/2addr v1, p0

    invoke-static {v0, v2, v1, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(III[F)V

    .line 152
    return-void
.end method

.method public static RgbToHsv(III[F)V
    .locals 12
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    .line 217
    const/4 v0, 0x0

    .local v0, "h":F
    const/4 v1, 0x0

    .local v1, "s":F
    const/4 v2, 0x0

    .line 220
    .local v2, "v":F
    int-to-float v3, p0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 221
    .local v3, "r":F
    int-to-float v5, p1

    div-float/2addr v5, v4

    .line 222
    .local v5, "g":F
    int-to-float v6, p2

    div-float/2addr v6, v4

    .line 224
    .local v6, "b":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 225
    .local v4, "max":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 228
    .local v7, "min":F
    cmpl-float v8, v4, v7

    const/high16 v9, 0x43b40000    # 360.0f

    if-nez v8, :cond_0

    .line 230
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_0
    cmpl-float v8, v4, v3

    const/high16 v10, 0x42700000    # 60.0f

    if-nez v8, :cond_1

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_1

    .line 234
    sub-float v8, v5, v6

    mul-float/2addr v10, v8

    sub-float v8, v4, v7

    div-float v0, v10, v8

    goto :goto_0

    .line 236
    :cond_1
    cmpl-float v8, v4, v3

    if-nez v8, :cond_2

    cmpg-float v8, v5, v6

    if-gez v8, :cond_2

    .line 238
    sub-float v8, v5, v6

    mul-float/2addr v10, v8

    sub-float v8, v4, v7

    div-float/2addr v10, v8

    add-float v0, v10, v9

    goto :goto_0

    .line 240
    :cond_2
    cmpl-float v8, v4, v5

    if-nez v8, :cond_3

    .line 242
    sub-float v8, v6, v3

    mul-float/2addr v10, v8

    sub-float v8, v4, v7

    div-float/2addr v10, v8

    const/high16 v8, 0x42f00000    # 120.0f

    add-float v0, v10, v8

    goto :goto_0

    .line 244
    :cond_3
    cmpl-float v8, v4, v6

    if-nez v8, :cond_4

    .line 246
    sub-float v8, v3, v5

    mul-float/2addr v10, v8

    sub-float v8, v4, v7

    div-float/2addr v10, v8

    const/high16 v8, 0x43700000    # 240.0f

    add-float v0, v10, v8

    .line 250
    :cond_4
    :goto_0
    move v2, v4

    .line 253
    const/4 v8, 0x0

    cmpl-float v10, v4, v8

    if-nez v10, :cond_5

    .line 255
    const/4 v1, 0x0

    goto :goto_1

    .line 258
    :cond_5
    sub-float v10, v4, v7

    div-float v1, v10, v4

    .line 261
    :goto_1
    const/4 v10, 0x0

    invoke-static {v8, v0, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v10

    .line 262
    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v1, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    aput v11, p3, v9

    .line 263
    const/4 v9, 0x2

    invoke-static {v8, v2, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v8

    aput v8, p3, v9

    .line 264
    return-void
.end method

.method public static RgbToHsv(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .line 212
    ushr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    and-int/2addr v1, p0

    invoke-static {v0, v2, v1, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(III[F)V

    .line 213
    return-void
.end method

.method public static checkChannelParam(Ljava/lang/String;[Z)V
    .locals 3
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "outRgba"    # [Z

    .line 297
    const-string v0, "r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    const-string v0, "red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 299
    :cond_0
    const-string v0, "g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "green"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 301
    :cond_1
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "blue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 303
    :cond_2
    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 306
    :cond_3
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    array-length v1, p1

    if-ge v0, v1, :cond_8

    .line 307
    aput-boolean v2, p1, v0

    .line 306
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_4
    :goto_1
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    const/4 v0, 0x3

    aput-boolean v2, p1, v0

    goto :goto_5

    .line 302
    :cond_5
    :goto_2
    const/4 v0, 0x2

    aput-boolean v2, p1, v0

    goto :goto_5

    .line 300
    :cond_6
    :goto_3
    aput-boolean v2, p1, v2

    goto :goto_5

    .line 298
    :cond_7
    :goto_4
    aput-boolean v2, p1, v1

    .line 310
    :cond_8
    :goto_5
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .line 285
    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    return p0

    .line 286
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    return p2

    .line 287
    :cond_1
    return p1
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 279
    if-gt p1, p0, :cond_0

    return p0

    .line 280
    :cond_0
    if-lt p1, p2, :cond_1

    return p2

    .line 281
    :cond_1
    return p1
.end method

.method public static convertColorToGrayscale(I)I
    .locals 3
    .param p0, "color"    # I

    .line 291
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v1, v0

    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method public static interpolate(IIIII)I
    .locals 3
    .param p0, "inMin"    # I
    .param p1, "inMax"    # I
    .param p2, "outMin"    # I
    .param p3, "outMax"    # I
    .param p4, "value"    # I

    .line 275
    int-to-float v0, p2

    int-to-float v1, p4

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, p1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate([F[FF[F)V
    .locals 5
    .param p0, "hsl1"    # [F
    .param p1, "hsl2"    # [F
    .param p2, "amount"    # F
    .param p3, "hslOut"    # [F

    .line 268
    const/4 v0, 0x0

    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 269
    .local v1, "size":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 270
    aget v2, p0, v0

    aget v3, p1, v0

    aget v4, p0, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 20
    .param p0, "filterObj"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 313
    move-object/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "strPropertyMethod":Ljava/lang/String;
    const/4 v0, 0x0

    .line 316
    .local v0, "propertyMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 317
    .local v5, "methods":[Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    array-length v7, v5

    move v8, v6

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v7, :cond_1

    aget-object v10, v5, v8

    .line 318
    .local v10, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 319
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-ne v11, v9, :cond_0

    .line 320
    move-object v0, v10

    .line 321
    goto :goto_1

    .line 317
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "propertyMethod":Ljava/lang/reflect/Method;
    .local v7, "propertyMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    move-object v7, v0

    if-nez v7, :cond_2

    .line 325
    const-string v0, "ImageFilterUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown property:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",obj:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v6

    .line 329
    :cond_2
    const-class v0, Lmiui/imagefilters/FilterParamType;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lmiui/imagefilters/FilterParamType;

    .line 330
    .local v8, "paramType":Lmiui/imagefilters/FilterParamType;
    if-nez v8, :cond_3

    sget-object v0, Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Lmiui/imagefilters/FilterParamType;->value()Lmiui/imagefilters/FilterParamType$ParamType;

    move-result-object v0

    :goto_2
    move-object v10, v0

    .line 332
    .local v10, "paramTypeEnum":Lmiui/imagefilters/FilterParamType$ParamType;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v6

    move-object v11, v0

    .line 334
    .local v11, "paramClass":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 335
    .local v0, "objValue":Ljava/lang/Object;
    :try_start_0
    instance-of v12, v3, Ljava/lang/String;

    if-eqz v12, :cond_18

    .line 336
    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 337
    .local v12, "strValue":Ljava/lang/String;
    const-class v13, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 338
    move-object v0, v12

    .line 386
    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "strValue":Ljava/lang/String;
    .local v18, "strPropertyMethod":Ljava/lang/String;
    .local v19, "methods":[Ljava/lang/reflect/Method;
    :goto_3
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_8

    .line 339
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v12    # "strValue":Ljava/lang/String;
    :cond_4
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v13, :cond_6

    .line 340
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 341
    .local v13, "intVal":I
    sget-object v14, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v10, v14, :cond_5

    invoke-static {v13}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v14

    move v13, v14

    .line 342
    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v14

    .line 343
    .end local v13    # "intVal":I
    goto :goto_3

    .line 391
    .end local v0    # "objValue":Ljava/lang/Object;
    .end local v12    # "strValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_a

    .line 343
    .restart local v0    # "objValue":Ljava/lang/Object;
    .restart local v12    # "strValue":Ljava/lang/String;
    :cond_6
    :try_start_2
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v13, :cond_8

    .line 344
    :try_start_3
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 345
    .local v13, "floatVal":F
    sget-object v14, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v10, v14, :cond_7

    invoke-static {v13}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v14

    move v13, v14

    .line 346
    :cond_7
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v14

    .line 347
    .end local v13    # "floatVal":F
    goto :goto_3

    :cond_8
    :try_start_4
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v13, :cond_a

    .line 348
    :try_start_5
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 349
    .local v13, "doubleVal":D
    sget-object v15, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v10, v15, :cond_9

    invoke-static {v13, v14}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v15

    move-wide v13, v15

    .line 350
    :cond_9
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v15

    .line 351
    .end local v13    # "doubleVal":D
    goto :goto_3

    :cond_a
    :try_start_6
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v13, :cond_b

    .line 352
    :try_start_7
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v0, v13

    goto :goto_3

    .line 353
    :cond_b
    :try_start_8
    const-class v13, Landroid/graphics/Bitmap;

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v13, :cond_c

    .line 354
    :try_start_9
    invoke-static {v12}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v0, v13

    goto :goto_3

    .line 355
    :cond_c
    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v13
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v13, :cond_d

    .line 356
    :try_start_b
    invoke-static {v11, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v13
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v0, v13

    goto/16 :goto_3

    .line 357
    :cond_d
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 358
    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    .line 359
    .local v13, "componentClass":Ljava/lang/Class;
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, "eles":[Ljava/lang/String;
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    if-eqz v15, :cond_10

    .line 361
    :try_start_d
    array-length v15, v14

    new-array v15, v15, [I

    .line 362
    .local v15, "array":[I
    move/from16 v16, v6

    .local v16, "i":I
    :goto_4
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    array-length v9, v15

    move/from16 v6, v17

    if-ge v6, v9, :cond_f

    .line 363
    .end local v17    # "i":I
    .local v6, "i":I
    aget-object v9, v14, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v15, v6

    .line 364
    sget-object v9, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v10, v9, :cond_e

    aget v9, v15, v6

    invoke-static {v9}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v9

    aput v9, v15, v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 362
    :cond_e
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_4

    .line 366
    .end local v16    # "i":I
    :cond_f
    move-object v0, v15

    .line 367
    .end local v15    # "array":[I
    nop

    .line 382
    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v13    # "componentClass":Ljava/lang/Class;
    .end local v14    # "eles":[Ljava/lang/String;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    :goto_5
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_8

    .line 367
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v13    # "componentClass":Ljava/lang/Class;
    .restart local v14    # "eles":[Ljava/lang/String;
    :cond_10
    :try_start_e
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    if-eqz v6, :cond_13

    .line 368
    :try_start_f
    array-length v6, v14

    new-array v6, v6, [F

    .line 369
    .local v6, "array":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    array-length v15, v6

    if-ge v9, v15, :cond_12

    .line 370
    aget-object v15, v14, v9

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    aput v15, v6, v9

    .line 371
    sget-object v15, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v10, v15, :cond_11

    aget v15, v6, v9

    invoke-static {v15}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v15

    aput v15, v6, v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 369
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 373
    .end local v9    # "i":I
    :cond_12
    move-object v0, v6

    .line 374
    .end local v6    # "array":[F
    goto :goto_5

    :cond_13
    :try_start_10
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 375
    array-length v6, v14

    new-array v6, v6, [D

    .line 376
    .local v6, "array":[D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    array-length v15, v6

    if-ge v9, v15, :cond_15

    .line 377
    aget-object v15, v14, v9

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    float-to-double v4, v15

    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    :try_start_11
    aput-wide v4, v6, v9

    .line 378
    sget-object v4, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v10, v4, :cond_14

    aget-wide v4, v6, v9

    invoke-static {v4, v5}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v4

    aput-wide v4, v6, v9

    .line 376
    :cond_14
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_7

    .line 380
    .end local v9    # "i":I
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_15
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .end local v6    # "array":[D
    .end local v13    # "componentClass":Ljava/lang/Class;
    .end local v14    # "eles":[Ljava/lang/String;
    goto :goto_8

    .line 382
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_16
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 386
    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "strValue":Ljava/lang/String;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    :goto_8
    goto :goto_9

    .line 383
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v12    # "strValue":Ljava/lang/String;
    :cond_17
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    const-string v4, "ImageFilterUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown param type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",obj:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",property:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v4, 0x0

    return v4

    .line 386
    .end local v12    # "strValue":Ljava/lang/String;
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_18
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    instance-of v4, v3, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v4, :cond_19

    .line 387
    move-object v0, v3

    .line 390
    :cond_19
    :goto_9
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    invoke-virtual {v7, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 394
    .end local v0    # "objValue":Ljava/lang/Object;
    nop

    .line 395
    const/4 v0, 0x1

    return v0

    .line 391
    :catch_1
    move-exception v0

    goto :goto_a

    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "strPropertyMethod":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 392
    .end local v4    # "strPropertyMethod":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "methods":[Ljava/lang/reflect/Method;
    :goto_a
    const-string v4, "ImageFilterUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set property fail. obj:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",property:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/4 v4, 0x0

    return v4
.end method
