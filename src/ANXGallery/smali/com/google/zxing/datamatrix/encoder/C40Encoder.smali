.class Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 3
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .param p3, "removed"    # Ljava/lang/StringBuilder;
    .param p4, "lastCharSize"    # I

    .prologue
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 73
    .local v1, "count":I
    sub-int v2, v1, p4

    invoke-virtual {p2, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v0

    .line 76
    .local v0, "c":C
    invoke-virtual {p0, v0, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p4

    .line 77
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 78
    return p4
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    .prologue
    .line 171
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 172
    .local v0, "c1":C
    add-int/lit8 v6, p1, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 173
    .local v1, "c2":C
    add-int/lit8 v6, p1, 0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 174
    .local v2, "c3":C
    mul-int/lit16 v6, v0, 0x640

    mul-int/lit8 v7, v1, 0x28

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    add-int/lit8 v5, v6, 0x1

    .line 175
    .local v5, "v":I
    div-int/lit16 v6, v5, 0x100

    int-to-char v3, v6

    .line 176
    .local v3, "cw1":C
    rem-int/lit16 v6, v5, 0x100

    int-to-char v4, v6

    .line 177
    .local v4, "cw2":C
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [C

    const/4 v8, 0x0

    aput-char v3, v7, v8

    const/4 v8, 0x1

    aput-char v4, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-static {p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 12
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-nez v9, :cond_2

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 68
    return-void

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v2

    .line 32
    .local v2, "c":C
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v5

    .line 36
    .local v5, "lastCharSize":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/lit8 v8, v9, 0x2

    .line 38
    .local v8, "unwritten":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int v4, v9, v8

    .line 39
    .local v4, "curCodewordCount":I
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v9

    sub-int v0, v9, v4

    .line 42
    .local v0, "available":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-nez v9, :cond_7

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v7, "removed":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 46
    const/4 v9, 0x2

    if-lt v0, v9, :cond_3

    const/4 v9, 0x2

    if-le v0, v9, :cond_4

    .line 47
    :cond_3
    invoke-direct {p0, p1, v1, v7, v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v5

    .line 51
    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 52
    const/4 v9, 0x3

    if-gt v5, v9, :cond_5

    const/4 v9, 0x1

    if-ne v0, v9, :cond_6

    :cond_5
    const/4 v9, 0x3

    .line 51
    if-le v5, v9, :cond_1

    .line 53
    :cond_6
    invoke-direct {p0, p1, v1, v7, v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v5

    goto :goto_1

    .line 58
    .end local v7    # "removed":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 59
    .local v3, "count":I
    rem-int/lit8 v9, v3, 0x3

    if-nez v9, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 61
    .local v6, "newMode":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v9

    if-eq v6, v9, :cond_0

    .line 62
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto/16 :goto_0
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 4
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 131
    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    .line 132
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    :goto_0
    return v0

    .line 134
    :cond_0
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1

    .line 135
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2

    .line 138
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_2
    if-ltz p1, :cond_3

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_3

    .line 141
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const/16 v2, 0x21

    if-lt p1, v2, :cond_4

    const/16 v2, 0x2f

    if-gt p1, v2, :cond_4

    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v2, p1, -0x21

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_4
    const/16 v2, 0x3a

    if-lt p1, v2, :cond_5

    const/16 v2, 0x40

    if-gt p1, v2, :cond_5

    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v2, p1, -0x3a

    add-int/lit8 v2, v2, 0xf

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    const/16 v2, 0x5b

    if-lt p1, v2, :cond_6

    const/16 v2, 0x5f

    if-gt p1, v2, :cond_6

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v2, p1, -0x5b

    add-int/lit8 v2, v2, 0x16

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_6
    const/16 v2, 0x60

    if-lt p1, v2, :cond_7

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_7

    .line 157
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v2, p1, -0x60

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 159
    goto/16 :goto_0

    .line 160
    :cond_7
    const/16 v1, 0x80

    if-lt p1, v1, :cond_8

    .line 161
    const-string v1, "\u0001\u001e"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x2

    .line 163
    .local v0, "len":I
    add-int/lit8 v1, p1, -0x80

    int-to-char v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    goto/16 :goto_0

    .line 166
    .end local v0    # "len":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xfe

    const/4 v5, 0x3

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v3, v4, 0x2

    .line 94
    .local v3, "unwritten":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v2, v4, 0x3

    .line 96
    .local v2, "rest":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int v1, v4, v3

    .line 97
    .local v1, "curCodewordCount":I
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 98
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    sub-int v0, v4, v1

    .line 100
    .local v0, "available":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 101
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 127
    :cond_0
    :goto_1
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 128
    return-void

    .line 103
    :cond_1
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 108
    :cond_2
    if-ne v0, v8, :cond_5

    if-ne v2, v8, :cond_5

    .line 109
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 112
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 116
    :cond_3
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_1

    .line 110
    :cond_4
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 117
    :cond_5
    if-nez v2, :cond_8

    .line 118
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v5, :cond_7

    .line 121
    if-gtz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    :cond_6
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_1

    .line 119
    :cond_7
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 125
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected case. Please report!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
