.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;,
        Lmiui/widget/AlphabetFastIndexer$TextHilighter;
    }
.end annotation


# static fields
.field private static final OB:I = 0x1

.field private static final OC:I = 0x5dc

.field private static final Ol:Ljava/lang/String; = "\u2665"

.field private static final Ox:Ljava/lang/String; = "#"

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private OA:I

.field private OD:Ljava/lang/Runnable;

.field private Om:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field

.field private On:Landroid/widget/TextView;

.field private Oo:I

.field private Op:I

.field private Oq:Z

.field private Or:I

.field private Os:I

.field private Ot:I

.field private Ou:I

.field private Ov:Landroid/graphics/drawable/Drawable;

.field Ow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Oy:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

.field private mHandler:Landroid/os/Handler;

.field private qR:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    .line 103
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$1;

    invoke-direct {v0, p0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oy:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->OA:I

    .line 115
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->qR:I

    .line 323
    new-instance v1, Lmiui/widget/AlphabetFastIndexer$2;

    invoke-direct {v1, p0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->OD:Ljava/lang/Runnable;

    .line 752
    new-instance v1, Lmiui/widget/AlphabetFastIndexer$3;

    invoke-direct {v1, p0}, Lmiui/widget/AlphabetFastIndexer$3;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p3

    .line 249
    :goto_0
    sget-object v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    .line 250
    invoke-virtual {p1, p2, v2, v0, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 252
    new-instance p3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-direct {p3, p1, p2}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    .line 254
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_drawOverlay:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/AlphabetFastIndexer;->Oq:Z

    .line 255
    iget-boolean p1, p0, Lmiui/widget/AlphabetFastIndexer;->Oq:Z

    if-eqz p1, :cond_1

    .line 256
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayMarginLeft:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    .line 257
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 256
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Or:I

    .line 258
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayMarginTop:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_padding_top:I

    .line 259
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 258
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Os:I

    .line 260
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextSize:I

    sget p3, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_text_size:I

    .line 261
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 260
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ot:I

    .line 262
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayTextColor:I

    sget p3, Lcom/miui/internal/R$color;->alphabet_indexer_overlay_text_color:I

    .line 263
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 262
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ou:I

    .line 264
    sget p1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_overlayBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ov:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ov:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 266
    sget p1, Lcom/miui/internal/R$drawable;->alphabet_indexer_overlay:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ov:Landroid/graphics/drawable/Drawable;

    .line 270
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    const p1, 0x800005

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Op:I

    .line 272
    return-void
.end method

.method private a(FLandroid/widget/SectionIndexer;)I
    .locals 6

    .line 582
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p2

    .line 583
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 584
    return v0

    .line 587
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v1

    .line 588
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    .line 589
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    .line 590
    if-gtz v3, :cond_1

    .line 591
    return v0

    .line 593
    :cond_1
    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v1, v3

    div-float/2addr p1, v1

    .line 594
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v1, v1, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 595
    if-gez p1, :cond_2

    .line 596
    return v0

    .line 597
    :cond_2
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 598
    array-length p1, p2

    return p1

    .line 601
    :cond_3
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 602
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 603
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_4
    nop

    .line 606
    iget-object p2, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object p2, p2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    .line 607
    move v1, v0

    :goto_1
    add-int v2, v1, p1

    array-length v3, p2

    if-lt v2, v3, :cond_5

    if-lt p1, v1, :cond_7

    .line 609
    :cond_5
    nop

    .line 610
    sub-int v3, p1, v1

    .line 611
    array-length v4, p2

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 612
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 613
    goto :goto_2

    .line 614
    :cond_6
    if-ltz v3, :cond_8

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 615
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Ow:Ljava/util/HashMap;

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 616
    nop

    .line 619
    :cond_7
    :goto_2
    return v0

    .line 608
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lmiui/widget/AlphabetFastIndexer;I)I
    .locals 0

    .line 70
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->OA:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/AlphabetFastIndexer;)Lmiui/widget/AlphabetFastIndexer$TextHilighter;
    .locals 0

    .line 70
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    return-object p0
.end method

.method private a(Landroid/widget/SectionIndexer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 626
    move/from16 v2, p2

    iget-object v3, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    .line 627
    invoke-direct/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->ee()I

    move-result v4

    .line 628
    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v6, v5

    .line 629
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    .line 631
    const/4 v8, 0x1

    if-eqz v5, :cond_b

    array-length v9, v5

    if-le v9, v8, :cond_b

    .line 632
    array-length v9, v5

    .line 633
    nop

    .line 634
    if-lt v2, v9, :cond_0

    .line 635
    add-int/lit8 v10, v9, -0x1

    goto :goto_0

    .line 637
    :cond_0
    move v10, v2

    .line 638
    :goto_0
    nop

    .line 639
    invoke-interface {v1, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 649
    add-int/lit8 v12, v10, 0x1

    .line 651
    add-int/lit8 v13, v9, -0x1

    if-ge v10, v13, :cond_1

    .line 652
    invoke-interface {v1, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    goto :goto_1

    .line 656
    :cond_1
    move v13, v3

    :goto_1
    if-ne v13, v11, :cond_5

    .line 658
    move v14, v10

    move v15, v11

    :cond_2
    if-lez v14, :cond_4

    .line 659
    add-int/lit8 v14, v14, -0x1

    .line 660
    invoke-interface {v1, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    .line 661
    if-eq v15, v11, :cond_3

    .line 662
    nop

    .line 663
    nop

    .line 664
    goto :goto_2

    .line 665
    :cond_3
    if-nez v14, :cond_2

    .line 670
    nop

    .line 671
    nop

    .line 680
    move v14, v10

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    move v11, v10

    move v14, v11

    goto :goto_3

    :cond_5
    move v14, v10

    move v15, v11

    :goto_2
    move v11, v14

    :goto_3
    add-int/lit8 v16, v12, 0x1

    .line 681
    move v7, v12

    move/from16 v12, v16

    :goto_4
    if-ge v12, v9, :cond_6

    .line 682
    invoke-interface {v1, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    if-ne v8, v13, :cond_6

    .line 683
    add-int/lit8 v12, v12, 0x1

    .line 684
    add-int/lit8 v7, v7, 0x1

    .line 681
    const/4 v8, 0x1

    goto :goto_4

    .line 689
    :cond_6
    int-to-float v1, v14

    int-to-float v8, v9

    div-float/2addr v1, v8

    .line 690
    int-to-float v7, v7

    div-float/2addr v7, v8

    .line 691
    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 692
    if-ne v14, v10, :cond_7

    sub-float v8, v2, v1

    cmpg-float v6, v8, v6

    if-gez v6, :cond_7

    .line 693
    goto :goto_5

    .line 695
    :cond_7
    sub-int/2addr v13, v15

    int-to-float v6, v13

    sub-float/2addr v2, v1

    mul-float/2addr v6, v2

    sub-float/2addr v7, v1

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 698
    :goto_5
    const/4 v1, 0x1

    add-int/lit8 v2, v3, -0x1

    if-le v15, v2, :cond_8

    .line 699
    nop

    .line 701
    move v15, v2

    :cond_8
    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_9

    .line 702
    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 703
    add-int/2addr v15, v4

    .line 704
    invoke-static {v15}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    .line 703
    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 705
    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_a

    .line 706
    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    add-int/2addr v15, v4

    invoke-virtual {v1, v15, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 708
    :cond_a
    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    add-int/2addr v15, v4

    invoke-virtual {v1, v15}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 710
    :goto_6
    goto :goto_8

    .line 711
    :cond_b
    mul-int v1, v2, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 712
    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_c

    .line 713
    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 714
    add-int/2addr v1, v4

    .line 715
    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    .line 714
    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 716
    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_d

    .line 717
    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    add-int/2addr v1, v4

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 719
    :cond_d
    iget-object v2, v0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 721
    :goto_7
    nop

    .line 724
    const/4 v11, -0x1

    :goto_8
    if-ltz v11, :cond_e

    if-eqz v5, :cond_e

    .line 725
    aget-object v1, v5, v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 727
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->c(Ljava/lang/CharSequence;)V

    .line 730
    :cond_e
    return-void
.end method

.method private ai(I)V
    .locals 3

    .line 767
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    if-nez v0, :cond_0

    .line 768
    return-void

    .line 771
    :cond_0
    if-gez p1, :cond_1

    .line 772
    const/4 p1, 0x0

    .line 775
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    .line 776
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 777
    int-to-float v1, v1

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 779
    int-to-float p1, p1

    mul-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 780
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->Oy:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p1, v1}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->a(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 781
    return-void
.end method

.method static synthetic b(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->ec()V

    return-void
.end method

.method static synthetic c(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    return-object p0
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 3

    .line 733
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 734
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 739
    const-string v0, "!"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u2665"

    .line 740
    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 743
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 744
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    :cond_3
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 748
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    :cond_4
    return-void
.end method

.method private ec()V
    .locals 4

    .line 422
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    nop

    .line 427
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->ed()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 428
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 429
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->ee()I

    move-result v3

    sub-int/2addr v2, v3

    .line 430
    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 431
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 432
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 434
    move v2, v1

    :goto_0
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 435
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v3, v3, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    nop

    .line 437
    nop

    .line 444
    move v1, v2

    goto :goto_1

    .line 434
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_2
    :goto_1
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oo:I

    if-eq v0, v1, :cond_4

    .line 445
    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->Oo:I

    .line 446
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->qR:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_3

    .line 447
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oo:I

    invoke-direct {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->ai(I)V

    .line 449
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->invalidate()V

    .line 451
    :cond_4
    return-void
.end method

.method private ed()Landroid/widget/SectionIndexer;
    .locals 4

    .line 462
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 463
    return-object v1

    .line 466
    :cond_0
    nop

    .line 467
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 469
    :goto_0
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1

    instance-of v3, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v3, :cond_1

    .line 470
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    if-eqz v2, :cond_2

    .line 473
    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    .line 476
    :cond_2
    return-object v1
.end method

.method private ee()I
    .locals 1

    .line 480
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    return v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    if-ne v0, p1, :cond_0

    .line 339
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    .line 343
    if-nez p1, :cond_1

    .line 344
    return-void

    .line 347
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oo:I

    .line 349
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    .line 350
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 352
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 354
    nop

    .line 357
    iget-boolean v1, p0, Lmiui/widget/AlphabetFastIndexer;->Oq:Z

    if-eqz v1, :cond_2

    .line 358
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    .line 359
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 362
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->Or:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 363
    iget v2, p0, Lmiui/widget/AlphabetFastIndexer;->Os:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 364
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 366
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 365
    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 367
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->Ov:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->Ot:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 370
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->Ou:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 376
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    const/16 v0, 0x30

    iget v1, p0, Lmiui/widget/AlphabetFastIndexer;->Op:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    invoke-virtual {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->ec()V

    .line 381
    return-void
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .line 406
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .locals 2

    .line 387
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 389
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 390
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 394
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    .line 397
    :cond_1
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2

    .line 415
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->qR:I

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->OA:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->c(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 1

    .line 457
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 302
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v0

    .line 305
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 306
    if-gtz v1, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v2, v2, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    .line 311
    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    array-length v4, v2

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 312
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 314
    int-to-float v0, v0

    div-float v3, v1, v3

    add-float/2addr v0, v3

    .line 315
    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 317
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->isPressed()Z

    move-result v7

    move-object v6, p1

    move v8, v3

    move v9, v4

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->a(Landroid/graphics/Canvas;ZIFF)V

    .line 319
    add-float/2addr v0, v1

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 296
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Oo:I

    .line 297
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->OD:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 523
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 525
    return v1

    .line 528
    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->ed()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 529
    if-nez v0, :cond_1

    .line 530
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 531
    return v1

    .line 534
    :cond_1
    const/16 v2, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v2, v3

    .line 535
    const/16 v3, 0x5dc

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 560
    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_0

    .line 556
    :pswitch_0
    iget p1, p0, Lmiui/widget/AlphabetFastIndexer;->Oo:I

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->ai(I)V

    .line 557
    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 558
    goto :goto_0

    .line 537
    :pswitch_1
    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->qR:I

    .line 538
    invoke-virtual {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 541
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2, v0}, Lmiui/widget/AlphabetFastIndexer;->a(FLandroid/widget/SectionIndexer;)I

    move-result v2

    .line 542
    if-gez v2, :cond_2

    .line 543
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->Om:Landroid/widget/AdapterView;

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    .line 545
    :cond_2
    invoke-direct {p0, v0, v2}, Lmiui/widget/AlphabetFastIndexer;->a(Landroid/widget/SectionIndexer;I)V

    .line 546
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 549
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->Oz:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->c(FF)V

    .line 550
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    .line 563
    :cond_3
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setOverlayOffset(II)V
    .locals 0

    .line 289
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Or:I

    .line 290
    iput p2, p0, Lmiui/widget/AlphabetFastIndexer;->Os:I

    .line 291
    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 0

    .line 280
    if-eqz p1, :cond_0

    const p1, 0x800005

    goto :goto_0

    :cond_0
    const p1, 0x800003

    :goto_0
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->Op:I

    .line 281
    return-void
.end method

.method stop(I)V
    .locals 4

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 568
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->qR:I

    .line 569
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    .line 570
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    if-gtz p1, :cond_0

    .line 572
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->On:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 579
    :cond_1
    :goto_0
    return-void
.end method
