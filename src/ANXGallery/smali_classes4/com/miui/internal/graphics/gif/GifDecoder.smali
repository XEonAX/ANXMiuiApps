.class public Lcom/miui/internal/graphics/gif/GifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field private eA:I

.field private eB:[I

.field private eC:Z

.field private ex:J

.field private ey:Z

.field private ez:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field private height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field private mCancel:Z

.field private mMaxDecodeSize:J

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    .line 126
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    .line 131
    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 134
    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    .line 136
    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    .line 138
    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 363
    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    .line 409
    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eC:Z

    return-void
.end method

.method private I()V
    .locals 0

    .line 374
    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .locals 4

    .line 394
    nop

    .line 395
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 396
    const-string v1, ""

    .line 397
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 398
    invoke-static {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v2

    .line 399
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 400
    goto :goto_1

    .line 402
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    :goto_1
    const-string p0, "GIF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 406
    :cond_2
    return v0
.end method

.method protected static readOneByte(Ljava/io/InputStream;)I
    .locals 0

    .line 381
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 382
    :catch_0
    move-exception p0

    .line 383
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 25

    .line 454
    move-object/from16 v0, p0

    .line 455
    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    mul-int/2addr v1, v2

    .line 457
    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 458
    :cond_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    .line 460
    :cond_1
    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_2

    .line 461
    new-array v2, v3, [S

    iput-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    .line 463
    :cond_2
    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    if-nez v2, :cond_3

    .line 464
    new-array v2, v3, [B

    iput-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    .line 466
    :cond_3
    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_4

    .line 467
    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    .line 470
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v2

    .line 471
    const/4 v4, 0x1

    shl-int v5, v4, v2

    .line 472
    add-int/lit8 v6, v5, 0x1

    .line 473
    add-int/lit8 v7, v5, 0x2

    .line 474
    nop

    .line 475
    add-int/2addr v2, v4

    .line 476
    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    .line 477
    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_5

    .line 478
    iget-object v11, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    .line 479
    iget-object v11, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    .line 477
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 482
    :cond_5
    nop

    .line 483
    move v14, v2

    move/from16 v17, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v15, v13

    move/from16 v16, v15

    move/from16 v18, v16

    move/from16 v19, v18

    move/from16 v20, v19

    const/4 v3, -0x1

    move v9, v7

    :goto_1
    if-ge v11, v1, :cond_12

    .line 484
    if-nez v12, :cond_11

    .line 485
    if-ge v13, v14, :cond_8

    .line 487
    if-nez v15, :cond_7

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    move-result v15

    .line 490
    if-gtz v15, :cond_6

    .line 491
    goto/16 :goto_6

    .line 493
    :cond_6
    nop

    .line 495
    const/16 v18, 0x0

    :cond_7
    iget-object v10, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int v16, v16, v10

    .line 496
    add-int/lit8 v13, v13, 0x8

    .line 497
    add-int/lit8 v18, v18, 0x1

    .line 498
    const/4 v10, -0x1

    add-int/2addr v15, v10

    .line 499
    goto :goto_1

    .line 502
    :cond_8
    and-int v10, v16, v17

    .line 503
    shr-int v16, v16, v14

    .line 504
    sub-int/2addr v13, v14

    .line 506
    if-gt v10, v9, :cond_12

    if-ne v10, v6, :cond_9

    .line 507
    goto/16 :goto_6

    .line 509
    :cond_9
    if-ne v10, v5, :cond_a

    .line 511
    nop

    .line 512
    nop

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 483
    move v14, v2

    move v9, v7

    move/from16 v17, v8

    const/4 v3, -0x1

    goto :goto_1

    .line 517
    :cond_a
    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 518
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v4, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v2, v2, v10

    aput-byte v2, v3, v12

    .line 519
    nop

    .line 520
    nop

    .line 521
    nop

    .line 483
    move v12, v4

    move v3, v10

    move/from16 v19, v3

    move/from16 v2, v21

    goto/16 :goto_5

    .line 523
    :cond_b
    move/from16 v21, v2

    .line 524
    if-ne v10, v9, :cond_c

    .line 525
    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v4, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    .line 526
    nop

    .line 528
    move v2, v3

    goto :goto_2

    :cond_c
    move v2, v10

    move/from16 v22, v12

    :goto_2
    if-le v2, v5, :cond_d

    .line 529
    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v12, v22, 0x1

    move/from16 v23, v5

    iget-object v5, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v22

    .line 530
    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    aget-short v2, v4, v2

    .line 528
    move/from16 v22, v12

    move/from16 v5, v23

    goto :goto_2

    .line 532
    :cond_d
    move/from16 v23, v5

    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    .line 534
    const/16 v4, 0x1000

    if-lt v9, v4, :cond_e

    .line 535
    goto :goto_6

    .line 537
    :cond_e
    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v12, v22, 0x1

    int-to-byte v5, v2

    aput-byte v5, v4, v22

    .line 538
    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    int-to-short v3, v3

    aput-short v3, v4, v9

    .line 539
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    aput-byte v5, v3, v9

    .line 540
    add-int/lit8 v9, v9, 0x1

    .line 541
    and-int v3, v9, v17

    if-nez v3, :cond_f

    const/16 v5, 0x1000

    if-ge v9, v5, :cond_10

    .line 542
    add-int/lit8 v14, v14, 0x1

    .line 543
    add-int v17, v17, v9

    goto :goto_3

    .line 545
    :cond_f
    const/16 v5, 0x1000

    .line 548
    :cond_10
    :goto_3
    move/from16 v19, v2

    move v3, v10

    goto :goto_4

    :cond_11
    move/from16 v21, v2

    move/from16 v23, v5

    move/from16 v4, v19

    const/16 v5, 0x1000

    :goto_4
    const/4 v2, -0x1

    add-int/2addr v12, v2

    .line 549
    iget-object v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    aget-byte v2, v2, v12

    aput-byte v2, v4, v20

    .line 550
    add-int/lit8 v11, v11, 0x1

    .line 483
    move/from16 v20, v10

    move/from16 v2, v21

    move/from16 v5, v23

    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 552
    :cond_12
    :goto_6
    move/from16 v2, v20

    :goto_7
    if-ge v2, v1, :cond_13

    .line 553
    iget-object v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 555
    :cond_13
    return-void
.end method

.method protected err()Z
    .locals 1

    .line 561
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 211
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    .line 212
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget p1, p1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->delay:I

    iput p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 215
    :cond_0
    iget p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    return p1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    .line 357
    if-gtz v0, :cond_0

    .line 358
    const/4 p1, 0x0

    return-object p1

    .line 359
    :cond_0
    rem-int/2addr p1, v0

    .line 360
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget-object p1, p1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 898
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public getRealFrameCount()I
    .locals 1

    .line 652
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ey:Z

    if-eqz v0, :cond_0

    .line 653
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ez:I

    return v0

    .line 655
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 894
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 1

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 569
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    .line 571
    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    .line 572
    return-void
.end method

.method public isDecodeToTheEnd()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ey:Z

    return v0
.end method

.method protected read()I
    .locals 1

    .line 578
    nop

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 584
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 3

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ey:Z

    .line 419
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eC:Z

    if-nez v0, :cond_3

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eC:Z

    .line 423
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->init()V

    .line 424
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 425
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readHeader()V

    .line 428
    iget-boolean p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result p1

    if-nez p1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readContents()V

    .line 430
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    .line 431
    if-gez p1, :cond_0

    .line 432
    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception p1

    .line 436
    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 437
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->recycle()V

    .line 438
    :cond_0
    :goto_0
    goto :goto_1

    .line 440
    :cond_1
    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 443
    :goto_1
    iget-boolean p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz p1, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->recycle()V

    .line 445
    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 447
    :cond_2
    iget p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    return p1

    .line 420
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder cannot be called more than once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readBitmap()V
    .locals 6

    .line 772
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    .line 773
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    .line 774
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    .line 775
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    .line 776
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    .line 777
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctFlag:Z

    .line 778
    const/4 v1, 0x2

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v1, v4

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctSize:I

    .line 782
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->interlace:Z

    .line 783
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctFlag:Z

    if-eqz v0, :cond_2

    .line 784
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctSize:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    .line 785
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    goto :goto_2

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    .line 788
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    if-ne v0, v1, :cond_3

    .line 789
    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    .line 792
    :cond_3
    :goto_2
    nop

    .line 793
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v0, :cond_4

    .line 794
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aget v0, v0, v1

    .line 795
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aput v3, v1, v4

    goto :goto_3

    .line 797
    :cond_4
    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    if-nez v1, :cond_5

    .line 798
    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 800
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 801
    return-void

    .line 803
    :cond_6
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->decodeBitmapData()V

    .line 804
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    .line 805
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 806
    return-void

    .line 809
    :cond_7
    iget-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v1, :cond_8

    .line 810
    return-void

    .line 812
    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->setPixels()V

    .line 815
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ez:I

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eA:I

    if-lt v1, v3, :cond_9

    .line 816
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 818
    :cond_9
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ez:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ez:I

    .line 821
    iget-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v1, :cond_a

    .line 822
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aput v0, v1, v2

    .line 824
    :cond_a
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->resetFrame()V

    .line 825
    return-void
.end method

.method protected readBlock()I
    .locals 4

    .line 593
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    .line 594
    nop

    .line 595
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 598
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 601
    goto :goto_1

    .line 603
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 607
    :cond_1
    :goto_1
    goto :goto_2

    .line 605
    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    :goto_2
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_2

    .line 609
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 612
    :cond_2
    return v1
.end method

.method protected readColorTable(I)[I
    .locals 9

    .line 622
    const/4 v0, 0x3

    mul-int/2addr v0, p1

    .line 623
    nop

    .line 624
    new-array v1, v0, [B

    .line 625
    nop

    .line 627
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    array-length v4, v1

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_0

    .line 628
    :catch_0
    move-exception v3

    .line 629
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 631
    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 632
    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 644
    const/4 p1, 0x0

    goto :goto_2

    .line 634
    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 635
    nop

    .line 636
    nop

    .line 637
    move v3, v2

    :goto_1
    if-ge v2, p1, :cond_1

    .line 638
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 639
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 640
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    .line 641
    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v0, v2

    .line 642
    nop

    .line 637
    move v3, v6

    move v2, v7

    goto :goto_1

    .line 644
    :cond_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method protected readContents()V
    .locals 7

    .line 663
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ez:I

    .line 664
    nop

    .line 665
    move v1, v0

    :goto_0
    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_a

    .line 666
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_0

    .line 667
    goto/16 :goto_4

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v2

    .line 670
    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    .line 720
    iput v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto/16 :goto_3

    .line 713
    :cond_1
    nop

    .line 715
    iput-boolean v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ey:Z

    .line 716
    nop

    .line 722
    :goto_1
    move v1, v4

    goto/16 :goto_3

    .line 673
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 675
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBitmap()V

    .line 677
    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 678
    iget-wide v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ex:J

    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ex:J

    .line 680
    :cond_3
    iget-wide v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ex:J

    iget-wide v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_9

    .line 681
    goto :goto_1

    .line 685
    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v2

    .line 686
    if-eq v2, v4, :cond_8

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    .line 709
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    .line 711
    goto :goto_3

    .line 691
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    .line 692
    const-string v2, ""

    .line 693
    move-object v3, v2

    move v2, v0

    :goto_2
    const/16 v4, 0xb

    if-ge v2, v4, :cond_5

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 696
    :cond_5
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 697
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readNetscapeExt()V

    goto :goto_3

    .line 699
    :cond_6
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    .line 701
    goto :goto_3

    .line 703
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    .line 704
    goto :goto_3

    .line 688
    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readGraphicControlExt()V

    .line 689
    goto :goto_3

    .line 706
    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    .line 707
    nop

    .line 722
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 723
    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xfe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .line 729
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    .line 730
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    .line 731
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 732
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 733
    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 735
    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    .line 736
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 737
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    if-gtz v0, :cond_2

    .line 738
    const/16 v0, 0x64

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 740
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    .line 741
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    .line 742
    return-void
.end method

.method protected readHeader()V
    .locals 3

    .line 748
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_0

    .line 749
    return-void

    .line 752
    :cond_0
    const-string v0, ""

    .line 753
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_1
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 758
    return-void

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readLSD()V

    .line 762
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_3

    .line 763
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    .line 764
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    .line 766
    :cond_3
    return-void
.end method

.method protected readLSD()V
    .locals 2

    .line 832
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    .line 833
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    .line 835
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    .line 836
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctFlag:Z

    .line 839
    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctSize:I

    .line 840
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    .line 841
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelAspect:I

    .line 842
    return-void
.end method

.method protected readNetscapeExt()V
    .locals 3

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    .line 850
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 852
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 853
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 854
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    .line 856
    :cond_1
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .line 864
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 171
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->recycle()V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public requestCancelDecode()V
    .locals 1

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    .line 369
    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->I()V

    .line 370
    return-void
.end method

.method protected resetFrame()V
    .locals 1

    .line 871
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    .line 872
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrx:I

    .line 873
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lry:I

    .line 874
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrw:I

    .line 875
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrh:I

    .line 876
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 877
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBgColor:I

    .line 878
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 879
    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    .line 880
    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    .line 882
    return-void
.end method

.method public setMaxDecodeSize(J)V
    .locals 0

    .line 183
    iput-wide p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 184
    return-void
.end method

.method protected setPixels()V
    .locals 13

    .line 251
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    if-nez v0, :cond_0

    .line 252
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    .line 255
    :cond_0
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_6

    .line 256
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 259
    if-lez v0, :cond_2

    .line 260
    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 263
    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    const/4 v7, 0x0

    iget v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v12, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 265
    :cond_1
    goto :goto_0

    .line 266
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 267
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    .line 270
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 272
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    if-ne v0, v2, :cond_6

    .line 274
    nop

    .line 275
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-nez v0, :cond_4

    .line 276
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBgColor:I

    goto :goto_1

    .line 278
    :cond_4
    move v0, v1

    :goto_1
    iget v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lry:I

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrx:I

    add-int/2addr v4, v5

    .line 279
    move v5, v4

    move v4, v1

    :goto_2
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrh:I

    if-ge v4, v6, :cond_6

    .line 280
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrw:I

    add-int/2addr v6, v5

    .line 281
    move v7, v5

    :goto_3
    if-ge v7, v6, :cond_5

    .line 282
    iget-object v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    aput v0, v8, v7

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 284
    :cond_5
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int/2addr v5, v6

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 290
    :cond_6
    nop

    .line 291
    const/16 v0, 0x8

    .line 292
    nop

    .line 293
    move v5, v0

    move v0, v1

    move v4, v3

    :goto_4
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    if-ge v1, v6, :cond_c

    .line 294
    nop

    .line 295
    iget-boolean v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->interlace:Z

    if-eqz v6, :cond_8

    .line 296
    iget v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    const/4 v7, 0x4

    if-lt v0, v6, :cond_7

    .line 297
    add-int/lit8 v4, v4, 0x1

    .line 298
    packed-switch v4, :pswitch_data_0

    goto :goto_5

    .line 307
    :pswitch_0
    nop

    .line 308
    nop

    .line 309
    nop

    .line 314
    move v5, v2

    move v0, v3

    goto :goto_5

    .line 303
    :pswitch_1
    nop

    .line 304
    nop

    .line 305
    nop

    .line 314
    move v0, v2

    move v5, v7

    goto :goto_5

    .line 300
    :pswitch_2
    nop

    .line 301
    nop

    .line 314
    move v0, v7

    .line 315
    :cond_7
    :goto_5
    add-int v6, v0, v5

    goto :goto_6

    .line 317
    :cond_8
    move v6, v0

    move v0, v1

    :goto_6
    iget v7, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    add-int/2addr v0, v7

    .line 318
    iget v7, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    if-ge v0, v7, :cond_b

    .line 319
    iget v7, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v0, v7

    .line 320
    iget v7, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    add-int/2addr v7, v0

    .line 321
    iget v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    add-int/2addr v8, v7

    .line 322
    iget v9, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int/2addr v9, v0

    if-ge v9, v8, :cond_9

    .line 323
    iget v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int/2addr v8, v0

    .line 325
    :cond_9
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    mul-int/2addr v0, v1

    .line 326
    :goto_7
    if-ge v7, v8, :cond_b

    .line 328
    iget-object v9, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v10, v0, 0x1

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    .line 329
    iget-object v9, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    aget v0, v9, v0

    .line 330
    if-eqz v0, :cond_a

    .line 331
    iget-object v9, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    aput v0, v9, v7

    .line 333
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 334
    nop

    .line 326
    move v0, v10

    goto :goto_7

    .line 293
    :cond_b
    add-int/lit8 v1, v1, 0x1

    move v0, v6

    goto :goto_4

    .line 341
    :cond_c
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ez:I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eA:I

    if-gt v0, v1, :cond_d

    .line 342
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 343
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    :cond_d
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eB:[I

    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 348
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStartFrame(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->eA:I

    .line 166
    return-void
.end method

.method protected skip()V
    .locals 1

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    .line 890
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    :cond_1
    return-void
.end method
