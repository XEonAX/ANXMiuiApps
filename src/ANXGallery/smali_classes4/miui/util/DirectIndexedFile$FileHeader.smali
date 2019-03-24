.class Lmiui/util/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHeader"
.end annotation


# static fields
.field private static final Ip:[B

.field private static final Iq:I = 0x2


# instance fields
.field private Ir:[Lmiui/util/DirectIndexedFile$DescriptionPair;

.field private Is:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 524
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->Ip:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-array p1, p1, [Lmiui/util/DirectIndexedFile$DescriptionPair;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Ir:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    .line 535
    iput p2, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Is:I

    .line 536
    return-void
.end method

.method synthetic constructor <init>(IILmiui/util/DirectIndexedFile$1;)V
    .locals 0

    .line 523
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(II)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;
    .locals 0

    .line 523
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Ir:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    return-object p0
.end method

.method private b(Ljava/io/DataOutput;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    sget-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->Ip:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 562
    if-eqz p1, :cond_0

    .line 563
    sget-object v1, Lmiui/util/DirectIndexedFile$FileHeader;->Ip:[B

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write([B)V

    .line 564
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 565
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Ir:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 566
    iget v1, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Is:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 568
    :cond_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Ir:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 569
    invoke-static {v4, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->a(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I

    move-result v4

    add-int/2addr v0, v4

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_1
    return v0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$FileHeader;)I
    .locals 0

    .line 523
    iget p0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->Is:I

    return p0
.end method

.method private static e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    sget-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->Ip:[B

    const/4 v1, 0x0

    array-length v0, v0

    new-array v0, v0, [B

    .line 540
    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 541
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    aput-byte v3, v0, v2

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_0
    sget-object v2, Lmiui/util/DirectIndexedFile$FileHeader;->Ip:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 547
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 551
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 552
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 553
    new-instance v3, Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-direct {v3, v0, v2}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(II)V

    .line 554
    :goto_1
    if-ge v1, v0, :cond_1

    .line 555
    iget-object v2, v3, Lmiui/util/DirectIndexedFile$FileHeader;->Ir:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->d(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aput-object v4, v2, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    :cond_1
    return-object v3

    .line 548
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File version unmatched, please upgrade your reader"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 544
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File tag unmatched, file may be corrupt"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic f(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$FileHeader;->e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object p0

    return-object p0
.end method
