.class public Lcom/larvalabs/svgandroid/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larvalabs/svgandroid/SVGParser$e;,
        Lcom/larvalabs/svgandroid/SVGParser$f;,
        Lcom/larvalabs/svgandroid/SVGParser$d;,
        Lcom/larvalabs/svgandroid/SVGParser$g;,
        Lcom/larvalabs/svgandroid/SVGParser$a;,
        Lcom/larvalabs/svgandroid/SVGParser$b;,
        Lcom/larvalabs/svgandroid/SVGParser$Prefix;,
        Lcom/larvalabs/svgandroid/SVGParser$h;,
        Lcom/larvalabs/svgandroid/SVGParser$c;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/larvalabs/svgandroid/SVGParser$Prefix;Lcom/larvalabs/svgandroid/SVGParser$b;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser;->b(Lcom/larvalabs/svgandroid/SVGParser$Prefix;Lcom/larvalabs/svgandroid/SVGParser$b;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$b;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/larvalabs/svgandroid/SVGParser;->d(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/io/InputStream;Lcom/larvalabs/svgandroid/SVGParser$c;)Lcom/larvalabs/svgandroid/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/larvalabs/svgandroid/SVGParser$c;)Lcom/larvalabs/svgandroid/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 321
    const-string v0, "SVGAndroid"

    const-string v1, "Parse IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 325
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 329
    new-instance v2, Lcom/larvalabs/svgandroid/SVGParser$e;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/larvalabs/svgandroid/SVGParser$e;-><init>(Landroid/graphics/Picture;Lcom/larvalabs/svgandroid/SVGParser$c;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 330
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 331
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 333
    new-instance v0, Lcom/larvalabs/svgandroid/b;

    iget-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$e;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/larvalabs/svgandroid/SVGParser$e;->a()Lcom/larvalabs/svgandroid/SVGParser$c;

    move-result-object v4

    invoke-static {v4}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/larvalabs/svgandroid/b;-><init>(Landroid/graphics/Picture;Landroid/graphics/RectF;Ljava/util/Set;)V

    .line 335
    iget-object v1, v2, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iget-object v1, v2, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/larvalabs/svgandroid/b;->a(Landroid/graphics/RectF;)V

    .line 338
    :cond_0
    const-string v1, "SVGAndroid"

    const-string v2, "Parse OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    const-string v1, "SVGAndroid"

    const-string v2, "Parse Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    new-instance v1, Lcom/larvalabs/svgandroid/SVGParseException;

    invoke-direct {v1, v0}, Lcom/larvalabs/svgandroid/SVGParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/util/Map;I)Lcom/larvalabs/svgandroid/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/larvalabs/svgandroid/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-direct {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;-><init>()V

    .line 190
    invoke-virtual {v0, p1, p2}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Ljava/util/Map;I)V

    .line 191
    invoke-static {p0, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/io/InputStream;Lcom/larvalabs/svgandroid/SVGParser$c;)Lcom/larvalabs/svgandroid/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser;->e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFII)V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method private static b(Lcom/larvalabs/svgandroid/SVGParser$Prefix;Lcom/larvalabs/svgandroid/SVGParser$b;)Landroid/graphics/Matrix;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 478
    sget-object v0, Lcom/larvalabs/svgandroid/SVGParser$1;->a:[I

    invoke-virtual {p0}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 556
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 480
    :pswitch_0
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 481
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 482
    const/16 v0, 0x9

    new-array v3, v0, [F

    .line 484
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v4

    .line 485
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v5

    .line 486
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v6

    .line 488
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v7

    const/4 v4, 0x4

    .line 489
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v4

    const/4 v4, 0x5

    .line 490
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v4

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    .line 482
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    move-object v0, v2

    .line 496
    goto/16 :goto_0

    .line 500
    :pswitch_1
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 503
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 504
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 506
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v0, v1

    .line 508
    goto/16 :goto_0

    .line 512
    :pswitch_2
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 513
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 515
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 516
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 518
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 519
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_0

    .line 524
    :pswitch_3
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 525
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 526
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 527
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto/16 :goto_0

    .line 532
    :pswitch_4
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 534
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 535
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto/16 :goto_0

    .line 540
    :pswitch_5
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 541
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 544
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 545
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 546
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v0, v2

    .line 548
    :goto_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 549
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 550
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 551
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v0, v2

    .line 552
    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/larvalabs/svgandroid/SVGParser;->e(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser;->f(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    invoke-static {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser;->e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 880
    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-object p2

    .line 883
    :cond_0
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    .line 887
    :cond_1
    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/larvalabs/svgandroid/SVGParser;->f(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$b;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser;->d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$b;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$b;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 351
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v0, v4

    move v2, v4

    .line 353
    :goto_0
    if-ge v3, v5, :cond_4

    .line 354
    if-eqz v0, :cond_0

    move v0, v4

    .line 353
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 359
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 396
    :sswitch_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 400
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 401
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const/16 v2, 0x2d

    if-ne v7, v2, :cond_2

    move v2, v3

    .line 403
    goto :goto_1

    .line 382
    :sswitch_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 385
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 386
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_1
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$b;

    invoke-direct {v0, v6, v3}, Lcom/larvalabs/svgandroid/SVGParser$b;-><init>(Ljava/util/ArrayList;I)V

    .line 425
    :goto_2
    return-object v0

    .line 405
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move v0, v1

    .line 406
    goto :goto_1

    .line 409
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 411
    goto :goto_1

    .line 415
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 419
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 425
    :cond_5
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$b;

    invoke-direct {v0, v6, v2}, Lcom/larvalabs/svgandroid/SVGParser$b;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 420
    :catch_0
    move-exception v0

    goto :goto_3

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x56 -> :sswitch_1
        0x5a -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x76 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$b;
    .locals 3

    .prologue
    .line 855
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 856
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 857
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser;->d(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$b;

    move-result-object v0

    .line 861
    :goto_1
    return-object v0

    .line 856
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$h;

    invoke-direct {v0, p0}, Lcom/larvalabs/svgandroid/SVGParser$h;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/SVGParser$h;->a()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 865
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 866
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 867
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    :goto_1
    return-object v0

    .line 866
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 23

    .prologue
    .line 667
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    .line 668
    new-instance v20, Lcom/larvalabs/svgandroid/a;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/larvalabs/svgandroid/a;-><init>(Ljava/lang/CharSequence;I)V

    .line 669
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->a()V

    .line 670
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 671
    const/4 v9, 0x0

    .line 672
    const/4 v8, 0x0

    .line 673
    const/4 v7, 0x0

    .line 674
    const/4 v6, 0x0

    .line 675
    const/4 v5, 0x0

    .line 676
    const/4 v4, 0x0

    .line 677
    const/4 v3, 0x0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move v5, v3

    move v4, v8

    move v3, v9

    .line 678
    :goto_0
    move-object/from16 v0, v20

    iget v6, v0, Lcom/larvalabs/svgandroid/a;->a:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    .line 679
    move-object/from16 v0, v20

    iget v6, v0, Lcom/larvalabs/svgandroid/a;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 680
    packed-switch v6, :pswitch_data_0

    .line 704
    :cond_0
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->c()V

    move/from16 v18, v6

    move v12, v6

    .line 709
    :goto_1
    const/16 v17, 0x0

    .line 710
    sparse-switch v18, :sswitch_data_0

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    .line 841
    :goto_2
    if-nez v9, :cond_1

    move v5, v7

    move v6, v8

    .line 845
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->a()V

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v5, v12

    move v4, v7

    move v3, v8

    .line 846
    goto :goto_0

    .line 693
    :pswitch_1
    const/16 v7, 0x6d

    if-eq v5, v7, :cond_2

    const/16 v7, 0x4d

    if-ne v5, v7, :cond_3

    .line 694
    :cond_2
    add-int/lit8 v6, v5, -0x1

    int-to-char v6, v6

    move/from16 v18, v6

    move v12, v5

    .line 695
    goto :goto_1

    .line 696
    :cond_3
    const/16 v7, 0x63

    if-eq v5, v7, :cond_4

    const/16 v7, 0x43

    if-ne v5, v7, :cond_5

    :cond_4
    move/from16 v18, v5

    move v12, v5

    .line 698
    goto :goto_1

    .line 699
    :cond_5
    const/16 v7, 0x6c

    if-eq v5, v7, :cond_6

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_0

    :cond_6
    move/from16 v18, v5

    move v12, v5

    .line 701
    goto :goto_1

    .line 713
    :sswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v6

    .line 714
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v5

    .line 715
    const/16 v7, 0x6d

    move/from16 v0, v18

    if-ne v0, v7, :cond_7

    .line 716
    add-float/2addr v14, v6

    .line 717
    add-float/2addr v13, v5

    .line 718
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 719
    add-float/2addr v3, v6

    .line 720
    add-float/2addr v4, v5

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto :goto_2

    .line 724
    :cond_7
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v9, v17

    move v3, v5

    move v4, v6

    move v7, v5

    move v8, v6

    move v5, v15

    move/from16 v6, v16

    .line 728
    goto :goto_2

    .line 732
    :sswitch_1
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 733
    invoke-virtual {v2, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 738
    const/4 v3, 0x1

    move v9, v3

    move v4, v14

    move v5, v13

    move v6, v14

    move v7, v13

    move v8, v14

    move v3, v13

    .line 739
    goto :goto_2

    .line 743
    :sswitch_2
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v7

    .line 744
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v8

    .line 745
    const/16 v5, 0x6c

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    .line 746
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 747
    add-float/2addr v3, v7

    .line 748
    add-float/2addr v4, v8

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto/16 :goto_2

    .line 750
    :cond_8
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v9, v17

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v21, v8

    move v8, v7

    move/from16 v7, v21

    .line 754
    goto/16 :goto_2

    .line 758
    :sswitch_3
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v7

    .line 759
    const/16 v5, 0x68

    move/from16 v0, v18

    if-ne v0, v5, :cond_9

    .line 760
    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 761
    add-float/2addr v3, v7

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto/16 :goto_2

    .line 763
    :cond_9
    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v9, v17

    move v3, v13

    move v5, v15

    move/from16 v6, v16

    move v8, v7

    move v7, v4

    move v4, v14

    .line 766
    goto/16 :goto_2

    .line 770
    :sswitch_4
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v8

    .line 771
    const/16 v5, 0x76

    move/from16 v0, v18

    if-ne v0, v5, :cond_a

    .line 772
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 773
    add-float/2addr v4, v8

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto/16 :goto_2

    .line 775
    :cond_a
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v9, v17

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move v7, v8

    move v8, v3

    move v3, v13

    .line 778
    goto/16 :goto_2

    .line 782
    :sswitch_5
    const/4 v11, 0x1

    .line 783
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v10

    .line 784
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v9

    .line 785
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v5

    .line 786
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v6

    .line 787
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v7

    .line 788
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v8

    .line 789
    const/16 v15, 0x63

    move/from16 v0, v18

    if-ne v0, v15, :cond_d

    .line 790
    add-float/2addr v10, v3

    .line 791
    add-float/2addr v5, v3

    .line 792
    add-float/2addr v7, v3

    .line 793
    add-float v3, v9, v4

    .line 794
    add-float/2addr v6, v4

    .line 795
    add-float/2addr v8, v4

    move v4, v3

    move v3, v10

    .line 797
    :goto_3
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v9, v11

    move v3, v13

    move v4, v14

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 802
    goto/16 :goto_2

    .line 806
    :sswitch_6
    const/4 v9, 0x1

    .line 807
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v5

    .line 808
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v6

    .line 809
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v7

    .line 810
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v8

    .line 811
    const/16 v10, 0x73

    move/from16 v0, v18

    if-ne v0, v10, :cond_b

    .line 812
    add-float/2addr v5, v3

    .line 813
    add-float/2addr v7, v3

    .line 814
    add-float/2addr v6, v4

    .line 815
    add-float/2addr v8, v4

    .line 817
    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    sub-float v3, v3, v16

    .line 818
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v4, v10

    sub-float/2addr v4, v15

    .line 819
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v3, v13

    move v4, v14

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 824
    goto/16 :goto_2

    .line 828
    :sswitch_7
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v7

    .line 829
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v8

    .line 830
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v9

    .line 831
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v5

    float-to-int v10, v5

    .line 832
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v5

    float-to-int v11, v5

    .line 833
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v5

    .line 834
    invoke-virtual/range {v20 .. v20}, Lcom/larvalabs/svgandroid/a;->e()F

    move-result v6

    .line 835
    invoke-static/range {v2 .. v11}, Lcom/larvalabs/svgandroid/SVGParser;->a(Landroid/graphics/Path;FFFFFFFII)V

    move/from16 v9, v17

    move v3, v13

    move v4, v14

    move v7, v6

    move v8, v5

    move v5, v15

    move/from16 v6, v16

    .line 838
    goto/16 :goto_2

    .line 847
    :cond_c
    return-object v2

    :cond_d
    move v4, v9

    move v3, v10

    goto :goto_3

    .line 680
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 710
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x53 -> :sswitch_6
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x73 -> :sswitch_6
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static f(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
