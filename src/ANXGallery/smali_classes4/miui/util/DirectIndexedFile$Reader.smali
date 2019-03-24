.class public Lmiui/util/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private Iv:Lmiui/util/DirectIndexedFile$InputFile;

.field private Iw:Lmiui/util/DirectIndexedFile$FileHeader;

.field private Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiui/util/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    .line 852
    const-string p1, "assets"

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;->L(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputRandom;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/util/DirectIndexedFile$DataInputRandom;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    .line 857
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;->L(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private L(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 863
    :try_start_0
    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 864
    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$FileHeader;->f(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object p1

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    .line 866
    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lmiui/util/DirectIndexedFile$Reader$IndexData;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    .line 867
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 868
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    new-instance v2, Lmiui/util/DirectIndexedFile$Reader$IndexData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>(Lmiui/util/DirectIndexedFile$1;)V

    aput-object v2, v1, v0

    .line 869
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DescriptionPair;->a(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 870
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    .line 871
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 872
    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_0

    .line 873
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->h(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    aput-object v4, v3, v2

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 876
    :cond_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DescriptionPair;->b(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 877
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    .line 878
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 879
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .line 880
    move v2, p1

    :goto_2
    if-ge v2, v1, :cond_1

    .line 881
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aput-object v4, v3, v2

    .line 882
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v4

    invoke-static {v3, v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 885
    :cond_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v2, v2, v0

    new-array v3, v1, [[Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;

    .line 886
    move v2, p1

    :goto_3
    if-ge v2, v1, :cond_2

    .line 887
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 888
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, v0

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v4, v4, v0

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 867
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 894
    :cond_3
    nop

    .line 899
    return-void

    .line 891
    :catch_0
    move-exception p1

    .line 892
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 893
    throw p1
.end method

.method private e(III)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 1080
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    .line 1081
    invoke-static {v1, v2, p3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    .line 1083
    :cond_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p2

    aget-object p1, p1, p3

    return-object p1
.end method

.method private l(II)J
    .locals 4

    .line 1087
    nop

    .line 1088
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    array-length v0, v0

    .line 1089
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1090
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1091
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v3, v3, p1

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->It:I

    if-le v3, p2, :cond_0

    .line 1092
    nop

    .line 1099
    move v0, v2

    goto :goto_1

    .line 1093
    :cond_0
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v1

    aget-object v1, v1, v2

    iget v1, v1, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Iu:I

    if-gt v1, p2, :cond_1

    .line 1094
    add-int/lit8 v2, v2, 0x1

    .line 1099
    move v1, v2

    :goto_1
    goto :goto_0

    .line 1096
    :cond_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    aget-object v0, v0, v2

    .line 1097
    goto :goto_2

    .line 1101
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v1, -0x1

    .line 1102
    if-eqz v0, :cond_3

    .line 1103
    iget-wide v1, v0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Ic:J

    iget v0, v0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->It:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->d(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I

    move-result p1

    mul-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr v1, p1

    .line 1105
    :cond_3
    return-wide v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1064
    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1066
    :try_start_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1072
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    .line 1073
    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    .line 1074
    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1075
    monitor-exit p0

    return-void

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 920
    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_5

    .line 923
    if-ltz p1, :cond_4

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 926
    if-ltz p3, :cond_3

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_3

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 933
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->l(II)J

    move-result-wide v0

    .line 934
    const/4 p2, 0x0

    .line 935
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 936
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p2, p1

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p3

    aget-object p1, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 939
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v2, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 940
    :goto_0
    if-gt v3, p3, :cond_2

    .line 941
    sget-object v0, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 971
    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_2

    .line 952
    :pswitch_0
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 953
    goto :goto_1

    .line 949
    :pswitch_1
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 950
    goto :goto_1

    .line 946
    :pswitch_2
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    .line 947
    goto :goto_1

    .line 943
    :pswitch_3
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 944
    goto :goto_1

    .line 960
    :pswitch_4
    :try_start_2
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    .line 961
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    .line 960
    invoke-static {v0, v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 962
    if-ne v3, p3, :cond_1

    .line 963
    invoke-direct {p0, p1, p3, v0}, Lmiui/util/DirectIndexedFile$Reader;->e(III)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    :cond_1
    nop

    .line 940
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    :catch_0
    move-exception p1

    .line 966
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 971
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    .line 972
    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 977
    :cond_2
    nop

    .line 985
    move-object p1, p2

    :goto_3
    monitor-exit p0

    return-object p1

    .line 975
    :catch_1
    move-exception p1

    .line 976
    :try_start_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Seek data from a corrupt file"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 927
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " out of range[0, "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p3, p1

    .line 928
    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 924
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kind "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range[0, "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 921
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 919
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized get(II)[Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 996
    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_4

    .line 999
    if-ltz p1, :cond_3

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1005
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->l(II)J

    move-result-wide v0

    .line 1006
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p2, p2, p1

    invoke-static {p2}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Ljava/lang/Object;

    .line 1007
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 1008
    move v0, v3

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1009
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    aget-object v1, v1, v3

    aput-object v1, p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_0
    monitor-exit p0

    return-object p2

    .line 1014
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v2, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 1015
    :goto_1
    array-length v0, p2

    if-ge v3, v0, :cond_2

    .line 1016
    sget-object v0, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1046
    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_3

    .line 1027
    :pswitch_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1028
    goto :goto_2

    .line 1024
    :pswitch_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1025
    goto :goto_2

    .line 1021
    :pswitch_2
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1022
    goto :goto_2

    .line 1018
    :pswitch_3
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p2, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    goto :goto_2

    .line 1035
    :pswitch_4
    :try_start_2
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    .line 1036
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    .line 1035
    invoke-static {v0, v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1037
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v1

    .line 1038
    invoke-direct {p0, p1, v3, v0}, Lmiui/util/DirectIndexedFile$Reader;->e(III)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1039
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iv:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0, v1, v2}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1043
    nop

    .line 1015
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1040
    :catch_0
    move-exception p1

    .line 1041
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1046
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->Ix:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v1, p1

    .line 1047
    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1052
    :cond_2
    nop

    .line 1059
    monitor-exit p0

    return-object p2

    .line 1050
    :catch_1
    move-exception p1

    .line 1051
    :try_start_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Seek data from a corrupt file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1000
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get data kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 997
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 995
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataVersion()I
    .locals 1

    .line 902
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    if-nez v0, :cond_0

    .line 903
    const/4 v0, -0x1

    return v0

    .line 906
    :cond_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->Iw:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$FileHeader;->b(Lmiui/util/DirectIndexedFile$FileHeader;)I

    move-result v0

    return v0
.end method
