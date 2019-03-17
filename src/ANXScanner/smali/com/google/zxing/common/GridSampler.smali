.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 10
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "points"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 122
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 124
    .local v0, "height":I
    const/4 v1, 0x1

    .line 125
    .local v1, "nudged":Z
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_0

    if-nez v1, :cond_2

    .line 148
    :cond_0
    const/4 v1, 0x1

    .line 149
    array-length v6, p1

    add-int/lit8 v2, v6, -0x2

    :goto_1
    if-ltz v2, :cond_1

    if-nez v1, :cond_9

    .line 171
    :cond_1
    return-void

    .line 126
    :cond_2
    aget v6, p1, v2

    float-to-int v4, v6

    .line 127
    .local v4, "x":I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 128
    .local v5, "y":I
    if-lt v4, v8, :cond_3

    if-gt v4, v3, :cond_3

    if-lt v5, v8, :cond_3

    if-le v5, v0, :cond_4

    .line 129
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 131
    :cond_4
    const/4 v1, 0x0

    .line 132
    if-ne v4, v8, :cond_7

    .line 133
    aput v9, p1, v2

    .line 134
    const/4 v1, 0x1

    .line 139
    :cond_5
    :goto_2
    if-ne v5, v8, :cond_8

    .line 140
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 141
    const/4 v1, 0x1

    .line 125
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 135
    :cond_7
    if-ne v4, v3, :cond_5

    .line 136
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 137
    const/4 v1, 0x1

    goto :goto_2

    .line 142
    :cond_8
    if-ne v5, v0, :cond_6

    .line 143
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 144
    const/4 v1, 0x1

    goto :goto_3

    .line 150
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_9
    aget v6, p1, v2

    float-to-int v4, v6

    .line 151
    .restart local v4    # "x":I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 152
    .restart local v5    # "y":I
    if-lt v4, v8, :cond_a

    if-gt v4, v3, :cond_a

    if-lt v5, v8, :cond_a

    if-le v5, v0, :cond_b

    .line 153
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 155
    :cond_b
    const/4 v1, 0x0

    .line 156
    if-ne v4, v8, :cond_e

    .line 157
    aput v9, p1, v2

    .line 158
    const/4 v1, 0x1

    .line 163
    :cond_c
    :goto_4
    if-ne v5, v8, :cond_f

    .line 164
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 165
    const/4 v1, 0x1

    .line 149
    :cond_d
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 159
    :cond_e
    if-ne v4, v3, :cond_c

    .line 160
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 161
    const/4 v1, 0x1

    goto :goto_4

    .line 166
    :cond_f
    if-ne v5, v0, :cond_d

    .line 167
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 168
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0
    .param p0, "newGridSampler"    # Lcom/google/zxing/common/GridSampler;

    .prologue
    .line 48
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
