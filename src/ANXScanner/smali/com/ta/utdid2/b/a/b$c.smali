.class Lcom/ta/utdid2/b/a/b$c;
.super Lcom/ta/utdid2/b/a/b$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final c:[B

.field private static final d:[B


# instance fields
.field b:I

.field public final b:Z

.field public final c:Z

.field private count:I

.field public final d:Z

.field private final e:[B

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 562
    const-class v0, Lcom/ta/utdid2/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ta/utdid2/b/a/b$c;->a:Z

    .line 574
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ta/utdid2/b/a/b$c;->c:[B

    .line 585
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ta/utdid2/b/a/b$c;->d:[B

    .line 590
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 585
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/b$a;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 604
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    .line 605
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    .line 606
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    .line 607
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/ta/utdid2/b/a/b$c;->c:[B

    :goto_3
    iput-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->f:[B

    .line 609
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    .line 610
    iput v2, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 612
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/ta/utdid2/b/a/b$c;->count:I

    .line 613
    return-void

    :cond_0
    move v0, v2

    .line 604
    goto :goto_0

    :cond_1
    move v0, v2

    .line 605
    goto :goto_1

    :cond_2
    move v1, v2

    .line 606
    goto :goto_2

    .line 607
    :cond_3
    sget-object v0, Lcom/ta/utdid2/b/a/b$c;->d:[B

    goto :goto_3

    .line 612
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 11

    .prologue
    .line 625
    iget-object v6, p0, Lcom/ta/utdid2/b/a/b$c;->f:[B

    .line 626
    iget-object v7, p0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 627
    const/4 v1, 0x0

    .line 628
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->count:I

    .line 631
    add-int v8, p3, p2

    .line 632
    const/4 v2, -0x1

    .line 638
    iget v3, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v3, p2

    .line 664
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_14

    .line 665
    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 666
    const/4 v1, 0x2

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v4

    .line 667
    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 668
    const/4 v1, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 669
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_14

    .line 670
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v0, :cond_15

    .line 671
    const/4 v0, 0x5

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 672
    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 673
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    .line 682
    :goto_2
    add-int/lit8 v0, v3, 0x3

    if-le v0, v8, :cond_4

    .line 699
    if-eqz p4, :cond_c

    .line 705
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_6

    .line 706
    const/4 v2, 0x0

    .line 707
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_3
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 708
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 709
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    .line 710
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    .line 711
    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v1, :cond_1

    .line 712
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v0

    .line 713
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v1

    .line 715
    :cond_1
    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_12

    .line 716
    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_2

    .line 717
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v1

    .line 718
    :cond_2
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    move v3, v2

    .line 742
    :cond_3
    :goto_4
    sget-boolean v0, Lcom/ta/utdid2/b/a/b$c;->a:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v3, p2

    .line 641
    goto/16 :goto_0

    .line 644
    :pswitch_1
    add-int/lit8 v3, p2, 0x2

    if-gt v3, v8, :cond_0

    .line 647
    iget-object v2, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 648
    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 647
    or-int/2addr v2, v3

    .line 649
    const/4 v3, 0x0

    iput v3, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    move v3, p2

    .line 652
    goto/16 :goto_0

    .line 655
    :pswitch_2
    add-int/lit8 v3, p2, 0x1

    if-gt v3, v8, :cond_0

    .line 657
    iget-object v2, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 658
    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    .line 657
    or-int/2addr v2, v4

    .line 659
    const/4 v4, 0x0

    iput v4, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    goto/16 :goto_0

    .line 683
    :cond_4
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 684
    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 683
    or-int/2addr v0, v1

    .line 685
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 686
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 687
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 688
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    .line 689
    add-int/lit8 v3, v3, 0x3

    .line 690
    add-int/lit8 v1, v4, 0x4

    .line 691
    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_14

    .line 692
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v0, :cond_13

    .line 693
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 694
    :goto_5
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 695
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    goto/16 :goto_2

    .line 707
    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_3

    .line 720
    :cond_6
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_a

    .line 721
    const/4 v2, 0x0

    .line 722
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_6
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v9, v0, 0xa

    .line 723
    iget v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_7
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    .line 722
    or-int/2addr v0, v9

    .line 724
    iget v2, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 725
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 726
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v1

    .line 727
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    .line 728
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v0, :cond_11

    .line 729
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 731
    :goto_8
    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_10

    .line 732
    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_7

    .line 733
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 734
    :cond_7
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_4

    .line 722
    :cond_8
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v1

    move v1, v2

    goto :goto_6

    .line 723
    :cond_9
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v2

    goto :goto_7

    .line 736
    :cond_a
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v0, :cond_3

    if-lez v4, :cond_3

    const/16 v0, 0x13

    if-eq v5, v0, :cond_3

    .line 737
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v0, :cond_f

    .line 738
    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v4

    .line 739
    :goto_9
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_4

    .line 743
    :cond_b
    sget-boolean v0, Lcom/ta/utdid2/b/a/b$c;->a:Z

    if-nez v0, :cond_d

    if-eq v3, v8, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 748
    :cond_c
    add-int/lit8 v0, v8, -0x1

    if-ne v3, v0, :cond_e

    .line 749
    iget-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v1, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 756
    :cond_d
    :goto_a
    iput v4, p0, Lcom/ta/utdid2/b/a/b$c;->a:I

    .line 757
    iput v5, p0, Lcom/ta/utdid2/b/a/b$c;->count:I

    .line 759
    const/4 v0, 0x1

    return v0

    .line 750
    :cond_e
    add-int/lit8 v0, v8, -0x2

    if-ne v3, v0, :cond_d

    .line 751
    iget-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v1, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 752
    iget-object v0, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v1, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto :goto_a

    :cond_f
    move v0, v4

    goto :goto_9

    :cond_10
    move v4, v0

    goto/16 :goto_4

    :cond_11
    move v0, v1

    goto/16 :goto_8

    :cond_12
    move v3, v2

    move v4, v0

    goto/16 :goto_4

    :cond_13
    move v0, v1

    goto/16 :goto_5

    :cond_14
    move v5, v0

    move v4, v1

    goto/16 :goto_2

    :cond_15
    move v0, v1

    goto/16 :goto_1

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
