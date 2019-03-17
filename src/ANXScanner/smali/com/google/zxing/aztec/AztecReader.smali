.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 17
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v9, 0x0

    .line 60
    .local v9, "notFoundException":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 61
    .local v8, "formatException":Lcom/google/zxing/FormatException;
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v14

    invoke-direct {v3, v14}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 62
    .local v3, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/4 v11, 0x0

    .line 63
    .local v11, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v2, 0x0

    .line 65
    .local v2, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v3, v14}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v4

    .line 66
    .local v4, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 67
    new-instance v14, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v14}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v14, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 73
    .end local v4    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :goto_0
    if-nez v2, :cond_0

    .line 75
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v3, v14}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v4

    .line 76
    .restart local v4    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 77
    new-instance v14, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v14}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v14, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 99
    .end local v4    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 100
    sget-object v14, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/ResultPointCallback;

    .line 101
    .local v13, "rpcb":Lcom/google/zxing/ResultPointCallback;
    if-eqz v13, :cond_1

    .line 102
    array-length v15, v11

    const/4 v14, 0x0

    :goto_2
    if-lt v14, v15, :cond_6

    .line 108
    .end local v13    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_1
    new-instance v12, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v15

    sget-object v16, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    invoke-direct {v12, v14, v15, v11, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 110
    .local v12, "result":Lcom/google/zxing/Result;
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v1, :cond_2

    .line 112
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v12, v14, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "ecLevel":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 116
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v12, v14, v7}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 119
    :cond_3
    return-object v12

    .line 68
    .end local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "ecLevel":Ljava/lang/String;
    .end local v12    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v5

    .line 69
    .local v5, "e":Lcom/google/zxing/NotFoundException;
    move-object v9, v5

    goto :goto_0

    .line 70
    .end local v5    # "e":Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v5

    .line 71
    .local v5, "e":Lcom/google/zxing/FormatException;
    move-object v8, v5

    goto :goto_0

    .line 78
    .end local v5    # "e":Lcom/google/zxing/FormatException;
    :catch_2
    move-exception v5

    .line 79
    .local v5, "e":Ljava/lang/Exception;
    if-eqz v9, :cond_4

    .line 81
    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 82
    :catch_3
    move-exception v6

    .line 84
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .end local v6    # "e1":Ljava/lang/Exception;
    :cond_4
    if-eqz v8, :cond_5

    .line 88
    throw v8

    .line 91
    :cond_5
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 92
    :catch_4
    move-exception v6

    .line 94
    .restart local v6    # "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/lang/Exception;
    .restart local v13    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_6
    aget-object v10, v11, v14

    .line 103
    .local v10, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v13, v10}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 102
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
