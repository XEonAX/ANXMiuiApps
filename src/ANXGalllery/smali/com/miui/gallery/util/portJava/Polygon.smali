.class public Lcom/miui/gallery/util/portJava/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x59a6bfa6a13b9c51L


# instance fields
.field protected bounds:Lcom/miui/gallery/util/portJava/Rectangle;

.field public npoints:I

.field public xpoints:[I

.field public ypoints:[I


# virtual methods
.method calculateBounds([I[II)V
    .locals 10
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 206
    const v2, 0x7fffffff

    .line 207
    .local v2, "boundsMinX":I
    const v3, 0x7fffffff

    .line 208
    .local v3, "boundsMinY":I
    const/high16 v0, -0x80000000

    .line 209
    .local v0, "boundsMaxX":I
    const/high16 v1, -0x80000000

    .line 211
    .local v1, "boundsMaxY":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p3, :cond_0

    .line 212
    aget v5, p1, v4

    .line 213
    .local v5, "x":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 214
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 215
    aget v6, p2, v4

    .line 216
    .local v6, "y":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 217
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    new-instance v7, Lcom/miui/gallery/util/portJava/Rectangle;

    sub-int v8, v0, v2

    sub-int v9, v1, v3

    invoke-direct {v7, v2, v3, v8, v9}, Lcom/miui/gallery/util/portJava/Rectangle;-><init>(IIII)V

    iput-object v7, p0, Lcom/miui/gallery/util/portJava/Polygon;->bounds:Lcom/miui/gallery/util/portJava/Rectangle;

    .line 222
    return-void
.end method

.method public contains(DD)Z
    .locals 21
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/util/portJava/Polygon;->npoints:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v11, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/util/portJava/Polygon;->getBoundingBox()Lcom/miui/gallery/util/portJava/Rectangle;

    move-result-object v11

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/miui/gallery/util/portJava/Rectangle;->contains(DD)Z

    move-result v11

    if-nez v11, :cond_1

    .line 371
    :cond_0
    const/4 v11, 0x0

    .line 429
    :goto_0
    return v11

    .line 373
    :cond_1
    const/4 v6, 0x0

    .line 375
    .local v6, "hits":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/util/portJava/Polygon;->xpoints:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/util/portJava/Polygon;->npoints:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v8, v11, v16

    .line 376
    .local v8, "lastx":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/util/portJava/Polygon;->ypoints:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/util/portJava/Polygon;->npoints:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v9, v11, v16

    .line 380
    .local v9, "lasty":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/util/portJava/Polygon;->npoints:I

    if-ge v7, v11, :cond_8

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/util/portJava/Polygon;->xpoints:[I

    aget v4, v11, v7

    .line 382
    .local v4, "curx":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/util/portJava/Polygon;->ypoints:[I

    aget v5, v11, v7

    .line 384
    .local v5, "cury":I
    if-ne v5, v9, :cond_3

    .line 380
    :cond_2
    :goto_2
    move v8, v4

    move v9, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 389
    :cond_3
    if-ge v4, v8, :cond_4

    .line 390
    int-to-double v0, v8

    move-wide/from16 v16, v0

    cmpl-double v11, p1, v16

    if-gez v11, :cond_2

    .line 393
    move v10, v4

    .line 402
    .local v10, "leftx":I
    :goto_3
    if-ge v5, v9, :cond_6

    .line 403
    int-to-double v0, v5

    move-wide/from16 v16, v0

    cmpg-double v11, p3, v16

    if-ltz v11, :cond_2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    cmpl-double v11, p3, v16

    if-gez v11, :cond_2

    .line 406
    int-to-double v0, v10

    move-wide/from16 v16, v0

    cmpg-double v11, p1, v16

    if-gez v11, :cond_5

    .line 407
    add-int/lit8 v6, v6, 0x1

    .line 408
    goto :goto_2

    .line 395
    .end local v10    # "leftx":I
    :cond_4
    int-to-double v0, v4

    move-wide/from16 v16, v0

    cmpl-double v11, p1, v16

    if-gez v11, :cond_2

    .line 398
    move v10, v8

    .restart local v10    # "leftx":I
    goto :goto_3

    .line 410
    :cond_5
    int-to-double v0, v4

    move-wide/from16 v16, v0

    sub-double v12, p1, v16

    .line 411
    .local v12, "test1":D
    int-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, p3, v16

    .line 424
    .local v14, "test2":D
    :goto_4
    sub-int v11, v9, v5

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v16, v14, v16

    sub-int v11, v8, v4

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    cmpg-double v11, v12, v16

    if-gez v11, :cond_2

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 413
    .end local v12    # "test1":D
    .end local v14    # "test2":D
    :cond_6
    int-to-double v0, v9

    move-wide/from16 v16, v0

    cmpg-double v11, p3, v16

    if-ltz v11, :cond_2

    int-to-double v0, v5

    move-wide/from16 v16, v0

    cmpl-double v11, p3, v16

    if-gez v11, :cond_2

    .line 416
    int-to-double v0, v10

    move-wide/from16 v16, v0

    cmpg-double v11, p1, v16

    if-gez v11, :cond_7

    .line 417
    add-int/lit8 v6, v6, 0x1

    .line 418
    goto :goto_2

    .line 420
    :cond_7
    int-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v12, p1, v16

    .line 421
    .restart local v12    # "test1":D
    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v14, p3, v16

    .restart local v14    # "test2":D
    goto :goto_4

    .line 429
    .end local v4    # "curx":I
    .end local v5    # "cury":I
    .end local v10    # "leftx":I
    .end local v12    # "test1":D
    .end local v14    # "test2":D
    :cond_8
    and-int/lit8 v11, v6, 0x1

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public contains(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 336
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/gallery/util/portJava/Polygon;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public getBoundingBox()Lcom/miui/gallery/util/portJava/Rectangle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    iget v0, p0, Lcom/miui/gallery/util/portJava/Polygon;->npoints:I

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/miui/gallery/util/portJava/Rectangle;

    invoke-direct {v0}, Lcom/miui/gallery/util/portJava/Rectangle;-><init>()V

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/portJava/Polygon;->bounds:Lcom/miui/gallery/util/portJava/Rectangle;

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/util/portJava/Polygon;->xpoints:[I

    iget-object v1, p0, Lcom/miui/gallery/util/portJava/Polygon;->ypoints:[I

    iget v2, p0, Lcom/miui/gallery/util/portJava/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery/util/portJava/Polygon;->calculateBounds([I[II)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/portJava/Polygon;->bounds:Lcom/miui/gallery/util/portJava/Rectangle;

    invoke-virtual {v0}, Lcom/miui/gallery/util/portJava/Rectangle;->getBounds()Lcom/miui/gallery/util/portJava/Rectangle;

    move-result-object v0

    goto :goto_0
.end method
