.class Lcom/miui/gallery3d/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/miui/gallery3d/exif/ExifData;

.field private final mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 2
    .param p1, "ou"    # Ljava/io/OutputStream;
    .param p2, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 86
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    .line 82
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iput-object p2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 88
    return-void
.end method

.method private calculateAllOffset()I
    .locals 12

    .prologue
    .line 435
    const/16 v6, 0x8

    .line 436
    .local v6, "offset":I
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    .line 437
    .local v3, "ifd0":Lcom/miui/gallery3d/exif/IfdData;
    invoke-direct {p0, v3, v6}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 438
    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 440
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    .line 441
    .local v0, "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    invoke-direct {p0, v0, v6}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 443
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    .line 444
    .local v5, "interIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v5, :cond_0

    .line 445
    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v0, v9}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    .line 446
    invoke-virtual {v9, v6}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 447
    invoke-direct {p0, v5, v6}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 450
    :cond_0
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v1

    .line 451
    .local v1, "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v1, :cond_1

    .line 452
    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 453
    invoke-direct {p0, v1, v6}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 456
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    .line 457
    .local v4, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v4, :cond_2

    .line 458
    invoke-virtual {v3, v6}, Lcom/miui/gallery3d/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 459
    invoke-direct {p0, v4, v6}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v6

    .line 463
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 464
    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    .line 465
    invoke-virtual {v9, v6}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 466
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 477
    :cond_3
    :goto_0
    return v6

    .line 467
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 468
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v8

    .line 469
    .local v8, "stripCount":I
    new-array v7, v8, [J

    .line 470
    .local v7, "offsets":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 471
    int-to-long v10, v6

    aput-wide v10, v7, v2

    .line 472
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9, v2}, Lcom/miui/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 474
    :cond_5
    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    goto :goto_0
.end method

.method private calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I
    .locals 6
    .param p1, "ifd"    # Lcom/miui/gallery3d/exif/IfdData;
    .param p2, "offset"    # I

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr p2, v2

    .line 311
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 312
    .local v1, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 313
    .local v0, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 314
    invoke-virtual {v0, p2}, Lcom/miui/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 315
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v4

    add-int/2addr p2, v4

    .line 312
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v7

    .line 324
    .local v7, "ifd0":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v7, :cond_0

    .line 325
    new-instance v7, Lcom/miui/gallery3d/exif/IfdData;

    .end local v7    # "ifd0":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v15, 0x0

    invoke-direct {v7, v15}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    .line 326
    .restart local v7    # "ifd0":Lcom/miui/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15, v7}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 328
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 329
    .local v3, "exifOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v3, :cond_1

    .line 330
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 333
    :cond_1
    invoke-virtual {v7, v3}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v2

    .line 337
    .local v2, "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v2, :cond_2

    .line 338
    new-instance v2, Lcom/miui/gallery3d/exif/IfdData;

    .end local v2    # "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v15, 0x2

    invoke-direct {v2, v15}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    .line 339
    .restart local v2    # "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15, v2}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    .line 344
    .local v4, "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v4, :cond_4

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v5

    .line 346
    .local v5, "gpsOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v5, :cond_3

    .line 347
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 350
    :cond_3
    invoke-virtual {v7, v5}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 354
    .end local v5    # "gpsOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v9

    .line 355
    .local v9, "interIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v9, :cond_6

    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 357
    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v10

    .line 358
    .local v10, "interOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v10, :cond_5

    .line 359
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 362
    :cond_5
    invoke-virtual {v2, v10}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 365
    .end local v10    # "interOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v8

    .line 368
    .local v8, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 370
    if-nez v8, :cond_7

    .line 371
    new-instance v8, Lcom/miui/gallery3d/exif/IfdData;

    .end local v8    # "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    .line 372
    .restart local v8    # "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15, v8}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 375
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 376
    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v13

    .line 377
    .local v13, "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v13, :cond_8

    .line 378
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 382
    :cond_8
    invoke-virtual {v8, v13}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 384
    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v11

    .line 385
    .local v11, "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v11, :cond_9

    .line 386
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 390
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v11, v15}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 391
    invoke-virtual {v8, v11}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 394
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 395
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 432
    .end local v11    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v13    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_a
    :goto_0
    return-void

    .line 396
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 397
    if-nez v8, :cond_c

    .line 398
    new-instance v8, Lcom/miui/gallery3d/exif/IfdData;

    .end local v8    # "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    .line 399
    .restart local v8    # "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15, v8}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 401
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v14

    .line 402
    .local v14, "stripCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v13

    .line 403
    .restart local v13    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v13, :cond_d

    .line 404
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 407
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v16, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 408
    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v11

    .line 409
    .restart local v11    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v11, :cond_e

    .line 410
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 413
    :cond_e
    new-array v12, v14, [J

    .line 414
    .local v12, "lengths":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v15

    if-ge v6, v15, :cond_f

    .line 415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v15, v6}, Lcom/miui/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v15

    array-length v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v12, v6

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 417
    :cond_f
    invoke-virtual {v11, v12}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    .line 418
    invoke-virtual {v8, v13}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 419
    invoke-virtual {v8, v11}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 421
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 422
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 423
    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    .line 422
    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0

    .line 424
    .end local v6    # "i":I
    .end local v11    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v12    # "lengths":[J
    .end local v13    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v14    # "stripCount":I
    :cond_10
    if-eqz v8, :cond_a

    .line 426
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 427
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 428
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 429
    sget v15, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 430
    invoke-static {v15}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    .line 429
    invoke-virtual {v8, v15}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1, "requestByteCount"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 107
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p1, v2

    .line 108
    .local v0, "byteNeeded":I
    if-le p4, v0, :cond_0

    move v1, v0

    .line 109
    .local v1, "byteToRead":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p4

    .line 108
    goto :goto_0
