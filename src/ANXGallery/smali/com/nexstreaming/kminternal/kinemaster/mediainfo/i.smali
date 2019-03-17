.class public Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;
.super Ljava/lang/Object;
.source "ThumbnailsImpl.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;II[I)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->a:Landroid/graphics/Bitmap;

    .line 23
    iput p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    .line 24
    iput p3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    .line 25
    iput-object p4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->e:[I

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bm is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    if-nez p4, :cond_1

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "thumbnailTime is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    div-int/2addr v0, v1

    array-length v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->d:I

    .line 34
    return-void
.end method

.method private b(IIZZ)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 78
    move v0, v1

    move v2, v1

    move v3, v1

    .line 80
    :goto_0
    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->d:I

    if-ge v0, v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->e:[I

    aget v4, v4, v0

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 82
    if-eqz v0, :cond_0

    if-ge v4, v3, :cond_1

    :cond_0
    move v2, v0

    move v3, v4

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    mul-int/2addr v0, v2

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    mul-int/2addr v2, v4

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_6

    .line 94
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 99
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->a:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    iget v8, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    invoke-direct {v6, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 130
    :goto_2
    return-object v0

    .line 97
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v8, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    .line 98
    :cond_5
    if-eqz p4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v8, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    .line 101
    :cond_6
    if-nez p1, :cond_a

    .line 102
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 107
    :cond_7
    :goto_3
    const/high16 v4, 0x43340000    # 180.0f

    iget v6, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v4, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 108
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->a:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    iget v8, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    invoke-direct {v6, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 105
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v8, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    .line 106
    :cond_9
    if-eqz p4, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v8, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_3

    .line 110
    :cond_a
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_e

    .line 111
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 116
    :cond_b
    :goto_4
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v2, v4, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 117
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->a:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    neg-int v7, v7

    iget v8, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    invoke-direct {v6, v1, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 114
    :cond_c
    if-eqz p3, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v8, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_4

    .line 115
    :cond_d
    if-eqz p4, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v8, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_4

    .line 119
    :cond_e
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_12

    .line 120
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 125
    :cond_f
    :goto_5
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v2, v4, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 126
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->a:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b:I

    neg-int v7, v7

    iget v8, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->c:I

    invoke-direct {v6, v7, v1, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 123
    :cond_10
    if-eqz p3, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v8, v7, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_5

    .line 124
    :cond_11
    if-eqz p4, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v7, v8, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_5

    :cond_12
    move-object v0, v5

    .line 130
    goto/16 :goto_2
.end method


# virtual methods
.method public a(IIZZ)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->b(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()[I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;->e:[I

    return-object v0
.end method
