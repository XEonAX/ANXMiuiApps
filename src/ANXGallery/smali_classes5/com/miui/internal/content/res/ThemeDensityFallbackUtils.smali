.class public Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;
.super Ljava/lang/Object;
.source "ThemeDensityFallbackUtils.java"


# static fields
.field private static final DENSITIES:[I

.field private static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1e0
        0x140
        0xf0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 4
    .param p0, "density"    # I

    .line 36
    const/16 v0, 0x78

    if-eq p0, v0, :cond_8

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_7

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_6

    const/16 v0, 0x140

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1b8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x280

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 56
    sget-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 57
    .local v0, "min":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "j":I
    :goto_0
    if-lez v1, :cond_1

    .line 58
    sget-object v2, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v1

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v3, v3, v0

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 59
    move v0, v1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 62
    .end local v1    # "j":I
    :cond_1
    sget-object v1, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 52
    .end local v0    # "min":I
    :pswitch_0
    const-string v0, "-nodpi"

    return-object v0

    .line 54
    :pswitch_1
    const-string v0, ""

    return-object v0

    .line 50
    :cond_2
    const-string v0, "-xxxhdpi"

    return-object v0

    .line 48
    :cond_3
    const-string v0, "-xxhdpi"

    return-object v0

    .line 46
    :cond_4
    const-string v0, "-nxhdpi"

    return-object v0

    .line 44
    :cond_5
    const-string v0, "-xhdpi"

    return-object v0

    .line 42
    :cond_6
    const-string v0, "-hdpi"

    return-object v0

    .line 40
    :cond_7
    const-string v0, "-mdpi"

    return-object v0

    .line 38
    :cond_8
    const-string v0, "-ldpi"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFallbackOrder(I)[I
    .locals 10
    .param p0, "currentDensity"    # I

    .line 67
    sget-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    const/4 v1, 0x1

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 68
    .local v0, "left":I
    :goto_0
    if-ltz v0, :cond_0

    sget-object v2, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v0

    if-gt v2, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 70
    .local v3, "right":I
    :goto_1
    sget-object v4, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v4, v4, v3

    if-lt v4, p0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_1
    sget-object v4, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v4, v4

    add-int/lit8 v5, v0, 0x1

    if-ne v5, v3, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    add-int/2addr v4, v5

    new-array v4, v4, [I

    .line 73
    .local v4, "densities":[I
    aput p0, v4, v2

    .line 75
    move v5, v3

    move v3, v0

    move v0, v1

    .line 76
    .local v0, "index":I
    .local v3, "left":I
    .local v5, "right":I
    :goto_3
    array-length v6, v4

    if-ge v0, v6, :cond_7

    .line 77
    const/4 v6, 0x0

    .line 78
    .local v6, "leftIsBetter":Z
    if-gez v3, :cond_3

    .line 79
    const/4 v6, 0x0

    goto :goto_5

    .line 81
    :cond_3
    sget-object v7, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v7, v7

    if-ne v5, v7, :cond_4

    .line 82
    const/4 v6, 0x1

    goto :goto_5

    .line 85
    :cond_4
    sget-object v7, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v7, v7, v3

    sub-int/2addr v7, p0

    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v8, v8, v5

    sub-int v8, p0, v8

    if-ge v7, v8, :cond_5

    move v7, v1

    goto :goto_4

    :cond_5
    move v7, v2

    :goto_4
    move v6, v7

    .line 88
    :goto_5
    if-eqz v6, :cond_6

    .line 89
    add-int/lit8 v7, v0, 0x1

    .local v7, "index":I
    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v9, v3, -0x1

    .local v9, "left":I
    aget v3, v8, v3

    .end local v3    # "left":I
    aput v3, v4, v0

    .line 94
    .end local v0    # "index":I
    move v0, v7

    move v3, v9

    goto :goto_6

    .line 92
    .end local v7    # "index":I
    .end local v9    # "left":I
    .restart local v0    # "index":I
    .restart local v3    # "left":I
    :cond_6
    add-int/lit8 v7, v0, 0x1

    .restart local v7    # "index":I
    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v9, v5, 0x1

    .local v9, "right":I
    aget v5, v8, v5

    .end local v5    # "right":I
    aput v5, v4, v0

    .line 94
    .end local v0    # "index":I
    .end local v6    # "leftIsBetter":Z
    move v0, v7

    move v5, v9

    .end local v7    # "index":I
    .end local v9    # "right":I
    .restart local v0    # "index":I
    .restart local v5    # "right":I
    :goto_6
    goto :goto_3

    .line 96
    :cond_7
    return-object v4
.end method

.method public static getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 29
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    .line 30
    const-string v0, "-sw720dp"

    return-object v0

    .line 32
    :cond_0
    const-string v0, ""

    return-object v0
.end method
