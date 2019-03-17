.class public final Lcom/taobao/ma/util/StringEncodeUtils;
.super Ljava/lang/Object;
.source "StringEncodeUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/ma/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 28
    const-string v0, "SJIS"

    sget-object v1, Lcom/taobao/ma/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/taobao/ma/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taobao/ma/util/StringEncodeUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getStringEncode([B)Ljava/lang/String;
    .locals 3
    .param p0, "needGuessEncodeData"    # [B

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, "encodeString":Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    if-lez v2, :cond_0

    .line 218
    invoke-static {p0}, Lcom/taobao/ma/util/StringEncodeUtils;->guessEncoding([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    const-string v1, ""

    .line 226
    :cond_1
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static guessEncoding([B)Ljava/lang/String;
    .locals 24
    .param p0, "bytes"    # [B

    .prologue
    .line 42
    move-object/from16 v0, p0

    array-length v8, v0

    .line 43
    .local v8, "length":I
    const/4 v3, 0x1

    .line 44
    .local v3, "canBeISO88591":Z
    const/4 v4, 0x1

    .line 45
    .local v4, "canBeShiftJIS":Z
    const/4 v5, 0x1

    .line 46
    .local v5, "canBeUTF8":Z
    const/4 v2, 0x1

    .line 47
    .local v2, "canBeGBK":Z
    const/16 v18, 0x0

    .line 49
    .local v18, "utf8BytesLeft":I
    const/4 v15, 0x0

    .line 50
    .local v15, "utf2BytesChars":I
    const/16 v16, 0x0

    .line 51
    .local v16, "utf3BytesChars":I
    const/16 v17, 0x0

    .line 52
    .local v17, "utf4BytesChars":I
    const/4 v9, 0x0

    .line 54
    .local v9, "sjisBytesLeft":I
    const/4 v12, 0x0

    .line 56
    .local v12, "sjisKatakanaChars":I
    const/4 v11, 0x0

    .line 57
    .local v11, "sjisCurKatakanaWordLength":I
    const/4 v10, 0x0

    .line 58
    .local v10, "sjisCurDoubleBytesWordLength":I
    const/4 v14, 0x0

    .line 59
    .local v14, "sjisMaxKatakanaWordLength":I
    const/4 v13, 0x0

    .line 62
    .local v13, "sjisMaxDoubleBytesWordLength":I
    const/4 v7, 0x0

    .line 64
    .local v7, "isoHighOther":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    const/16 v22, 0x0

    aget-byte v22, p0, v22

    const/16 v23, -0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v22, 0x1

    aget-byte v22, p0, v22

    const/16 v23, -0x45

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v22, 0x2

    aget-byte v22, p0, v22

    const/16 v23, -0x41

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    .line 67
    .local v19, "utf8bom":Z
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_15

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v5, :cond_15

    .line 69
    :cond_0
    aget-byte v22, p0, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 72
    .local v20, "value":I
    if-eqz v5, :cond_1

    .line 73
    if-lez v18, :cond_8

    .line 74
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 75
    const/4 v5, 0x0

    .line 105
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 107
    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 109
    const/16 v22, 0xb0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    const/16 v22, 0xf7

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    if-ge v0, v8, :cond_2

    .line 111
    add-int/lit8 v22, v6, 0x1

    aget-byte v22, p0, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 112
    .local v21, "value2":I
    const/16 v22, 0xa0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    const/16 v22, 0xf7

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    .line 113
    const/4 v2, 0x1

    .line 120
    .end local v21    # "value2":I
    :cond_2
    if-eqz v3, :cond_3

    .line 121
    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_d

    const/16 v22, 0xa0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 122
    const/4 v3, 0x0

    .line 135
    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    .line 136
    if-lez v9, :cond_10

    .line 137
    const/16 v22, 0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0xfc

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 138
    :cond_4
    const/4 v4, 0x0

    .line 67
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 64
    .end local v6    # "i":I
    .end local v19    # "utf8bom":Z
    .end local v20    # "value":I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 77
    .restart local v6    # "i":I
    .restart local v19    # "utf8bom":Z
    .restart local v20    # "value":I
    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 79
    :cond_8
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 80
    and-int/lit8 v22, v20, 0x40

    if-nez v22, :cond_9

    .line 81
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 83
    :cond_9
    add-int/lit8 v18, v18, 0x1

    .line 84
    and-int/lit8 v22, v20, 0x20

    if-nez v22, :cond_a

    .line 85
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 87
    :cond_a
    add-int/lit8 v18, v18, 0x1

    .line 88
    and-int/lit8 v22, v20, 0x10

    if-nez v22, :cond_b

    .line 89
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 91
    :cond_b
    add-int/lit8 v18, v18, 0x1

    .line 92
    and-int/lit8 v22, v20, 0x8

    if-nez v22, :cond_c

    .line 93
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 95
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 123
    :cond_d
    const/16 v22, 0x9f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 124
    const/16 v22, 0xc0

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    const/16 v22, 0xd7

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    const/16 v22, 0xf7

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 125
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 140
    :cond_f
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 142
    :cond_10
    const/16 v22, 0x80

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    const/16 v22, 0xa0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    const/16 v22, 0xef

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    .line 143
    :cond_11
    const/4 v4, 0x0

    goto :goto_4

    .line 144
    :cond_12
    const/16 v22, 0xa0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_13

    const/16 v22, 0xe0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 145
    add-int/lit8 v12, v12, 0x1

    .line 146
    const/4 v10, 0x0

    .line 147
    add-int/lit8 v11, v11, 0x1

    .line 148
    if-le v11, v14, :cond_5

    .line 149
    move v14, v11

    goto/16 :goto_4

    .line 151
    :cond_13
    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    .line 152
    add-int/lit8 v9, v9, 0x1

    .line 154
    const/4 v11, 0x0

    .line 155
    add-int/lit8 v10, v10, 0x1

    .line 156
    if-le v10, v13, :cond_5

    .line 157
    move v13, v10

    goto/16 :goto_4

    .line 161
    :cond_14
    const/4 v11, 0x0

    .line 162
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 167
    .end local v20    # "value":I
    :cond_15
    if-eqz v5, :cond_16

    if-lez v18, :cond_16

    .line 168
    const/4 v5, 0x0

    .line 170
    :cond_16
    if-eqz v4, :cond_17

    if-lez v9, :cond_17

    .line 171
    const/4 v4, 0x0

    .line 176
    :cond_17
    if-eqz v5, :cond_19

    if-nez v19, :cond_18

    add-int v22, v15, v16

    add-int v22, v22, v17

    if-lez v22, :cond_19

    .line 177
    :cond_18
    const-string v22, "UTF8"

    .line 210
    :goto_5
    return-object v22

    .line 181
    :cond_19
    if-eqz v4, :cond_1b

    sget-boolean v22, Lcom/taobao/ma/util/StringEncodeUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v22, :cond_1a

    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v14, v0, :cond_1a

    const/16 v22, 0x3

    move/from16 v0, v22

    if-lt v13, v0, :cond_1b

    .line 182
    :cond_1a
    const-string v22, "SJIS"

    goto :goto_5

    .line 184
    :cond_1b
    if-eqz v2, :cond_1c

    .line 185
    const-string v22, "GB2312"

    goto :goto_5

    .line 194
    :cond_1c
    if-eqz v3, :cond_20

    if-eqz v4, :cond_20

    .line 195
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_1d

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v12, v0, :cond_1e

    :cond_1d
    mul-int/lit8 v22, v7, 0xa

    move/from16 v0, v22

    if-lt v0, v8, :cond_1f

    :cond_1e
    const-string v22, "SJIS"

    goto :goto_5

    :cond_1f
    const-string v22, "ISO8859_1"

    goto :goto_5

    .line 200
    :cond_20
    if-eqz v3, :cond_21

    .line 201
    const-string v22, "ISO8859_1"

    goto :goto_5

    .line 203
    :cond_21
    if-eqz v4, :cond_22

    .line 204
    const-string v22, "SJIS"

    goto :goto_5

    .line 206
    :cond_22
    if-eqz v5, :cond_23

    .line 207
    const-string v22, "UTF8"

    goto :goto_5

    .line 210
    :cond_23
    sget-object v22, Lcom/taobao/ma/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto :goto_5
.end method
