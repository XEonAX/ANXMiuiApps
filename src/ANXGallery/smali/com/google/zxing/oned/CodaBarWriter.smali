.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 29
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 30
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    return-void

    .line 28
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 29
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    .line 30
    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 18
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 36
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Codabar should start/end with start/stop symbols"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 39
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 40
    .local v6, "firstChar":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 42
    .local v9, "lastChar":C
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 43
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 41
    const/4 v14, 0x1

    .line 45
    .local v14, "startsEndsNormal":Z
    :goto_0
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 46
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 44
    const/4 v13, 0x1

    .line 47
    .local v13, "startsEndsAlt":Z
    :goto_1
    if-nez v14, :cond_3

    if-nez v13, :cond_3

    .line 48
    new-instance v15, Ljava/lang/IllegalArgumentException;

    .line 49
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Codabar should start/end with "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 50
    const-string v17, ", or start/end with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 49
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 48
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 41
    .end local v13    # "startsEndsAlt":Z
    .end local v14    # "startsEndsNormal":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 44
    .restart local v14    # "startsEndsNormal":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 54
    .restart local v13    # "startsEndsAlt":Z
    :cond_3
    const/16 v12, 0x14

    .line 55
    .local v12, "resultLength":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-lt v7, v15, :cond_4

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v12, v15

    .line 67
    new-array v11, v12, [Z

    .line 68
    .local v11, "result":[Z
    const/4 v10, 0x0

    .line 69
    .local v10, "position":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v8, v15, :cond_8

    .line 115
    return-object v11

    .line 56
    .end local v8    # "index":I
    .end local v10    # "position":I
    .end local v11    # "result":[Z
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2d

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x24

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 57
    :cond_5
    add-int/lit8 v12, v12, 0x9

    .line 55
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 58
    :cond_6
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 59
    add-int/lit8 v12, v12, 0xa

    .line 60
    goto :goto_4

    .line 61
    :cond_7
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Cannot encode : \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x27

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 70
    .restart local v8    # "index":I
    .restart local v10    # "position":I
    .restart local v11    # "result":[Z
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 71
    .local v2, "c":C
    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_a

    .line 73
    :cond_9
    sparse-switch v2, :sswitch_data_0

    .line 88
    :cond_a
    :goto_5
    const/4 v3, 0x0

    .line 89
    .local v3, "code":I
    const/4 v7, 0x0

    :goto_6
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v15, v15

    if-lt v7, v15, :cond_c

    .line 96
    :goto_7
    const/4 v4, 0x1

    .line 97
    .local v4, "color":Z
    const/4 v5, 0x0

    .line 98
    .local v5, "counter":I
    const/4 v1, 0x0

    .line 99
    .local v1, "bit":I
    :goto_8
    const/4 v15, 0x7

    if-lt v1, v15, :cond_e

    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_b

    .line 111
    const/4 v15, 0x0

    aput-boolean v15, v11, v10

    .line 112
    add-int/lit8 v10, v10, 0x1

    .line 69
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 75
    .end local v1    # "bit":I
    .end local v3    # "code":I
    .end local v4    # "color":Z
    .end local v5    # "counter":I
    :sswitch_0
    const/16 v2, 0x41

    .line 76
    goto :goto_5

    .line 78
    :sswitch_1
    const/16 v2, 0x42

    .line 79
    goto :goto_5

    .line 81
    :sswitch_2
    const/16 v2, 0x43

    .line 82
    goto :goto_5

    .line 84
    :sswitch_3
    const/16 v2, 0x44

    goto :goto_5

    .line 91
    .restart local v3    # "code":I
    :cond_c
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v15, v15, v7

    if-ne v2, v15, :cond_d

    .line 92
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v3, v15, v7

    .line 93
    goto :goto_7

    .line 89
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 100
    .restart local v1    # "bit":I
    .restart local v4    # "color":Z
    .restart local v5    # "counter":I
    :cond_e
    aput-boolean v4, v11, v10

    .line 101
    add-int/lit8 v10, v10, 0x1

    .line 102
    rsub-int/lit8 v15, v1, 0x6

    shr-int v15, v3, v15

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    if-ne v5, v15, :cond_11

    .line 103
    :cond_f
    if-eqz v4, :cond_10

    const/4 v4, 0x0

    .line 104
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 105
    const/4 v5, 0x0

    .line 106
    goto :goto_8

    .line 103
    :cond_10
    const/4 v4, 0x1

    goto :goto_9

    .line 107
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x45 -> :sswitch_3
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
