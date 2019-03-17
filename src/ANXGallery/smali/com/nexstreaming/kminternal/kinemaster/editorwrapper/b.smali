.class public Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;
.super Ljava/lang/Object;
.source "LookUpTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;,
        Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;,
        Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

.field private static i:I


# instance fields
.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private transient g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private j:Ljava/lang/Object;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 33
    sput v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a:I

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    .line 42
    sput v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->i:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j:Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    .line 157
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->f:Landroid/content/Context;

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;)Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    .line 502
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->a()[I

    move-result-object v10

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 507
    mul-int v2, v5, v9

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v11

    .line 508
    invoke-virtual {v11}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 510
    invoke-virtual {v11}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    .line 511
    array-length v4, v3

    .line 512
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 514
    aget v5, v3, v2

    .line 516
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v7, 0x43800000    # 256.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x427c0000    # 63.0f

    mul-float/2addr v6, v7

    .line 517
    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x43800000    # 256.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float/2addr v7, v8

    .line 518
    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v8, 0x43800000    # 256.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x427c0000    # 63.0f

    mul-float/2addr v5, v8

    .line 519
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 520
    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 521
    rem-int/lit8 v11, v8, 0x8

    .line 522
    sub-int/2addr v8, v11

    div-int/lit8 v8, v8, 0x8

    .line 523
    rem-int/lit8 v12, v9, 0x8

    .line 524
    sub-int/2addr v9, v12

    div-int/lit8 v9, v9, 0x8

    .line 526
    mul-int/lit8 v8, v8, 0x40

    .line 527
    mul-int/lit8 v11, v11, 0x40

    .line 528
    mul-int/lit8 v9, v9, 0x40

    .line 529
    mul-int/lit8 v12, v12, 0x40

    .line 531
    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v13, v14

    .line 532
    float-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 533
    float-to-double v0, v6

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    .line 534
    float-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    .line 536
    add-int v17, v11, v13

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    add-int v17, v17, v8

    add-int v17, v17, v14

    aget v17, v10, v17

    .line 537
    add-int v18, v11, v15

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    add-int v18, v18, v8

    add-int v18, v18, v14

    aget v18, v10, v18

    .line 538
    add-int/2addr v11, v13

    mul-int/lit16 v11, v11, 0x200

    add-int/2addr v8, v11

    add-int v8, v8, v16

    aget v8, v10, v8

    .line 540
    shr-int/lit8 v11, v17, 0x10

    and-int/lit16 v11, v11, 0xff

    .line 541
    shr-int/lit8 v19, v17, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 542
    shr-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 543
    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 545
    int-to-float v0, v13

    move/from16 v20, v0

    sub-float v6, v6, v20

    .line 546
    int-to-float v0, v14

    move/from16 v20, v0

    sub-float v7, v7, v20

    .line 547
    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sub-float v5, v5, v20

    .line 549
    int-to-float v11, v11

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v6

    mul-float v11, v11, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v6

    add-float v11, v11, v18

    float-to-int v11, v11

    .line 550
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v7

    mul-float v18, v18, v19

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float v8, v8, v18

    float-to-int v8, v8

    .line 551
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 553
    add-int v18, v12, v13

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    add-int v18, v18, v9

    add-int v18, v18, v14

    aget v18, v10, v18

    .line 554
    add-int/2addr v15, v12

    mul-int/lit16 v15, v15, 0x200

    add-int/2addr v15, v9

    add-int/2addr v14, v15

    aget v14, v10, v14

    .line 555
    add-int/2addr v12, v13

    mul-int/lit16 v12, v12, 0x200

    add-int/2addr v9, v12

    add-int v9, v9, v16

    aget v9, v10, v9

    .line 557
    shr-int/lit8 v12, v18, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 558
    shr-int/lit8 v13, v18, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 559
    shr-int/lit8 v14, v14, 0x10

    and-int/lit16 v14, v14, 0xff

    .line 560
    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    .line 562
    int-to-float v12, v12

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v6

    mul-float/2addr v12, v15

    int-to-float v14, v14

    mul-float/2addr v6, v14

    add-float/2addr v6, v12

    float-to-int v6, v6

    .line 563
    int-to-float v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v7

    mul-float/2addr v12, v13

    int-to-float v9, v9

    mul-float/2addr v7, v9

    add-float/2addr v7, v12

    float-to-int v7, v7

    .line 564
    move/from16 v0, v18

    and-int/lit16 v9, v0, 0xff

    .line 566
    int-to-float v12, v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v5

    mul-float/2addr v12, v13

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v12

    float-to-int v6, v6

    .line 567
    int-to-float v6, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float/2addr v6, v12

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 568
    move/from16 v0, v17

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    mul-float/2addr v6, v7

    int-to-float v7, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 570
    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v11, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v8, 0x8

    or-int/2addr v5, v6

    or-int v5, v5, v17

    aput v5, v3, v2

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 573
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 576
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    iget-object v1, v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v1, 0x0

    sput-object v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    .line 122
    :cond_0
    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    if-nez v1, :cond_1

    .line 123
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-direct {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    .line 124
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d()I

    .line 126
    :cond_1
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    monitor-exit p0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 284
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k()V

    .line 286
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 289
    goto :goto_0

    .line 291
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 291
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 296
    goto :goto_0
.end method

.method public static c()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    return-object v0
.end method

.method private e(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 300
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k()V

    .line 302
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 312
    goto :goto_0
.end method

.method private i()I
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    .line 196
    sget v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->i:I

    :goto_0
    sget v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->i:I

    add-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    monitor-exit p0

    return v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;

    sget v2, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a:I

    invoke-direct {v0, p0, v2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;I)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    .line 443
    :cond_0
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->h:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->h:Z

    .line 645
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d()I

    .line 647
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;

    .line 235
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m(I)I

    .line 242
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b(I)V

    .line 243
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->h()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exceed the capacity of custom lut - it is 10"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j()V

    .line 222
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->i()I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;ILcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;)V

    .line 223
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->h()V

    .line 228
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0, p2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;

    move-result-object v0

    .line 494
    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a(Landroid/graphics/Bitmap;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c(I)I

    move-result v3

    .line 448
    if-gez v3, :cond_0

    move-object v0, v2

    .line 489
    :goto_0
    return-object v0

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j()V

    .line 454
    iget-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;

    .line 456
    if-nez v0, :cond_1

    .line 458
    iget-object v5, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;

    .line 459
    if-eqz v1, :cond_2

    .line 460
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->b()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;

    move-result-object v0

    .line 487
    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 464
    :cond_2
    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    const/4 v1, 0x0

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 468
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v6

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 469
    if-eqz v1, :cond_1

    .line 472
    :try_start_2
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v8

    invoke-interface {v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v2

    .line 473
    if-eqz v2, :cond_3

    .line 474
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 475
    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 476
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 477
    iget-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;

    invoke-direct {v1, p0, v5}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 482
    :cond_3
    :try_start_4
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 479
    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 480
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 482
    :try_start_6
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 483
    goto :goto_1

    .line 482
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 479
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v0, "LookUpTable"

    const-string v1, "releaseResource2LookUpTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 133
    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    .line 139
    :cond_1
    sput-object v2, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    .line 140
    return-void
.end method

.method public a(Z)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k()V

    .line 620
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    .line 622
    if-eqz p1, :cond_1

    .line 623
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 626
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 632
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_3

    .line 633
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 632
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 635
    :cond_3
    return-object v3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 149
    :cond_0
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k()V

    .line 266
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;

    .line 272
    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)I

    move-result v2

    goto :goto_0

    .line 275
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public d()I
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 162
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    :goto_0
    const/4 v2, 0x1

    .line 169
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->filter:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 171
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v0

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->lut:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v0, v3, :cond_0

    .line 172
    iget-object v9, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;ILjava/lang/String;JZLcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;

    .line 180
    iget-object v10, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;ILjava/lang/String;JZLcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    add-int/lit8 v0, v8, -0x1

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;
    .locals 3

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k()V

    .line 610
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    .line 611
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 615
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;

    .line 251
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m(I)I

    .line 252
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->b(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 255
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->h()V

    .line 256
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->k()V

    .line 420
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 580
    .line 581
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 584
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 585
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 587
    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->f()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vignette.webp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 605
    :goto_2
    return-object v1

    .line 593
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "vignette.webp"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 594
    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 604
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->g:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 605
    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->h:Z

    .line 640
    return-void
.end method
