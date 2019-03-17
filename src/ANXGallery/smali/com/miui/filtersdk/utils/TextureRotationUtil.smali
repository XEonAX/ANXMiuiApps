.class public Lcom/miui/filtersdk/utils/TextureRotationUtil;
.super Ljava/lang/Object;
.source "TextureRotationUtil.java"


# static fields
.field public static final CUBE:[F

.field public static final TEXTURE_NO_ROTATION:[F

.field public static final TEXTURE_ROTATED_180:[F

.field public static final TEXTURE_ROTATED_270:[F

.field public static final TEXTURE_ROTATED_90:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 7
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    return-void

    .line 7
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 14
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 20
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 26
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 33
    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static flip(F)F
    .locals 2
    .param p0, "i"    # F

    .prologue
    const/4 v0, 0x0

    .line 81
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    :cond_0
    return v0
.end method

.method public static getRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)[F
    .locals 9
    .param p0, "rotation"    # Lcom/miui/filtersdk/utils/Rotation;
    .param p1, "flipHorizontal"    # Z
    .param p2, "flipVertical"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    sget-object v2, Lcom/miui/filtersdk/utils/TextureRotationUtil$1;->$SwitchMap$com$miui$filtersdk$utils$Rotation:[I

    invoke-virtual {p0}, Lcom/miui/filtersdk/utils/Rotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 57
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    .local v0, "rotatedTex":[F
    move-object v1, v0

    .line 60
    .end local v0    # "rotatedTex":[F
    .local v1, "rotatedTex":[F
    :goto_0
    if-eqz p1, :cond_0

    .line 61
    const/16 v2, 0x8

    new-array v0, v2, [F

    aget v2, v1, v4

    .line 62
    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v4

    aget v2, v1, v5

    aput v2, v0, v5

    aget v2, v1, v6

    .line 63
    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v6

    aget v2, v1, v7

    aput v2, v0, v7

    aget v2, v1, v8

    .line 64
    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v1, v3

    .line 65
    invoke-static {v3}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v1, v3

    aput v3, v0, v2

    .end local v1    # "rotatedTex":[F
    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 68
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    :cond_0
    if-eqz p2, :cond_1

    .line 69
    const/16 v2, 0x8

    new-array v0, v2, [F

    aget v2, v1, v4

    aput v2, v0, v4

    aget v2, v1, v5

    .line 70
    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v5

    aget v2, v1, v6

    aput v2, v0, v6

    aget v2, v1, v7

    .line 71
    invoke-static {v2}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v2

    aput v2, v0, v7

    aget v2, v1, v8

    aput v2, v0, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v1, v3

    .line 72
    invoke-static {v3}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v1, v3

    .line 73
    invoke-static {v3}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->flip(F)F

    move-result v3

    aput v3, v0, v2

    .line 76
    .end local v1    # "rotatedTex":[F
    .restart local v0    # "rotatedTex":[F
    :goto_1
    return-object v0

    .line 47
    .end local v0    # "rotatedTex":[F
    :pswitch_0
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 48
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    goto :goto_0

    .line 50
    .end local v1    # "rotatedTex":[F
    :pswitch_1
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 51
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    goto/16 :goto_0

    .line 53
    .end local v1    # "rotatedTex":[F
    :pswitch_2
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 54
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    .end local v1    # "rotatedTex":[F
    .restart local v0    # "rotatedTex":[F
    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
