.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .locals 8
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 247
    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    :goto_0
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 253
    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p2, v0, :cond_4

    .line 254
    :cond_1
    const/4 v5, 0x0

    .line 317
    :goto_1
    return v5

    .line 249
    :cond_2
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_3
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 261
    add-int/lit8 v0, v0, 0x1

    .line 258
    :cond_4
    if-lt p1, v0, :cond_5

    if-lt p2, v0, :cond_5

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 259
    const/4 v5, 0x1

    aget v5, v3, v5

    .line 258
    if-le v5, p3, :cond_3

    .line 265
    :cond_5
    if-lt p1, v0, :cond_6

    if-lt p2, v0, :cond_6

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_8

    .line 266
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 272
    :cond_7
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 273
    add-int/lit8 v0, v0, 0x1

    .line 270
    :cond_8
    if-lt p1, v0, :cond_9

    if-lt p2, v0, :cond_9

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 271
    const/4 v5, 0x0

    aget v5, v3, v5

    .line 270
    if-le v5, p3, :cond_7

    .line 275
    :cond_9
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_a

    .line 276
    const/4 v5, 0x0

    goto :goto_1

    .line 279
    :cond_a
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 280
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 283
    .local v2, "maxJ":I
    const/4 v0, 0x1

    .line 284
    :goto_2
    add-int v5, p1, v0

    if-ge v5, v1, :cond_b

    add-int v5, p2, v0

    if-ge v5, v2, :cond_b

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_d

    .line 290
    :cond_b
    add-int v5, p1, v0

    if-ge v5, v1, :cond_c

    add-int v5, p2, v0

    if-lt v5, v2, :cond_f

    .line 291
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 285
    :cond_d
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_e
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 294
    :cond_f
    add-int v5, p1, v0

    if-ge v5, v1, :cond_10

    add-int v5, p2, v0

    if-ge v5, v2, :cond_10

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_10

    .line 295
    const/4 v5, 0x3

    aget v5, v3, v5

    .line 294
    if-lt v5, p3, :cond_e

    .line 300
    :cond_10
    add-int v5, p1, v0

    if-ge v5, v1, :cond_11

    add-int v5, p2, v0

    if-ge v5, v2, :cond_11

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_13

    .line 301
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 306
    :cond_12
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 307
    add-int/lit8 v0, v0, 0x1

    .line 304
    :cond_13
    add-int v5, p1, v0

    if-ge v5, v1, :cond_14

    add-int v5, p2, v0

    if-ge v5, v2, :cond_14

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 305
    const/4 v5, 0x4

    aget v5, v3, v5

    .line 304
    if-lt v5, p3, :cond_12

    .line 310
    :cond_14
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_15

    .line 311
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 316
    :cond_15
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 318
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v6, p4, 0x2

    if-ge v5, v6, :cond_16

    .line 319
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 317
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 409
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 410
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 412
    .local v3, "stateCount":[I
    move v1, p1

    .line 413
    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 417
    :cond_0
    if-gez v1, :cond_3

    .line 418
    const/high16 v5, 0x7fc00000    # NaNf

    .line 466
    :goto_1
    return v5

    .line 414
    :cond_1
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 415
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 421
    :cond_2
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 422
    add-int/lit8 v1, v1, -0x1

    .line 420
    :cond_3
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_2

    .line 424
    :cond_4
    if-ltz v1, :cond_5

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_7

    .line 425
    :cond_5
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 428
    :cond_6
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 429
    add-int/lit8 v1, v1, -0x1

    .line 427
    :cond_7
    if-ltz v1, :cond_8

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 431
    :cond_8
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_9

    .line 432
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 435
    :cond_9
    add-int/lit8 v1, p1, 0x1

    .line 436
    :goto_2
    if-ge v1, v2, :cond_a

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_b

    .line 440
    :cond_a
    if-ne v1, v2, :cond_d

    .line 441
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 437
    :cond_b
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 444
    :cond_c
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 443
    :cond_d
    if-ge v1, v2, :cond_e

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_c

    .line 447
    :cond_e
    if-eq v1, v2, :cond_f

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_11

    .line 448
    :cond_f
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 451
    :cond_10
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 452
    add-int/lit8 v1, v1, 0x1

    .line 450
    :cond_11
    if-ge v1, v2, :cond_12

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_10

    .line 454
    :cond_12
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_13

    .line 455
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 460
    :cond_13
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    .line 461
    const/4 v6, 0x4

    aget v6, v3, v6

    .line 460
    add-int v4, v5, v6

    .line 462
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_14

    .line 463
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 466
    :cond_14
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_15
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 337
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 338
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 341
    .local v3, "stateCount":[I
    move v0, p1

    .line 342
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 346
    :cond_0
    if-gez v0, :cond_3

    .line 347
    const/high16 v5, 0x7fc00000    # NaNf

    .line 397
    :goto_1
    return v5

    .line 343
    :cond_1
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    :cond_2
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 351
    add-int/lit8 v0, v0, -0x1

    .line 349
    :cond_3
    if-ltz v0, :cond_4

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_2

    .line 354
    :cond_4
    if-ltz v0, :cond_5

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_7

    .line 355
    :cond_5
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 358
    :cond_6
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 359
    add-int/lit8 v0, v0, -0x1

    .line 357
    :cond_7
    if-ltz v0, :cond_8

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 361
    :cond_8
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_9

    .line 362
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 366
    :cond_9
    add-int/lit8 v0, p1, 0x1

    .line 367
    :goto_2
    if-ge v0, v2, :cond_a

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_b

    .line 371
    :cond_a
    if-ne v0, v2, :cond_d

    .line 372
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 368
    :cond_b
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    :cond_c
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 374
    :cond_d
    if-ge v0, v2, :cond_e

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_c

    .line 378
    :cond_e
    if-eq v0, v2, :cond_f

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_11

    .line 379
    :cond_f
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 382
    :cond_10
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 383
    add-int/lit8 v0, v0, 0x1

    .line 381
    :cond_11
    if-ge v0, v2, :cond_12

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_10

    .line 385
    :cond_12
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_13

    .line 386
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 391
    :cond_13
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    .line 392
    const/4 v6, 0x4

    aget v6, v3, v6

    .line 391
    add-int v4, v5, v6

    .line 393
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_14

    .line 394
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 397
    :cond_14
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_15
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 528
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 529
    .local v2, "max":I
    if-gt v2, v7, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v3

    .line 532
    :cond_1
    const/4 v1, 0x0

    .line 533
    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 535
    if-nez v1, :cond_3

    .line 536
    move-object v1, v0

    .line 537
    goto :goto_1

    .line 543
    :cond_3
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 544
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 545
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 544
    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v5, 0x0

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-lt v1, v7, :cond_1

    .line 208
    const/4 v7, 0x7

    if-ge v4, v7, :cond_2

    .line 214
    :cond_0
    :goto_1
    return v5

    .line 202
    :cond_1
    aget v0, p0, v1

    .line 203
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 206
    add-int/2addr v4, v0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "count":I
    :cond_2
    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    .line 212
    .local v3, "moduleSize":F
    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v3, v7

    .line 215
    .local v2, "maxVariance":F
    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    .line 216
    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    .line 217
    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 218
    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    .line 219
    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 214
    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private getCrossCheckStateCount()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "confirmedCount":I
    const/4 v5, 0x0

    .line 560
    .local v5, "totalModuleSize":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 561
    .local v2, "max":I
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 567
    const/4 v7, 0x3

    if-ge v1, v7, :cond_3

    .line 579
    :cond_1
    :goto_1
    return v6

    .line 561
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    .local v3, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 563
    add-int/lit8 v1, v1, 0x1

    .line 564
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v5, v8

    goto :goto_0

    .line 574
    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    int-to-float v7, v2

    div-float v0, v5, v7

    .line 575
    .local v0, "average":F
    const/4 v4, 0x0

    .line 576
    .local v4, "totalDeviation":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 579
    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v7, v5

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 576
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    .restart local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v4, v8

    goto :goto_2
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 591
    .local v8, "startSize":I
    const/4 v11, 0x3

    if-ge v8, v11, :cond_0

    .line 593
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 597
    :cond_0
    const/4 v11, 0x3

    if-le v8, v11, :cond_1

    .line 599
    const/4 v10, 0x0

    .line 600
    .local v10, "totalModuleSize":F
    const/4 v7, 0x0

    .line 601
    .local v7, "square":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 606
    int-to-float v11, v8

    div-float v0, v10, v11

    .line 607
    .local v0, "average":F
    int-to-float v11, v8

    div-float v11, v7, v11

    mul-float v12, v0, v0

    sub-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 609
    .local v9, "stdDev":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const v11, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 613
    .local v3, "limit":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_1

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-gt v11, v12, :cond_4

    .line 622
    .end local v0    # "average":F
    .end local v2    # "i":I
    .end local v3    # "limit":F
    .end local v7    # "square":F
    .end local v9    # "stdDev":F
    .end local v10    # "totalModuleSize":F
    :cond_1
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_2

    .line 625
    const/4 v10, 0x0

    .line 626
    .restart local v10    # "totalModuleSize":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 630
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 632
    .restart local v0    # "average":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v11, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 637
    .end local v0    # "average":F
    .end local v10    # "totalModuleSize":F
    :cond_2
    const/4 v11, 0x3

    new-array v12, v11, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v13, 0x0

    .line 638
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v11, v12, v13

    const/4 v13, 0x1

    .line 639
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v11, v12, v13

    const/4 v13, 0x2

    .line 640
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v11, v12, v13

    .line 637
    return-object v12

    .line 601
    .restart local v7    # "square":F
    .restart local v10    # "totalModuleSize":F
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    .local v1, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    .line 603
    .local v6, "size":F
    add-float/2addr v10, v6

    .line 604
    mul-float v12, v6, v6

    add-float/2addr v7, v12

    goto/16 :goto_0

    .line 614
    .end local v1    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v6    # "size":F
    .restart local v0    # "average":F
    .restart local v2    # "i":I
    .restart local v3    # "limit":F
    .restart local v9    # "stdDev":F
    :cond_4
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    .local v4, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    sub-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v11, v3

    if-lez v11, :cond_5

    .line 616
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v2, v2, -0x1

    .line 613
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 626
    .end local v0    # "average":F
    .end local v2    # "i":I
    .end local v3    # "limit":F
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v7    # "square":F
    .end local v9    # "stdDev":F
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    .local v5, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    add-float/2addr v10, v12

    goto/16 :goto_2
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_3

    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x1

    .line 78
    .local v13, "tryHarder":Z
    :goto_0
    if-eqz p1, :cond_4

    sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v10, 0x1

    .line 79
    .local v10, "pureBarcode":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 80
    .local v7, "maxI":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    .line 88
    .local v8, "maxJ":I
    mul-int/lit8 v14, v7, 0x3

    div-int/lit16 v5, v14, 0xe4

    .line 89
    .local v5, "iSkip":I
    const/4 v14, 0x3

    if-lt v5, v14, :cond_0

    if-eqz v13, :cond_1

    .line 90
    :cond_0
    const/4 v5, 0x3

    .line 93
    :cond_1
    const/4 v3, 0x0

    .line 94
    .local v3, "done":Z
    const/4 v14, 0x5

    new-array v12, v14, [I

    .line 95
    .local v12, "stateCount":[I
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_2

    if-eqz v3, :cond_5

    .line 180
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 181
    .local v9, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v14, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v14

    .line 77
    .end local v3    # "done":Z
    .end local v4    # "i":I
    .end local v5    # "iSkip":I
    .end local v7    # "maxI":I
    .end local v8    # "maxJ":I
    .end local v9    # "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "pureBarcode":Z
    .end local v12    # "stateCount":[I
    .end local v13    # "tryHarder":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 78
    .restart local v13    # "tryHarder":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 97
    .restart local v3    # "done":Z
    .restart local v4    # "i":I
    .restart local v5    # "iSkip":I
    .restart local v7    # "maxI":I
    .restart local v8    # "maxJ":I
    .restart local v10    # "pureBarcode":Z
    .restart local v12    # "stateCount":[I
    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 98
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 99
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 100
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 101
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "currentState":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-lt v6, v8, :cond_7

    .line 168
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v8, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 170
    .local v1, "confirmed":Z
    if-eqz v1, :cond_6

    .line 171
    const/4 v14, 0x0

    aget v5, v12, v14

    .line 172
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_6

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .line 95
    .end local v1    # "confirmed":Z
    :cond_6
    add-int/2addr v4, v5

    goto :goto_2

    .line 104
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 106
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 109
    :cond_8
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    .line 103
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 111
    :cond_9
    and-int/lit8 v14, v2, 0x1

    if-nez v14, :cond_f

    .line 112
    const/4 v14, 0x4

    if-ne v2, v14, :cond_e

    .line 113
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v6, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 115
    .restart local v1    # "confirmed":Z
    if-eqz v1, :cond_c

    .line 118
    const/4 v5, 0x2

    .line 119
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_b

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .line 146
    :cond_a
    :goto_5
    const/4 v2, 0x0

    .line 147
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 148
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 149
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 150
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 151
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    goto :goto_4

    .line 122
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v11

    .line 123
    .local v11, "rowSkip":I
    const/4 v14, 0x2

    aget v14, v12, v14

    if-le v11, v14, :cond_a

    .line 132
    const/4 v14, 0x2

    aget v14, v12, v14

    sub-int v14, v11, v14

    sub-int/2addr v14, v5

    add-int/2addr v4, v14

    .line 133
    add-int/lit8 v6, v8, -0x1

    .line 136
    goto :goto_5

    .line 137
    .end local v11    # "rowSkip":I
    :cond_c
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 138
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 139
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 140
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 141
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 142
    const/4 v2, 0x3

    .line 143
    goto :goto_4

    .line 153
    .end local v1    # "confirmed":Z
    :cond_d
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 154
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 155
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 156
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 157
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 158
    const/4 v2, 0x3

    .line 160
    goto/16 :goto_4

    .line 161
    :cond_e
    add-int/lit8 v2, v2, 0x1

    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto/16 :goto_4

    .line 164
    :cond_f
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto/16 :goto_4
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .prologue
    .line 488
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    .line 489
    const/4 v9, 0x4

    aget v9, p1, v9

    .line 488
    add-int v7, v8, v9

    .line 490
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 491
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 492
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_4

    .line 494
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 495
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_4

    .line 496
    if-eqz p4, :cond_0

    float-to-int v8, v1

    float-to-int v9, v2

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 497
    :cond_0
    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    .line 498
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .line 499
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_2

    .line 508
    :goto_1
    if-nez v4, :cond_1

    .line 509
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_1

    .line 512
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 515
    .end local v6    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v8, 0x1

    .line 518
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :goto_2
    return v8

    .line 500
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_2
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 503
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v4, 0x1

    .line 505
    goto :goto_1

    .line 499
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method
