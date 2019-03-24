.class Lmiui/util/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static HX:[B


# instance fields
.field private HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field private HZ:B

.field private Ia:B

.field private Ib:B

.field private Ic:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    return-void
.end method

.method private constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 145
    iput-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HZ:B

    .line 146
    iput-byte p3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    .line 147
    iput-byte p4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    .line 148
    iput-wide p5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ic:J

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V
    .locals 0

    .line 103
    invoke-direct/range {p0 .. p6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-void
.end method

.method private static X(I)[B
    .locals 2

    .line 125
    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 127
    :cond_0
    new-array p0, p0, [B

    sput-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    .line 129
    :cond_1
    sget-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    .line 131
    monitor-exit v0

    return-object p0

    .line 132
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static Y(I)B
    .locals 4

    .line 484
    nop

    .line 485
    const/4 v0, 0x2

    mul-int/2addr v0, p0

    int-to-long v0, v0

    const/4 p0, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    if-lez v2, :cond_0

    .line 486
    add-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    .line 485
    shr-long/2addr v0, v3

    goto :goto_0

    .line 489
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p0, v0, :cond_1

    .line 490
    nop

    .line 495
    move p0, v1

    goto :goto_1

    .line 491
    :cond_1
    if-le p0, v1, :cond_2

    if-ge p0, v3, :cond_2

    .line 492
    nop

    .line 495
    move p0, v3

    :cond_2
    :goto_1
    return p0
.end method

.method static synthetic Z(I)B
    .locals 0

    .line 103
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B
    .locals 0

    .line 103
    iget-byte p0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HZ:B

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B
    .locals 0

    .line 103
    iput-byte p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HZ:B

    return p1
.end method

.method private a(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    if-eqz v3, :cond_0

    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    if-nez v3, :cond_3

    .line 173
    :cond_0
    nop

    .line 174
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    .line 175
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 176
    nop

    .line 177
    sget-object v8, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 199
    move v7, v5

    goto :goto_1

    .line 195
    :pswitch_0
    check-cast v7, [J

    array-length v7, v7

    .line 196
    mul-int v8, v1, v7

    add-int/2addr v6, v8

    goto :goto_1

    .line 191
    :pswitch_1
    check-cast v7, [I

    array-length v7, v7

    .line 192
    mul-int v8, v2, v7

    add-int/2addr v6, v8

    .line 193
    goto :goto_1

    .line 187
    :pswitch_2
    check-cast v7, [S

    array-length v7, v7

    .line 188
    mul-int v8, v0, v7

    add-int/2addr v6, v8

    .line 189
    goto :goto_1

    .line 183
    :pswitch_3
    check-cast v7, [B

    array-length v7, v7

    .line 184
    add-int/2addr v6, v7

    .line 185
    goto :goto_1

    .line 179
    :pswitch_4
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    .line 180
    add-int/2addr v6, v7

    .line 181
    nop

    .line 199
    :goto_1
    if-ge v3, v7, :cond_1

    .line 200
    nop

    .line 202
    move v3, v7

    :cond_1
    goto :goto_0

    .line 203
    :cond_2
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v3

    iput-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    .line 204
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v6, v3

    .line 205
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v3

    iput-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    .line 208
    :cond_3
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    .line 209
    if-eqz p1, :cond_4

    .line 210
    nop

    .line 211
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 212
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    int-to-long v7, v4

    invoke-static {p1, v6, v7, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 213
    sget-object v6, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_3

    .line 227
    :pswitch_5
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    check-cast v5, [J

    array-length v5, v5

    mul-int/2addr v5, v1

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    goto :goto_3

    .line 224
    :pswitch_6
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    check-cast v5, [I

    array-length v5, v5

    mul-int/2addr v5, v2

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 225
    goto :goto_3

    .line 221
    :pswitch_7
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    check-cast v5, [S

    array-length v5, v5

    mul-int/2addr v5, v0

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 222
    goto :goto_3

    .line 218
    :pswitch_8
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 219
    goto :goto_3

    .line 215
    :pswitch_9
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 216
    nop

    .line 230
    :goto_3
    goto :goto_2

    .line 232
    :cond_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/DataInput;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 478
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuppoert size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 469
    :pswitch_0
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result p0

    int-to-long p0, p0

    .line 470
    goto :goto_0

    .line 466
    :pswitch_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    int-to-long p0, p0

    .line 467
    goto :goto_0

    .line 475
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide p0

    .line 476
    goto :goto_0

    .line 472
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 473
    nop

    .line 480
    :goto_0
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J
    .locals 0

    .line 103
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ic:J

    return-wide p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    nop

    .line 359
    nop

    .line 361
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v0

    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    mul-int/2addr v2, p2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 365
    :cond_0
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 367
    sget-object p2, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 406
    move-object p2, v0

    goto :goto_3

    .line 398
    :pswitch_0
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    new-array p2, p2, [J

    .line 399
    nop

    .line 400
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 401
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_1
    goto :goto_3

    .line 390
    :pswitch_1
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    new-array p2, p2, [I

    .line 391
    nop

    .line 392
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 393
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v2

    aput v2, p2, v1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    :cond_2
    goto :goto_3

    .line 382
    :pswitch_2
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    new-array p2, p2, [S

    .line 383
    nop

    .line 384
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 385
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v2

    aput-short v2, p2, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 387
    :cond_3
    goto :goto_3

    .line 376
    :pswitch_3
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v1

    long-to-int p2, v1

    new-array p2, p2, [B

    .line 377
    invoke-interface {p1, p2}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([B)V

    .line 378
    nop

    .line 379
    nop

    .line 380
    goto :goto_3

    .line 369
    :pswitch_4
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    .line 370
    invoke-static {p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->X(I)[B

    move-result-object v0

    .line 371
    invoke-interface {p1, v0, v1, p2}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([BII)V

    .line 372
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 373
    nop

    .line 406
    move-object p2, p1

    :goto_3
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b([B)V

    .line 407
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    aget-object v3, v0, v1

    .line 153
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    .line 154
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    .line 155
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v6

    .line 156
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v7

    .line 157
    new-instance p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-object p0
.end method

.method private static a(Ljava/io/DataOutput;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 458
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsuppoert size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 449
    :pswitch_0
    long-to-int p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 450
    goto :goto_0

    .line 446
    :pswitch_1
    long-to-int p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 447
    goto :goto_0

    .line 455
    :cond_0
    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 456
    goto :goto_0

    .line 452
    :cond_1
    long-to-int p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 453
    nop

    .line 460
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    nop

    .line 412
    sget-object v0, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 440
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :pswitch_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 427
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    .line 428
    goto :goto_0

    .line 422
    :pswitch_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 424
    goto :goto_0

    .line 418
    :pswitch_2
    new-array v0, v1, [Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v0, v2

    .line 420
    goto :goto_0

    .line 414
    :pswitch_3
    new-array v0, v1, [Ljava/lang/Object;

    .line 415
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v2

    .line 416
    goto :goto_0

    .line 434
    :pswitch_4
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 435
    invoke-direct {p0, p1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    .line 436
    nop

    .line 440
    :goto_0
    return-object v0

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

.method private b(Ljava/io/DataOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 163
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HZ:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 164
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 165
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ib:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 166
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ic:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 168
    :cond_0
    const/16 p1, 0xc

    return p1
.end method

.method private b(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    nop

    .line 237
    sget-object v0, Lmiui/util/DirectIndexedFile$1;->HA:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 354
    move v1, v4

    goto/16 :goto_a

    .line 257
    :pswitch_0
    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 260
    :cond_0
    nop

    .line 261
    nop

    .line 354
    move v1, v2

    goto/16 :goto_a

    .line 251
    :pswitch_1
    if-eqz p1, :cond_1

    .line 252
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 254
    :cond_1
    nop

    .line 255
    nop

    .line 354
    :goto_0
    move v1, v3

    goto/16 :goto_a

    .line 245
    :pswitch_2
    if-eqz p1, :cond_2

    .line 246
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeShort(I)V

    .line 248
    :cond_2
    nop

    .line 249
    goto/16 :goto_a

    .line 239
    :pswitch_3
    if-eqz p1, :cond_3

    .line 240
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 242
    :cond_3
    nop

    .line 243
    nop

    .line 354
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 334
    :pswitch_4
    if-eqz p1, :cond_4

    .line 335
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 337
    :cond_4
    nop

    .line 338
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 340
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 341
    check-cast v0, [J

    .line 342
    if-eqz p1, :cond_5

    .line 343
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 344
    array-length v3, v0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_5

    aget-wide v6, v0, v5

    .line 345
    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 348
    :cond_5
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v0, v0

    mul-int/2addr v0, v2

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 349
    goto :goto_1

    .line 350
    :cond_6
    goto/16 :goto_a

    .line 316
    :pswitch_5
    if-eqz p1, :cond_7

    .line 317
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    :cond_7
    nop

    .line 320
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v0, v3

    .line 322
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 323
    check-cast v0, [I

    .line 324
    if-eqz p1, :cond_8

    .line 325
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p1, v2, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 326
    array-length v2, v0

    move v5, v4

    :goto_4
    if-ge v5, v2, :cond_8

    aget v6, v0, v5

    .line 327
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 330
    :cond_8
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v0, v0

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 331
    goto :goto_3

    .line 332
    :cond_9
    goto/16 :goto_a

    .line 298
    :pswitch_6
    if-eqz p1, :cond_a

    .line 299
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 301
    :cond_a
    nop

    .line 302
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 305
    check-cast v0, [S

    .line 306
    if-eqz p1, :cond_b

    .line 307
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p1, v2, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 308
    array-length v2, v0

    move v5, v4

    :goto_6
    if-ge v5, v2, :cond_b

    aget-short v6, v0, v5

    .line 309
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 312
    :cond_b
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v0, v0

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    add-int/2addr v3, v2

    .line 313
    goto :goto_5

    .line 314
    :cond_c
    goto/16 :goto_0

    .line 282
    :pswitch_7
    if-eqz p1, :cond_d

    .line 283
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 285
    :cond_d
    nop

    .line 286
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 288
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 289
    check-cast v0, [B

    .line 290
    if-eqz p1, :cond_e

    .line 291
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v3, v0

    int-to-long v3, v3

    invoke-static {p1, v2, v3, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 292
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 294
    :cond_e
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 295
    goto :goto_7

    .line 296
    :cond_f
    goto :goto_a

    .line 263
    :pswitch_8
    if-eqz p1, :cond_10

    .line 264
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 266
    :cond_10
    nop

    .line 267
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 269
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 272
    if-eqz p1, :cond_11

    .line 273
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v3, v0

    int-to-long v5, v3

    invoke-static {p1, v2, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 274
    array-length v2, v0

    move v3, v4

    :goto_9
    if-ge v3, v2, :cond_11

    aget-byte v5, v0, v3

    .line 275
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 278
    :cond_11
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ia:B

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 279
    goto :goto_8

    .line 280
    :cond_12
    nop

    .line 354
    :goto_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Ljava/io/DataInput;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J
    .locals 2

    .line 103
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Ic:J

    return-wide v0
.end method

.method static synthetic b(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static b([B)V
    .locals 3

    .line 136
    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 137
    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    array-length v1, v1

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 138
    :cond_0
    sput-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HX:[B

    goto :goto_0

    .line 140
    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 0

    .line 103
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method
