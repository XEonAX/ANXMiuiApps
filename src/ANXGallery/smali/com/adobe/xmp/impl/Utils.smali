.class public Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    .line 35
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 274
    const/4 v2, 0x1

    .line 275
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 276
    .local v0, "delimCnt":I
    const/4 v1, 0x0

    .line 278
    .local v1, "delimPos":I
    if-nez p0, :cond_0

    .line 293
    :goto_0
    return v4

    .line 283
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 285
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 288
    if-eqz v2, :cond_3

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v5, 0x12

    if-eq v1, v5, :cond_1

    const/16 v5, 0x17

    if-ne v1, v5, :cond_3

    :cond_1
    move v2, v3

    .line 283
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 288
    goto :goto_2

    .line 293
    :cond_4
    if-eqz v2, :cond_5

    const/4 v5, 0x4

    if-ne v5, v0, :cond_5

    const/16 v5, 0x24

    if-ne v5, v1, :cond_5

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method private static initCharTables()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 486
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 488
    const/4 v0, 0x0

    .local v0, "ch":C
    :goto_0
    sget-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 490
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3

    :cond_0
    if-gt v6, v0, :cond_1

    if-le v0, v7, :cond_3

    :cond_1
    if-eq v0, v5, :cond_3

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc0

    if-gt v1, v0, :cond_2

    const/16 v1, 0xd6

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_9

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_9

    :cond_3
    move v1, v2

    :goto_1
    aput-boolean v1, v4, v0

    .line 498
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    const/16 v1, 0x61

    if-gt v1, v0, :cond_4

    const/16 v1, 0x7a

    if-le v0, v1, :cond_8

    :cond_4
    if-gt v6, v0, :cond_5

    if-le v0, v7, :cond_8

    :cond_5
    const/16 v1, 0x30

    if-gt v1, v0, :cond_6

    const/16 v1, 0x39

    if-le v0, v1, :cond_8

    :cond_6
    if-eq v0, v5, :cond_8

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc0

    if-gt v1, v0, :cond_7

    const/16 v1, 0xd6

    if-le v0, v1, :cond_8

    :cond_7
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_a

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_a

    :cond_8
    move v1, v2

    :goto_2
    aput-boolean v1, v4, v0

    .line 488
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    :cond_9
    move v1, v3

    .line 490
    goto :goto_1

    :cond_a
    move v1, v3

    .line 498
    goto :goto_2

    .line 510
    :cond_b
    return-void
.end method

.method static isControlChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 353
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 476
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNameStartChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 459
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 312
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x3a

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v3, "x-default"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 70
    .restart local p0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    .line 71
    .local v2, "subTag":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 88
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_2
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "selector"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v6, 0x3d

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 125
    .local v1, "eq":I
    const/4 v3, 0x1

    .line 126
    .local v3, "pos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_0

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 130
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    .line 134
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 135
    .local v4, "quote":C
    add-int/lit8 v3, v3, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x2

    .line 137
    .local v0, "end":I
    new-instance v5, Ljava/lang/StringBuffer;

    sub-int v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v5, "value":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_2

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_1

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    return-object v6
.end method
