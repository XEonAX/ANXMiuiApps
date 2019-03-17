.class Lcom/xiaomi/scanner/camera/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 35
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ExifData"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 36
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_ASCII:[B

    .line 39
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_JIS:[B

    .line 42
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    .line 36
    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/scanner/camera/exif/IfdData;

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/xiaomi/scanner/camera/exif/IfdData;)V
    .locals 2
    .param p1, "data"    # Lcom/xiaomi/scanner/camera/exif/IfdData;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 140
    return-void
.end method

.method protected addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v1

    .line 173
    .end local v0    # "ifd":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .param p2, "ifdId"    # I

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getOrCreateIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v0

    .line 183
    .local v0, "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v1

    .line 185
    .end local v0    # "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 314
    if-ne p0, p1, :cond_0

    move v4, v6

    .line 341
    :goto_0
    return v4

    .line 317
    :cond_0
    if-nez p1, :cond_1

    move v4, v7

    .line 318
    goto :goto_0

    .line 320
    :cond_1
    instance-of v4, p1, Lcom/xiaomi/scanner/camera/exif/ExifData;

    if-eqz v4, :cond_8

    move-object v0, p1

    .line 321
    check-cast v0, Lcom/xiaomi/scanner/camera/exif/ExifData;

    .line 322
    .local v0, "data":Lcom/xiaomi/scanner/camera/exif/ExifData;
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    .line 324
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v7

    .line 325
    goto :goto_0

    .line 327
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 328
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    .line 329
    goto :goto_0

    .line 327
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    .line 333
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v2

    .line 334
    .local v2, "ifd1":Lcom/xiaomi/scanner/camera/exif/IfdData;
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v3

    .line 335
    .local v3, "ifd2":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/camera/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v7

    .line 336
    goto :goto_0

    .line 332
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "ifd1":Lcom/xiaomi/scanner/camera/exif/IfdData;
    .end local v3    # "ifd2":Lcom/xiaomi/scanner/camera/exif/IfdData;
    :cond_7
    move v4, v6

    .line 339
    goto :goto_0

    .end local v0    # "data":Lcom/xiaomi/scanner/camera/exif/ExifData;
    .end local v1    # "i":I
    :cond_8
    move v4, v7

    .line 341
    goto :goto_0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/scanner/camera/exif/ExifTag;>;"
    iget-object v7, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 257
    .local v0, "d":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getAllTags()[Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v3

    .line 259
    .local v3, "tags":[Lcom/xiaomi/scanner/camera/exif/ExifTag;
    if-eqz v3, :cond_0

    .line 260
    array-length v9, v3

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v2, v3, v4

    .line 261
    .local v2, "t":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v2    # "t":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .end local v3    # "tags":[Lcom/xiaomi/scanner/camera/exif/ExifTag;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 266
    .end local v0    # "d":Lcom/xiaomi/scanner/camera/exif/IfdData;
    :cond_1
    return-object v1
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 7
    .param p1, "ifd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v0, v5, p1

    .line 275
    .local v0, "d":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-nez v0, :cond_1

    move-object v1, v4

    .line 289
    :cond_0
    :goto_0
    return-object v1

    .line 278
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getAllTags()[Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v3

    .line 279
    .local v3, "tags":[Lcom/xiaomi/scanner/camera/exif/ExifTag;
    if-nez v3, :cond_2

    move-object v1, v4

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/scanner/camera/exif/ExifTag;>;"
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 284
    .local v2, "t":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 286
    .end local v2    # "t":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 287
    goto :goto_0
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/scanner/camera/exif/ExifTag;>;"
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 299
    .local v0, "d":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v2

    .line 301
    .local v2, "t":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v2    # "t":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "d":Lcom/xiaomi/scanner/camera/exif/IfdData;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 307
    const/4 v1, 0x0

    .line 309
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/scanner/camera/exif/ExifTag;>;"
    :cond_2
    return-object v1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 128
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v0, v0, p1

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOrCreateIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v0, v1, p1

    .line 148
    .local v0, "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/IfdData;

    .end local v0    # "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;-><init>(I)V

    .line 150
    .restart local v0    # "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aput-object v0, v1, p1

    .line 152
    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v0, v1, p2

    .line 161
    .local v0, "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v1

    goto :goto_0
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 217
    iget-object v6, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v3, v6, v8

    .line 218
    .local v3, "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-nez v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v5

    .line 221
    :cond_1
    sget v6, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v6}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v4

    .line 222
    .local v4, "tag":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 229
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v6

    new-array v0, v6, [B

    .line 230
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getBytes([B)V

    .line 232
    new-array v1, v7, [B

    .line 233
    .local v1, "code":[B
    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :try_start_0
    sget-object v6, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "US-ASCII"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 238
    :cond_2
    sget-object v6, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "EUC-JP"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 240
    :cond_3
    sget-object v6, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "UTF-16"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/xiaomi/scanner/camera/exif/ExifData;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "Failed to decode the user comment"

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTag(SI)V
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v0, v1, p2

    .line 206
    .local v0, "ifdData":Lcom/xiaomi/scanner/camera/exif/IfdData;
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->removeTag(S)V

    goto :goto_0
.end method

.method protected removeThumbnailData()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->clearThumbnailAndStrips()V

    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 199
    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    .line 70
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "strip"    # [B

    .prologue
    .line 83
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
