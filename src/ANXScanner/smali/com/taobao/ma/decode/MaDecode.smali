.class public Lcom/taobao/ma/decode/MaDecode;
.super Ljava/lang/Object;
.source "MaDecode.java"


# static fields
.field private static isInDecoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v1, "Madecode: loading so files"

    invoke-static {v1}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 37
    sget-boolean v1, Lcom/taobao/ma/common/config/MaConfig;->hasSoLoaded:Z

    if-nez v1, :cond_0

    .line 39
    :try_start_0
    const-string v1, "tbdecode"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/ma/common/config/MaConfig;->hasSoLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/ma/decode/MaDecode;->isInDecoding:Z

    return-void

    .line 41
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Failed to load libtbdecode.so"

    invoke-static {v1, v0}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized codeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strides"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "scanMode"    # I
    .param p6, "str4GLocalAddr"    # Ljava/lang/String;
    .param p7, "whitelist"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    const-class v4, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/taobao/ma/decode/MaDecode;->isInDecoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 87
    :goto_0
    monitor-exit v4

    return-object v2

    .line 69
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lcom/taobao/ma/decode/MaDecode;->isInDecoding:Z

    .line 71
    if-nez p0, :cond_1

    .line 72
    const-string v3, "codeDecode data is null"

    invoke-static {v3}, Lcom/taobao/ma/common/log/MaLogger;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 76
    :cond_1
    const/4 v2, 0x0

    .line 78
    .local v2, "result":Lcom/taobao/ma/decode/DecodeResult;
    :try_start_2
    invoke-static/range {p0 .. p7}, Lcom/taobao/ma/decode/MaDecode;->yuvcodeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 85
    :goto_1
    :try_start_3
    invoke-static {v2}, Lcom/taobao/ma/decode/MaDecode;->handleDecodeResult(Lcom/taobao/ma/decode/DecodeResult;)Lcom/taobao/ma/decode/DecodeResult;

    move-result-object v2

    .line 86
    const/4 v3, 0x0

    sput-boolean v3, Lcom/taobao/ma/decode/MaDecode;->isInDecoding:Z

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "error":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "Failed to load libtbdecode.so"

    invoke-static {v3, v1}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    .end local v1    # "error":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Landroid/graphics/Bitmap;I)Lcom/taobao/ma/decode/DecodeResult;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scanMode"    # I

    .prologue
    .line 148
    const-class v7, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v7

    move-object v0, p0

    .line 149
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 151
    .local v5, "result":Lcom/taobao/ma/decode/DecodeResult;
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v6, v8, :cond_0

    .line 152
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 153
    .local v1, "bb":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    move-object v0, v1

    .line 156
    .end local v1    # "bb":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    mul-int/2addr v6, v8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 157
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    invoke-static {v6, v8, v9, v10, p1}, Lcom/taobao/ma/decode/MaDecode;->codeDecodeWithQr([BIIII)Lcom/taobao/ma/decode/DecodeResult;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 166
    :goto_0
    :try_start_2
    invoke-static {v5}, Lcom/taobao/ma/decode/MaDecode;->handleDecodeResult(Lcom/taobao/ma/decode/DecodeResult;)Lcom/taobao/ma/decode/DecodeResult;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 169
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-exit v7

    return-object v5

    .line 161
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    .line 162
    .local v4, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string v6, "Failed to load libtbdecode.so"

    invoke-static {v6, v4}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "error":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 163
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 148
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v0

    const/16 v1, 0x200

    :try_start_0
    invoke-static {p0, v1}, Lcom/taobao/ma/decode/MaDecode;->codeDecodePictureWithQr(Ljava/lang/String;I)Lcom/taobao/ma/decode/DecodeResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized codeDecodePictureWithQr(Ljava/lang/String;I)Lcom/taobao/ma/decode/DecodeResult;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "scanMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 127
    const-class v5, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v1

    .line 130
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "srcImageFile":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const/16 v4, 0x400

    const/16 v6, 0x400

    invoke-static {v3, v4, v6}, Lcom/taobao/ma/util/ImageTool;->createThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/taobao/ma/decode/MaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;I)Lcom/taobao/ma/decode/DecodeResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 136
    .local v1, "decodeResult":Lcom/taobao/ma/decode/DecodeResult;
    goto :goto_0

    .line 137
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "decodeResult":Lcom/taobao/ma/decode/DecodeResult;
    .end local v3    # "srcImageFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static native codeDecodeWithQr([BIIII)Lcom/taobao/ma/decode/DecodeResult;
