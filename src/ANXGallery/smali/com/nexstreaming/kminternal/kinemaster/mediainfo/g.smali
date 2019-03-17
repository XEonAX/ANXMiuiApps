.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;
.super Ljava/lang/Object;
.source "ThumbnailParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$a;,
        Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;
    }
.end annotation


# direct methods
.method private static a(I)I
    .locals 2

    .prologue
    .line 264
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static a(Ljava/io/File;ILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 18

    .prologue
    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileNotFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    .line 94
    :goto_0
    return-object v2

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 38
    const-wide/16 v4, 0x8

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 39
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->RawFileTooSmall:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    goto :goto_0

    .line 43
    :cond_1
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    .line 45
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 46
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 47
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 49
    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v6

    .line 50
    invoke-static {v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v4

    .line 51
    invoke-static {v7}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v5

    .line 53
    mul-int v7, v4, v5

    mul-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x8

    .line 54
    move/from16 v0, p1

    int-to-long v8, v0

    const-wide/16 v14, 0x8

    sub-long/2addr v2, v14

    add-int/lit8 v11, v7, 0x4

    int-to-long v14, v11

    div-long/2addr v2, v14

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v8, v2

    .line 55
    const/4 v2, 0x1

    if-ge v8, v2, :cond_2

    .line 56
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->NoThumbailsFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    goto :goto_0

    .line 59
    :cond_2
    new-array v2, v7, [B

    .line 60
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const/4 v7, 0x0

    .line 65
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    .line 66
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    .line 67
    invoke-static {v14}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v9

    .line 69
    if-le v7, v9, :cond_3

    .line 71
    const-string v7, "ThumbnailParser"

    const-string/jumbo v15, "thumbnail needSort"

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    .line 75
    new-instance v7, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;

    move-wide/from16 v0, v16

    invoke-direct {v7, v9, v14, v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;-><init>(IIJ)V

    .line 76
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v10, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 65
    add-int/lit8 v3, v3, 0x1

    move v7, v9

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 80
    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$a;

    invoke-direct {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$a;-><init>()V

    invoke-static {v11, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    const-string v3, "ThumbnailParser"

    const-string v7, "Sort thumbnail time stamp"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v7, 0x0

    .line 83
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;

    .line 84
    invoke-virtual {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;->b()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual {v10, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 86
    invoke-virtual {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;->a()I

    move-result v3

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a([BIIIIIILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 90
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    invoke-static {v2}, Lcom/nexstreaming/app/common/task/Task;->makeTaskError(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v2

    goto/16 :goto_0
.end method

.method static a(Ljava/io/InputStream;JILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p4, :cond_0

    .line 166
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->ParameterError:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    .line 260
    :goto_0
    return-object v2

    .line 168
    :cond_0
    new-instance v11, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 170
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 171
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 172
    move-object/from16 v0, p4

    instance-of v12, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;

    .line 175
    if-eqz v12, :cond_5

    .line 176
    const/4 v2, 0x0

    .line 177
    check-cast p4, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;

    move-object v10, v2

    .line 183
    :goto_1
    const/4 v2, 0x0

    .line 184
    const/high16 v6, -0x10000

    and-int/2addr v6, v4

    if-nez v6, :cond_1

    const/high16 v6, -0x10000

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    .line 185
    :cond_1
    invoke-static {v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v5

    .line 186
    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v4

    .line 187
    invoke-static {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v3

    .line 188
    const/4 v2, 0x1

    .line 190
    :cond_2
    const-string v6, "ThumbnailParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processRawFile: w/h/swap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v6, 0x0

    .line 193
    const/16 v7, 0x20

    if-ne v5, v7, :cond_6

    .line 194
    if-nez v12, :cond_3

    .line 195
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_3
    move-object v8, v6

    .line 208
    :goto_2
    const/4 v7, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    if-nez v12, :cond_4

    .line 211
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 212
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 213
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v6, v9, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 216
    :cond_4
    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    div-int/lit8 v13, v4, 0x8

    .line 217
    move/from16 v0, p3

    int-to-long v4, v0

    const-wide/16 v14, 0x8

    sub-long v14, p1, v14

    add-int/lit8 v9, v13, 0x4

    int-to-long v0, v9

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v14, v4

    .line 218
    const/4 v4, 0x1

    if-ge v14, v4, :cond_b

    .line 219
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->NoThumbailsFound:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    goto/16 :goto_0

    .line 179
    :cond_5
    check-cast p4, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/d;

    .line 180
    const/4 v2, 0x0

    move-object/from16 v10, p4

    move-object/from16 p4, v2

    goto/16 :goto_1

    .line 197
    :cond_6
    const/16 v7, 0x10

    if-ne v5, v7, :cond_8

    .line 198
    if-nez v12, :cond_7

    .line 199
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_7
    move-object v8, v6

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    const/16 v7, 0x8

    if-ne v5, v7, :cond_a

    .line 202
    if-nez v12, :cond_9

    .line 203
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_9
    move-object v8, v6

    .line 204
    goto :goto_2

    .line 206
    :cond_a
    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->UnknownFormat:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    goto/16 :goto_0

    .line 222
    :cond_b
    new-array v15, v13, [B

    .line 223
    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 224
    const-string v4, "ThumbnailParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processRawFile : thumbCount="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v4, 0x0

    move v9, v4

    :goto_3
    if-ge v9, v14, :cond_10

    .line 227
    const-string v4, "ThumbnailParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processRawFile : i="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 230
    if-eqz v2, :cond_c

    .line 231
    invoke-static {v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a(I)I

    move-result v4

    .line 233
    :cond_c
    const-string v5, "ThumbnailParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "processRawFile : time="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v11, v15}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 236
    add-int/lit8 v17, v13, -0x1

    move/from16 v0, v17

    if-ge v5, v0, :cond_e

    .line 237
    if-eqz v12, :cond_d

    .line 238
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v5, v9, v14, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;->a([BIII)V

    .line 226
    :goto_4
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_3

    .line 240
    :cond_d
    const/4 v5, 0x0

    invoke-interface {v10, v5, v9, v14, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/d;->a(Landroid/graphics/Bitmap;III)V

    goto :goto_4

    .line 244
    :cond_e
    if-eqz v12, :cond_f

    .line 245
    move-object/from16 v0, p4

    invoke-interface {v0, v15, v9, v14, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;->a([BIII)V

    .line 246
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_4

    .line 249
    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 250
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 253
    const/4 v5, 0x0

    neg-int v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v8, v5, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v5, v7

    .line 258
    invoke-interface {v10, v5, v9, v14, v4}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/d;->a(Landroid/graphics/Bitmap;III)V

    goto :goto_4

    .line 260
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static a([BIIIIIILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p7, :cond_0

    .line 100
    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->ParameterError:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    .line 155
    :goto_0
    return-object v3

    .line 102
    :cond_0
    move-object/from16 v0, p7

    instance-of v7, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;

    .line 105
    if-eqz v7, :cond_3

    .line 106
    const/4 v3, 0x0

    .line 107
    check-cast p7, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;

    .line 113
    :goto_1
    const-string v4, "ThumbnailParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processRawFile: w/h/time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v4, 0x0

    .line 116
    const/16 v5, 0x20

    move/from16 v0, p4

    if-ne v0, v5, :cond_4

    .line 117
    if-nez v7, :cond_1

    .line 118
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    invoke-static {p2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1
    move-object v6, v4

    .line 131
    :goto_2
    const/4 v5, 0x0

    .line 132
    const/4 v4, 0x0

    .line 133
    if-nez v7, :cond_2

    .line 134
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move/from16 v0, p3

    invoke-static {p2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 135
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 139
    :cond_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 140
    const-string v9, "ThumbnailParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processRawFile : thumbCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v7, :cond_9

    .line 143
    move-object/from16 v0, p7

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;->a([BIII)V

    .line 155
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 109
    :cond_3
    check-cast p7, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/d;

    .line 110
    const/4 v3, 0x0

    move-object v12, v3

    move-object/from16 v3, p7

    move-object/from16 p7, v12

    goto/16 :goto_1

    .line 120
    :cond_4
    const/16 v5, 0x10

    move/from16 v0, p4

    if-ne v0, v5, :cond_6

    .line 121
    if-nez v7, :cond_5

    .line 122
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    invoke-static {p2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_5
    move-object v6, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    const/16 v5, 0x8

    move/from16 v0, p4

    if-ne v0, v5, :cond_8

    .line 125
    if-nez v7, :cond_7

    .line 126
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    invoke-static {p2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_7
    move-object v6, v4

    .line 127
    goto :goto_2

    .line 129
    :cond_8
    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;->UnknownFormat:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;

    goto/16 :goto_0

    .line 145
    :cond_9
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 148
    const/4 v7, 0x0

    move/from16 v0, p3

    neg-int v8, v0

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-interface {v3, v5, v0, v1, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/d;->a(Landroid/graphics/Bitmap;III)V

    goto :goto_3
.end method
