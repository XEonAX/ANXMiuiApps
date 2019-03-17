.class Lcom/alibaba/mtl/log/d/c$c;
.super Lcom/alibaba/mtl/log/d/c$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic J:Z

.field private static final a:[B

.field private static final b:[B


# instance fields
.field D:I

.field private final c:[B

.field private count:I

.field private final d:[B

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 547
    const-class v0, Lcom/alibaba/mtl/log/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/mtl/log/d/c$c;->J:Z

    .line 559
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/mtl/log/d/c$c;->a:[B

    .line 570
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/mtl/log/d/c$c;->b:[B

    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 559
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

    .line 570
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

    .line 586
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/c$a;-><init>()V

    .line 587
    iput-object p2, p0, Lcom/alibaba/mtl/log/d/c$c;->output:[B

    .line 589
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    .line 590
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    .line 591
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    .line 592
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/mtl/log/d/c$c;->a:[B

    :goto_3
    iput-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->d:[B

    .line 594
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    .line 595
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    .line 597
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/alibaba/mtl/log/d/c$c;->count:I

    .line 598
    return-void

    :cond_0
    move v0, v2

    .line 589
    goto :goto_0

    :cond_1
    move v0, v2

    .line 590
    goto :goto_1

    :cond_2
    move v1, v2

    .line 591
    goto :goto_2

    .line 592
    :cond_3
    sget-object v0, Lcom/alibaba/mtl/log/d/c$c;->b:[B

    goto :goto_3

    .line 597
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public process([BIIZ)Z
    .locals 10
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 612
    iget-object v6, p0, Lcom/alibaba/mtl/log/d/c$c;->d:[B

    .line 613
    iget-object v7, p0, Lcom/alibaba/mtl/log/d/c$c;->output:[B

    .line 614
    const/4 v1, 0x0

    .line 615
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->count:I

    .line 618
    add-int/2addr p3, p2

    .line 619
    const/4 v2, -0x1

    .line 625
    iget v3, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v3, p2

    .line 652
    .end local p2    # "offset":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_14

    .line 653
    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 654
    const/4 v1, 0x2

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v4

    .line 655
    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 656
    const/4 v1, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 657
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_14

    .line 658
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 659
    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 660
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    .line 669
    :goto_2
    add-int/lit8 v0, v3, 0x3

    if-gt v0, p3, :cond_1

    .line 670
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 673
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 674
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 675
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 676
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    .line 677
    add-int/lit8 v3, v3, 0x3

    .line 678
    add-int/lit8 v1, v4, 0x4

    .line 679
    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_14

    .line 680
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v0, :cond_13

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 681
    :goto_3
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 682
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    goto :goto_2

    .restart local p2    # "offset":I
    :pswitch_0
    move v3, p2

    .line 628
    goto/16 :goto_0

    .line 631
    :pswitch_1
    add-int/lit8 v3, p2, 0x2

    if-gt v3, p3, :cond_0

    .line 634
    iget-object v2, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    .end local p2    # "offset":I
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 637
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    move v3, p2

    goto/16 :goto_0

    .line 642
    .restart local p2    # "offset":I
    :pswitch_2
    add-int/lit8 v3, p2, 0x1

    if-gt v3, p3, :cond_0

    .line 644
    iget-object v2, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 647
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    goto/16 :goto_0

    .line 686
    .end local p2    # "offset":I
    :cond_1
    if-eqz p4, :cond_e

    .line 692
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    sub-int v0, v3, v0

    add-int/lit8 v1, p3, -0x1

    if-ne v0, v1, :cond_7

    .line 693
    const/4 v2, 0x0

    .line 694
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_4
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 695
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    .line 696
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    .line 697
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    .line 698
    iget-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    if-eqz v1, :cond_2

    .line 699
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v0

    .line 700
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v1

    .line 702
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v1, :cond_4

    .line 703
    iget-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v1

    .line 704
    :cond_3
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xa

    aput-byte v3, v7, v0

    move v0, v1

    :cond_4
    move v3, v2

    move v4, v0

    .line 726
    :cond_5
    :goto_5
    sget-boolean v0, Lcom/alibaba/mtl/log/d/c$c;->J:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 694
    :cond_6
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_4

    .line 706
    :cond_7
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    sub-int v0, v3, v0

    add-int/lit8 v1, p3, -0x2

    if-ne v0, v1, :cond_c

    .line 707
    const/4 v2, 0x0

    .line 708
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    iget-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_6
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v8, v0, 0xa

    iget v0, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_7
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v8

    .line 710
    iget v2, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    .line 711
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 712
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v1

    .line 713
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    .line 714
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    if-eqz v0, :cond_12

    .line 715
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 717
    :goto_8
    iget-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v1, :cond_9

    .line 718
    iget-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 719
    :cond_8
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    move v0, v1

    :cond_9
    move v4, v0

    .line 721
    goto :goto_5

    .line 708
    :cond_a
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v1

    move v1, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v2

    goto :goto_7

    .line 721
    :cond_c
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    const/16 v0, 0x13

    if-eq v5, v0, :cond_5

    .line 722
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v0, :cond_11

    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v4

    .line 723
    :goto_9
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_5

    .line 727
    :cond_d
    sget-boolean v0, Lcom/alibaba/mtl/log/d/c$c;->J:Z

    if-nez v0, :cond_f

    if-eq v3, p3, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 732
    :cond_e
    add-int/lit8 v0, p3, -0x1

    if-ne v3, v0, :cond_10

    .line 733
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    iget v1, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 740
    :cond_f
    :goto_a
    iput v4, p0, Lcom/alibaba/mtl/log/d/c$c;->op:I

    .line 741
    iput v5, p0, Lcom/alibaba/mtl/log/d/c$c;->count:I

    .line 743
    const/4 v0, 0x1

    return v0

    .line 734
    :cond_10
    add-int/lit8 v0, p3, -0x2

    if-ne v3, v0, :cond_f

    .line 735
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    iget v1, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 736
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    iget v1, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/mtl/log/d/c$c;->D:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto :goto_a

    :cond_11
    move v0, v4

    goto :goto_9

    :cond_12
    move v0, v1

    goto/16 :goto_8

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    move v5, v0

    move v4, v1

    goto/16 :goto_2

    :cond_15
    move v0, v1

    goto/16 :goto_1

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