.end method

.method public static declared-synchronized detectGen3Markers(Lcom/taobao/ma/ar/ARInputParam;)Lcom/taobao/ma/ar/ARResult;
    .locals 15
    .param p0, "inputParam"    # Lcom/taobao/ma/ar/ARInputParam;

    .prologue
    .line 255
    const-class v14, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v14

    const/4 v13, -0x1

    .line 257
    .local v13, "oc":I
    :try_start_0
    new-instance v12, Lcom/taobao/ma/ar/ARResult;

    invoke-direct {v12}, Lcom/taobao/ma/ar/ARResult;-><init>()V

    .line 258
    .local v12, "result":Lcom/taobao/ma/ar/ARResult;
    iget-object v0, p0, Lcom/taobao/ma/ar/ARInputParam;->imageData:[B

    iget v1, p0, Lcom/taobao/ma/ar/ARInputParam;->imageWidth:I

    iget v2, p0, Lcom/taobao/ma/ar/ARInputParam;->imageHeight:I

    iget-object v3, p0, Lcom/taobao/ma/ar/ARInputParam;->preXCoords:[I

    iget-object v4, p0, Lcom/taobao/ma/ar/ARInputParam;->preYCoords:[I

    iget v5, p0, Lcom/taobao/ma/ar/ARInputParam;->preDim:I

    iget v6, p0, Lcom/taobao/ma/ar/ARInputParam;->preInCount:I

    const/4 v7, -0x1

    iget v8, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP1_X:I

    iget v9, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP1_Y:I

    iget v10, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP2_X:I

    iget v11, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP2_Y:I

    invoke-static/range {v0 .. v12}, Lcom/taobao/ma/decode/MaDecode;->detectMarkers([BII[I[IIIIIIIILcom/taobao/ma/ar/ARResult;)V

    .line 261
    iget v0, v12, Lcom/taobao/ma/ar/ARResult;->pointNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v14

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v12}, Lcom/taobao/ma/ar/ARResult;->convertId()Lcom/taobao/ma/ar/ARResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 255
    .end local v12    # "result":Lcom/taobao/ma/ar/ARResult;
    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0
.end method

.method private static native detectMarkers([BII[I[IIIIIIIILcom/taobao/ma/ar/ARResult;)V
.end method

.method public static declared-synchronized encode(Ljava/lang/String;Landroid/graphics/Bitmap;IC)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maType"    # I
    .param p3, "domain"    # C

    .prologue
    .line 222
    const-class v8, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 223
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 224
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    .line 225
    .local v4, "numChannelForPixel":I
    :goto_0
    invoke-static {p1, v2, v3, v4}, Lcom/taobao/ma/decode/MaDecode;->getPixelData(Landroid/graphics/Bitmap;III)[B

    move-result-object v1

    .local v1, "pixelData":[B
    move-object v0, p0

    move v5, p2

    move v6, p3

    .line 226
    invoke-static/range {v0 .. v6}, Lcom/taobao/ma/decode/MaDecode;->encode(Ljava/lang/String;[BIIIIC)[B

    move-result-object v7

    .line 227
    .local v7, "resultData":[B
    invoke-static {v7, v2, v3, v4}, Lcom/taobao/ma/decode/MaDecode;->handleResult([BIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 224
    .end local v1    # "pixelData":[B
    .end local v4    # "numChannelForPixel":I
    .end local v7    # "resultData":[B
    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    .line 222
    .end local v2    # "width":I
    .end local v3    # "height":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static declared-synchronized encode(Ljava/lang/String;[BIIIIC)[B
    .locals 23
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "pixelData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "numChannelForPixel"    # I
    .param p5, "maType"    # I
    .param p6, "domain"    # C

    .prologue
    .line 231
    const-class v22, Lcom/taobao/ma/decode/MaDecode;

    monitor-enter v22

    const/4 v2, 0x3

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    move/from16 v12, p6

    .line 232
    .local v12, "domainIndex":C
    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v0, v2, [C

    move-object/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    fill-array-data v18, :array_0

    .line 233
    .local v18, "ecLevels":[C
    const/16 v20, 0x0

    .line 234
    .local v20, "pixels":I
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_2

    .line 235
    move/from16 v20, p2

    .line 241
    :cond_0
    :goto_1
    const/16 v2, 0x15e

    move/from16 v0, v20

    if-lt v0, v2, :cond_4

    const/4 v15, 0x4

    .line 242
    .local v15, "version":I
    :goto_2
    const/4 v14, 0x2

    .line 243
    .local v14, "visualLevel":I
    const/16 v21, 0x0

    .line 245
    .local v21, "result":[B
    mul-int v7, p4, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_1
    aget-char v13, v18, p5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v16, p5

    invoke-static/range {v2 .. v16}, Lcom/taobao/ma/decode/MaDecode;->encode(Ljava/lang/String;[BIIIIIIIICCIII)[B
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 251
    :goto_3
    monitor-exit v22

    return-object v21

    .line 231
    .end local v12    # "domainIndex":C
    .end local v14    # "visualLevel":I
    .end local v15    # "version":I
    .end local v18    # "ecLevels":[C
    .end local v20    # "pixels":I
    .end local v21    # "result":[B
    :cond_1
    const/16 v12, 0x30

    goto :goto_0

    .line 236
    .restart local v12    # "domainIndex":C
    .restart local v18    # "ecLevels":[C
    .restart local v20    # "pixels":I
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 237
    move/from16 v20, p3

    goto :goto_1

    .line 238
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 239
    move/from16 v20, p2

    goto :goto_1

    .line 241
    :cond_4
    const/4 v15, 0x3

    goto :goto_2

    .line 246
    .restart local v14    # "visualLevel":I
    .restart local v15    # "version":I
    .restart local v21    # "result":[B
    :catch_0
    move-exception v19

    .line 247
    .local v19, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v2, "Failed to load libtbdecode.so"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 231
    .end local v14    # "visualLevel":I
    .end local v15    # "version":I
    .end local v18    # "ecLevels":[C
    .end local v19    # "error":Ljava/lang/UnsatisfiedLinkError;
    .end local v20    # "pixels":I
    .end local v21    # "result":[B
    :catchall_0
    move-exception v2

    monitor-exit v22

    throw v2

    .line 248
    .restart local v14    # "visualLevel":I
    .restart local v15    # "version":I
    .restart local v18    # "ecLevels":[C
    .restart local v20    # "pixels":I
    .restart local v21    # "result":[B
    :catch_1
    move-exception v17

    .line 249
    .local v17, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static/range {v17 .. v17}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 232
    :array_0
    .array-data 2
        0x51s
        0x51s
        0x4cs
        0x4cs
    .end array-data
.end method

.method private static native encode(Ljava/lang/String;[BIIIIIIIICCIII)[B
.end method

.method private static getPixelData(Landroid/graphics/Bitmap;III)[B
    .locals 18
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "numChannelForPixel"    # I

    .prologue
    .line 174
    mul-int v16, p1, p2

    .line 176
    .local v16, "size":I
    mul-int v1, p3, v16

    new-array v14, v1, [B

    .line 177
    .local v14, "pixelData":[B
    move/from16 v0, v16

    new-array v2, v0, [I

    .line 178
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 180
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 181
    aget v17, v2, v12

    .line 182
    .local v17, "value":I
    shr-int/lit8 v1, v17, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v9, v1

    .line 183
    .local v9, "a":B
    shr-int/lit8 v1, v17, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v15, v1

    .line 184
    .local v15, "r":B
    shr-int/lit8 v1, v17, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v11, v1

    .line 185
    .local v11, "g":B
    move/from16 v0, v17

    and-int/lit16 v1, v0, 0xff

    int-to-byte v10, v1

    .line 187
    .local v10, "b":B
    aput-byte v15, v14, v13

    .line 188
    add-int/lit8 v1, v13, 0x1

    aput-byte v11, v14, v1

    .line 189
    add-int/lit8 v1, v13, 0x2

    aput-byte v10, v14, v1

    .line 190
    const/4 v1, 0x4

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 191
    add-int/lit8 v1, v13, 0x3

    aput-byte v9, v14, v1

    .line 180
    :cond_0
    add-int/lit8 v12, v12, 0x1

    add-int v13, v13, p3

    goto :goto_0

    .line 195
    .end local v9    # "a":B
    .end local v10    # "b":B
    .end local v11    # "g":B
    .end local v15    # "r":B
    .end local v17    # "value":I
    :cond_1
    return-object v14
.end method

.method private static handleDecodeResult(Lcom/taobao/ma/decode/DecodeResult;)Lcom/taobao/ma/decode/DecodeResult;
    .locals 5
    .param p0, "result"    # Lcom/taobao/ma/decode/DecodeResult;

    .prologue
    .line 92
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    array-length v2, v2

    if-lez v2, :cond_2

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    invoke-static {v2}, Lcom/taobao/ma/util/StringEncodeUtils;->getStringEncode([B)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "encode":Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 100
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    .line 101
    iget-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 p0, 0x0

    .line 113
    .end local v1    # "encode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 98
    .restart local v1    # "encode":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    invoke-direct {v2, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 104
    .end local v1    # "encode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 p0, 0x0

    .line 108
    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const/4 p0, 0x0

    .line 108
    goto :goto_1

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static handleResult([BIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "resultData"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "numChannelForPixel"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    if-eqz p0, :cond_2

    .line 201
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "resultBitm":Landroid/graphics/Bitmap;
    mul-int v3, p1, p2

    new-array v1, v3, [I

    .line 204
    .local v1, "resultPixels":[I
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    array-length v3, p0

    if-ge v9, v3, :cond_1

    .line 205
    const/4 v3, 0x4

    if-ne p3, v3, :cond_0

    add-int/lit8 v3, v9, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v8, v3, 0x18

    .line 207
    .local v8, "argb":I
    :goto_1
    aget-byte v3, p0, v9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v8, v3

    .line 208
    add-int/lit8 v3, v9, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v8, v3

    .line 209
    add-int/lit8 v3, v9, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v8, v3

    .line 211
    aput v8, v1, v10

    .line 204
    add-int/2addr v9, p3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 205
    .end local v8    # "argb":I
    :cond_0
    const/high16 v8, -0x1000000

    goto :goto_1

    :cond_1
    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 214
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 218
    .end local v0    # "resultBitm":Landroid/graphics/Bitmap;
    .end local v1    # "resultPixels":[I
    .end local v9    # "i":I
    .end local v10    # "index":I
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static native releaseMemory()V
.end method

.method public static releaseStaticMemory()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/taobao/ma/decode/MaDecode;->releaseMemory()V

    .line 33
    return-void
.end method

.method public static yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;
    .locals 8
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "scanMode"    # I
    .param p3, "str4GLocalAddr"    # Ljava/lang/String;
    .param p4, "whitelist"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/taobao/ma/decode/MaDecode;->codeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method private static native yuvcodeDecode([BIIILandroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;
.end method
