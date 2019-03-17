.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 6
    .param p0, "n"    # I
    .param p1, "r"    # I

    .prologue
    .line 106
    sub-int v5, p0, p1

    if-le v5, p1, :cond_0

    .line 107
    move v3, p1

    .line 108
    .local v3, "minDenom":I
    sub-int v2, p0, p1

    .line 113
    .local v2, "maxDenom":I
    :goto_0
    const/4 v4, 0x1

    .line 114
    .local v4, "val":I
    const/4 v1, 0x1

    .line 115
    .local v1, "j":I
    move v0, p0

    .local v0, "i":I
    :goto_1
    if-gt v0, v2, :cond_1

    .line 122
    :goto_2
    if-le v1, v3, :cond_3

    .line 126
    return v4

    .line 110
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "maxDenom":I
    .end local v3    # "minDenom":I
    .end local v4    # "val":I
    :cond_0
    sub-int v3, p0, p1

    .line 111
    .restart local v3    # "minDenom":I
    move v2, p1

    .restart local v2    # "maxDenom":I
    goto :goto_0

    .line 116
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v4    # "val":I
    :cond_1
    mul-int/2addr v4, v0

    .line 117
    if-gt v1, v3, :cond_2

    .line 118
    div-int/2addr v4, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 123
    :cond_3
    div-int/2addr v4, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getRSSvalue([IIZ)I
    .locals 13
    .param p0, "widths"    # [I
    .param p1, "maxWidth"    # I
    .param p2, "noNarrow"    # Z

    .prologue
    const/4 v12, 0x1

    .line 67
    array-length v1, p0

    .line 68
    .local v1, "elements":I
    const/4 v5, 0x0

    .line 69
    .local v5, "n":I
    array-length v11, p0

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_0

    .line 72
    const/4 v8, 0x0

    .line 73
    .local v8, "val":I
    const/4 v6, 0x0

    .line 74
    .local v6, "narrowMask":I
    const/4 v0, 0x0

    .local v0, "bar":I
    :goto_1
    add-int/lit8 v10, v1, -0x1

    if-lt v0, v10, :cond_1

    .line 100
    return v8

    .line 69
    .end local v0    # "bar":I
    .end local v6    # "narrowMask":I
    .end local v8    # "val":I
    :cond_0
    aget v9, p0, v10

    .line 70
    .local v9, "width":I
    add-int/2addr v5, v9

    .line 69
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 76
    .end local v9    # "width":I
    .restart local v0    # "bar":I
    .restart local v6    # "narrowMask":I
    .restart local v8    # "val":I
    :cond_1
    const/4 v2, 0x1

    .local v2, "elmWidth":I
    shl-int v10, v12, v0

    or-int/2addr v6, v10

    .line 77
    :goto_2
    aget v10, p0, v0

    .line 76
    if-lt v2, v10, :cond_2

    .line 98
    sub-int/2addr v5, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    sub-int v10, v5, v2

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    .line 80
    .local v7, "subVal":I
    if-eqz p2, :cond_3

    if-nez v6, :cond_3

    .line 81
    sub-int v10, v5, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_3

    .line 82
    sub-int v10, v5, v2

    sub-int v11, v1, v0

    sub-int/2addr v10, v11

    .line 83
    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    sub-int/2addr v7, v10

    .line 85
    :cond_3
    sub-int v10, v1, v0

    add-int/lit8 v10, v10, -0x1

    if-le v10, v12, :cond_6

    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "lessVal":I
    sub-int v10, v5, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    sub-int v4, v10, v11

    .local v4, "mxwElement":I
    :goto_3
    if-gt v4, p1, :cond_5

    .line 92
    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v0

    mul-int/2addr v10, v3

    sub-int/2addr v7, v10

    .line 96
    .end local v3    # "lessVal":I
    .end local v4    # "mxwElement":I
    :cond_4
    :goto_4
    add-int/2addr v8, v7

    .line 78
    add-int/lit8 v2, v2, 0x1

    shl-int v10, v12, v0

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v6, v10

    goto :goto_2

    .line 89
    .restart local v3    # "lessVal":I
    .restart local v4    # "mxwElement":I
    :cond_5
    sub-int v10, v5, v2

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    .line 90
    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x3

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    add-int/2addr v3, v10

    .line 88
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 93
    .end local v3    # "lessVal":I
    .end local v4    # "mxwElement":I
    :cond_6
    sub-int v10, v5, v2

    if-le v10, p1, :cond_4

    .line 94
    add-int/lit8 v7, v7, -0x1

    goto :goto_4
.end method
