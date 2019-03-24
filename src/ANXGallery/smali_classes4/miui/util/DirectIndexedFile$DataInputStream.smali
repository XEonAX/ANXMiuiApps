.class Lmiui/util/DirectIndexedFile$DataInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/DirectIndexedFile$InputFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataInputStream"
.end annotation


# instance fields
.field private HV:Ljava/io/InputStream;

.field private HW:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    .line 687
    iget-object p1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 689
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 829
    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    return-wide v0
.end method

.method public readBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 694
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 700
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 706
    nop

    .line 707
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 708
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 709
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 710
    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-char v3, v0

    .line 712
    :cond_0
    return v3
.end method

.method public readDouble()D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readFully([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 728
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 729
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 734
    iget-wide p2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 735
    return-void
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 740
    nop

    .line 741
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 742
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 743
    const/4 v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 744
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    .line 745
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    .line 746
    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int v3, v0, v1

    .line 748
    :cond_0
    return v3
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 759
    nop

    .line 760
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 761
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 762
    const/4 v2, 0x7

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    .line 763
    const/4 v4, 0x6

    aget-byte v4, v1, v4

    shl-int/lit8 v0, v4, 0x8

    int-to-long v4, v0

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 764
    const/4 v0, 0x5

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    int-to-long v4, v0

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 765
    const/4 v0, 0x4

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v4, v0

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 766
    const/4 v0, 0x3

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 767
    const/4 v0, 0x2

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 768
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 769
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    int-to-long v0, v0

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    goto :goto_0

    .line 771
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 777
    nop

    .line 778
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 779
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 780
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 781
    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v3, v0

    .line 783
    :cond_0
    return v3
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readUnsignedByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 789
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 795
    nop

    .line 796
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 797
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 798
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 799
    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v3, v0

    .line 801
    :cond_0
    return v3
.end method

.method public seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 819
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 820
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 824
    return-void

    .line 822
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Skip failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipBytes(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HV:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int p1, v0

    .line 812
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->HW:J

    .line 813
    return p1
.end method
