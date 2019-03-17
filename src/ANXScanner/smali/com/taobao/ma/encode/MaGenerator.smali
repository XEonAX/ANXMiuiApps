.class public Lcom/taobao/ma/encode/MaGenerator;
.super Ljava/lang/Object;
.source "MaGenerator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v1, "MaGenerator: loading so files"

    invoke-static {v1}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 21
    sget-boolean v1, Lcom/taobao/ma/common/config/MaConfig;->hasSoLoaded:Z

    if-nez v1, :cond_0

    .line 23
    :try_start_0
    const-string v1, "tbdecode"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/ma/common/config/MaConfig;->hasSoLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void

    .line 25
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Failed to load libtbdecode.so"

    invoke-static {v1, v0}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized __call_native_generateBWQRcode(Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "input"    # Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;

    .prologue
    .line 118
    const-class v11, Lcom/taobao/ma/encode/MaGenerator;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->publicData:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->hiddenData:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->margin:I

    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->qrSize:I

    iget v4, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->version:I

    iget v5, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->rotation:I

    iget-char v6, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->errorCorrectionLevel:C

    invoke-static/range {v0 .. v6}, Lcom/taobao/ma/encode/MaGenerator;->generateBWQRCode(Ljava/lang/String;Ljava/lang/String;IIIIC)[B

    move-result-object v7

    .line 120
    .local v7, "data":[B
    array-length v0, v7

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v10, v0

    .line 121
    .local v10, "sqrt":I
    invoke-static {v7, v10, v10}, Lcom/taobao/ma/encode/MaGenerator;->handleGrayResult([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 128
    .end local v7    # "data":[B
    .end local v10    # "sqrt":I
    :goto_0
    monitor-exit v11

    return-object v0

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    const-string v0, "Failed to load libtbdecode.so"

    invoke-static {v0, v9}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v9    # "error":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v8

    .line 126
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "Failed to load libtbdecode.so 2"

    invoke-static {v0, v8}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private static declared-synchronized __call_native_generateGen3code(Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "input"    # Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;

    .prologue
    .line 97
    const-class v23, Lcom/taobao/ma/encode/MaGenerator;

    monitor-enter v23

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->publicData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_data:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_width:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_height:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_channel:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_step:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrY:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrSize:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->gen3format:I

    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->domainIndex:C

    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->errorCorrectionLevel:C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->visual_level:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->version:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->type:I

    move/from16 v18, v0

    invoke-static/range {v4 .. v18}, Lcom/taobao/ma/encode/MaGenerator;->generateGen3Code(Ljava/lang/String;[BIIIIIIIICCIII)[B

    move-result-object v19

    .line 100
    .local v19, "data":[B
    move-object/from16 v0, v19

    array-length v4, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v22, v0

    .line 101
    .local v22, "sqrt":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_channel:I

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v4}, Lcom/taobao/ma/encode/MaGenerator;->handleResult([BIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 107
    .end local v19    # "data":[B
    .end local v22    # "sqrt":I
    :goto_0
    monitor-exit v23

    return-object v4

    .line 102
    :catch_0
    move-exception v21

    .line 103
    .local v21, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    const-string v4, "Failed to load libtbdecode.so"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .end local v21    # "error":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 104
    :catch_1
    move-exception v20

    .line 105
    .local v20, "e":Ljava/lang/Exception;
    const-string v4, "Failed to load libtbdecode.so 2"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v23

    throw v4
.end method

.method private static declared-synchronized __call_native_generateLogoBWcode(Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "input"    # Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;

    .prologue
    .line 69
    const-class v17, Lcom/taobao/ma/encode/MaGenerator;

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->publicData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->margin:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->qrSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->version:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoData:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoChannel:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoSize:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoY:I

    invoke-static/range {v2 .. v12}, Lcom/taobao/ma/encode/MaGenerator;->generateLogoQRCode(Ljava/lang/String;III[BIIIIII)[B

    move-result-object v13

    .line 72
    .local v13, "data":[B
    array-length v2, v13

    int-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v16, v0

    .line 73
    .local v16, "sqrt":I
    const/4 v2, 0x3

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-static {v13, v0, v1, v2}, Lcom/taobao/ma/encode/MaGenerator;->handleResult([BIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 79
    .end local v13    # "data":[B
    .end local v16    # "sqrt":I
    :goto_0
    monitor-exit v17

    return-object v2

    .line 74
    :catch_0
    move-exception v15

    .line 75
    .local v15, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    const-string v2, "Failed to load libtbdecode.so"

    invoke-static {v2, v15}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v15    # "error":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v14

    .line 77
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "Failed to load libtbdecode.so 2"

    invoke-static {v2, v14}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 69
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public static facade(Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "inputParameters"    # Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v3, "masdk209"

    const-string v4, "facade"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    const-string v3, "masdk209"

    iget-object v4, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorMsg:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    .local v0, "encodeWhat":I
    :cond_0
    :goto_0
    return-object v2

    .line 43
    .end local v0    # "encodeWhat":I
    .restart local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->type:I

    .line 44
    .restart local v0    # "encodeWhat":I
    if-nez v0, :cond_2

    .line 45
    const-string v3, "masdk209"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWhat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    check-cast p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;

    .end local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    invoke-static {p0}, Lcom/taobao/ma/encode/MaGenerator;->__call_native_generateBWQRcode(Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 48
    .restart local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    :cond_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 51
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 52
    const-string v3, "masdk209"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeWhat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    check-cast p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;

    .end local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    invoke-static {p0}, Lcom/taobao/ma/encode/MaGenerator;->__call_native_generateGen3code(Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 54
    .restart local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 55
    check-cast p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;

    .end local p0    # "inputParameters":Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
    invoke-static {p0}, Lcom/taobao/ma/encode/MaGenerator;->__call_native_generateLogoBWcode(Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "Masdk_exception_log"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native generateBWQRCode(Ljava/lang/String;Ljava/lang/String;IIIIC)[B
.end method

.method private static native generateGen3Code(Ljava/lang/String;[BIIIIIIIICCIII)[B
.end method

.method private static native generateLogoQRCode(Ljava/lang/String;III[BIIIIII)[B
.end method

.method private static handleGrayResult([BII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "resultData"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    if-eqz p0, :cond_1

    .line 135
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "resultBitm":Landroid/graphics/Bitmap;
    mul-int v3, p1, p2

    new-array v1, v3, [I

    .line 138
    .local v1, "resultPixels":[I
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    array-length v3, p0

    if-ge v9, v3, :cond_0

    .line 139
    const/high16 v8, -0x1000000

    .line 140
    .local v8, "argb":I
    aget-byte v3, p0, v9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v8, v3

    .line 141
    aget-byte v3, p0, v9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v8, v3

    .line 142
    aget-byte v3, p0, v9

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v8, v3

    .line 143
    aput v8, v1, v10

    .line 138
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v8    # "argb":I
    :cond_0
    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 146
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 149
    .end local v0    # "resultBitm":Landroid/graphics/Bitmap;
    .end local v1    # "resultPixels":[I
    .end local v9    # "i":I
    .end local v10    # "index":I
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

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

    .line 154
    if-eqz p0, :cond_2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle result not null , channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 156
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "resultBitm":Landroid/graphics/Bitmap;
    mul-int v3, p1, p2

    new-array v1, v3, [I

    .line 159
    .local v1, "resultPixels":[I
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    array-length v3, p0

    if-ge v9, v3, :cond_1

    .line 160
    const/4 v3, 0x4

    if-ne p3, v3, :cond_0

    add-int/lit8 v3, v9, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v8, v3, 0x18

    .line 162
    .local v8, "argb":I
    :goto_1
    aget-byte v3, p0, v9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v8, v3

    .line 163
    add-int/lit8 v3, v9, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v8, v3

    .line 164
    add-int/lit8 v3, v9, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v8, v3

    .line 166
    aput v8, v1, v10

    .line 159
    add-int/2addr v9, p3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 160
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

    .line 169
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 170
    const-string v2, "before return result"

    invoke-static {v2}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 174
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