.end method

.method private stripNullValueTags(Lcom/miui/gallery3d/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Lcom/miui/gallery3d/exif/ExifData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery3d/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifTag;

    .line 246
    .local v1, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p1, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 265
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 266
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 267
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v2

    .line 268
    .local v2, "interoperabilityIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v2, :cond_0

    .line 269
    invoke-direct {p0, v2, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    .line 272
    .local v0, "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v3, v5}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v1

    .line 276
    .local v1, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v1, :cond_2

    .line 277
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v3, v5}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 279
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    if-nez v4, :cond_1

    .line 241
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-direct {p0, v4}, Lcom/miui/gallery3d/exif/ExifOutputStream;->stripNullValueTags(Lcom/miui/gallery3d/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    .local v2, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 218
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 219
    .local v1, "exifSize":I
    add-int/lit8 v4, v1, 0x8

    const v5, 0xffff

    if-le v4, v5, :cond_2

    .line 220
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Exif header is too large (>64Kb)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_2
    new-instance v0, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    .local v0, "dataOutputStream":Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 224
    const/16 v4, -0x1f

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 225
    add-int/lit8 v4, v1, 0x8

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 226
    const v4, 0x45786966

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 228
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_3

    .line 229
    const/16 v4, 0x4d4d

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 233
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 234
    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 235
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 236
    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeAllTags(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 237
    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeThumbnail(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 238
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery3d/exif/ExifTag;

    .line 239
    .local v3, "t":Lcom/miui/gallery3d/exif/ExifTag;
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v5, v3}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 231
    .end local v3    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_3
    const/16 v4, 0x4949

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_0
.end method

.method private writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 9
    .param p1, "ifd"    # Lcom/miui/gallery3d/exif/IfdData;
    .param p2, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 284
    .local v3, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {p2, v5}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 285
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 286
    .local v2, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 287
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 288
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 292
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 293
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 285
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {v2, p2}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 297
    invoke-virtual {p2, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getOffsetToNextIfd()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 302
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v3, v4

    .line 303
    .restart local v2    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v8, :cond_3

    .line 304
    invoke-static {v2, p2}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 302
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 307
    .end local v2    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p0, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;
    .param p1, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 484
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 485
    .local v0, "buf":[B
    array-length v3, v0

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 486
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    .line 487
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 490
    invoke-virtual {p1, v5}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 495
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 496
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 502
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->getRational(I)Lcom/miui/gallery3d/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcom/miui/gallery3d/exif/Rational;)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 507
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    .line 508
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 509
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 512
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .param p1, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 262
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/miui/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected setExifData(Lcom/miui/gallery3d/exif/ExifData;)V
    .locals 0
    .param p1, "exifData"    # Lcom/miui/gallery3d/exif/ExifData;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    .line 96
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->write([B)V

    .line 199
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->write([BII)V

    .line 207
    return-void
.end method

.method public write([BII)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 119
    :goto_0
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    if-eq v4, v6, :cond_b

    :cond_0
    if-lez p3, :cond_b

    .line 121
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v4, :cond_1

    .line 122
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v4, :cond_4

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 123
    .local v1, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v1

    .line 124
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 125
    add-int/2addr p2, v1

    .line 127
    .end local v1    # "byteToProcess":I
    :cond_1
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v4, :cond_2

    .line 128
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v4, :cond_5

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    .line 129
    .restart local v1    # "byteToProcess":I
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    sub-int/2addr p3, v1

    .line 131
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    .line 132
    add-int/2addr p2, v1

    .line 134
    .end local v1    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_6

    .line 189
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, p3

    .line 122
    goto :goto_1

    :cond_5
    move v1, p3

    .line 128
    goto :goto_2

    .line 137
    :cond_6
    iget v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-direct {p0, v6, p1, p2, p3}, Lcom/miui/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 140
    .local v0, "byteRead":I
    add-int/2addr p2, v0

    .line 141
    sub-int/2addr p3, v0

    .line 142
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 145
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_7

    .line 147
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    const/4 v4, 0x1

    iput v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    .line 151
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeExifData()V

    goto :goto_0

    .line 157
    .end local v0    # "byteRead":I
    :pswitch_1
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/miui/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 158
    .restart local v0    # "byteRead":I
    add-int/2addr p2, v0

    .line 159
    sub-int/2addr p3, v0

    .line 161
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 162
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 163
    .local v3, "tag":S
    const/16 v4, -0x27

    if-ne v3, v4, :cond_8

    .line 164
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    .end local v3    # "tag":S
    :cond_8
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 171
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 173
    .local v2, "marker":S
    const/16 v4, -0x1f

    if-ne v2, v4, :cond_9

    .line 174
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 175
    iput v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    .line 183
    :goto_4
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 176
    :cond_9
    invoke-static {v2}, Lcom/miui/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v4

    if-nez v4, :cond_a

    .line 177
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_4

    .line 180
    :cond_a
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iput v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    goto :goto_4

    .line 186
    .end local v0    # "byteRead":I
    .end local v2    # "marker":S
    :cond_b
    if-lez p3, :cond_3

    .line 187
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
