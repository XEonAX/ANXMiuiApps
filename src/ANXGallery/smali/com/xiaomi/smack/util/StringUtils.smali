.class public Lcom/xiaomi/smack/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final APOS_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->QUOTE_ENCODE:[C

    .line 39
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->APOS_ENCODE:[C

    .line 41
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->AMP_ENCODE:[C

    .line 43
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->LT_ENCODE:[C

    .line 45
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->GT_ENCODE:[C

    .line 220
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->randGen:Ljava/util/Random;

    .line 227
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/StringUtils;->numbersAndLetters:[C

    .line 227
    return-void
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 203
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3e

    .line 73
    if-nez p0, :cond_1

    .line 74
    const/4 p0, 0x0

    .line 132
    .end local p0    # "string":Ljava/lang/String;
    .local v1, "i":I
    .local v2, "input":[C
    .local v3, "last":I
    .local v4, "len":I
    .local v5, "out":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 77
    .end local v1    # "i":I
    .end local v2    # "input":[C
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/lang/StringBuilder;
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 78
    .restart local v1    # "i":I
    const/4 v3, 0x0

    .line 79
    .restart local v3    # "last":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 80
    .restart local v2    # "input":[C
    array-length v4, v2

    .line 81
    .restart local v4    # "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    int-to-double v6, v4

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .restart local v5    # "out":Ljava/lang/StringBuilder;
    :goto_1
    if-ge v1, v4, :cond_e

    .line 83
    aget-char v0, v2, v1

    .line 84
    .local v0, "ch":C
    if-le v0, v10, :cond_3

    .line 82
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_3
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_5

    .line 86
    if-le v1, v3, :cond_4

    .line 87
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 90
    sget-object v6, Lcom/xiaomi/smack/util/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 91
    :cond_5
    if-ne v0, v10, :cond_7

    .line 92
    if-le v1, v3, :cond_6

    .line 93
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 95
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 96
    sget-object v6, Lcom/xiaomi/smack/util/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    :cond_7
    const/16 v6, 0x26

    if-ne v0, v6, :cond_a

    .line 98
    if-le v1, v3, :cond_8

    .line 99
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 103
    :cond_8
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_9

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    .line 105
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    .line 106
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    .line 107
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_2

    .line 109
    :cond_9
    add-int/lit8 v3, v1, 0x1

    .line 110
    sget-object v6, Lcom/xiaomi/smack/util/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 112
    :cond_a
    const/16 v6, 0x22

    if-ne v0, v6, :cond_c

    .line 113
    if-le v1, v3, :cond_b

    .line 114
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 116
    :cond_b
    add-int/lit8 v3, v1, 0x1

    .line 117
    sget-object v6, Lcom/xiaomi/smack/util/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 118
    :cond_c
    const/16 v6, 0x27

    if-ne v0, v6, :cond_2

    .line 119
    if-le v1, v3, :cond_d

    .line 120
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 122
    :cond_d
    add-int/lit8 v3, v1, 0x1

    .line 123
    sget-object v6, Lcom/xiaomi/smack/util/StringUtils;->APOS_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 126
    .end local v0    # "ch":C
    :cond_e
    if-eqz v3, :cond_0

    .line 129
    if-le v1, v3, :cond_f

    .line 130
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 132
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 242
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 243
    const/4 v2, 0x0

    .line 250
    :goto_0
    return-object v2

    .line 246
    :cond_0
    new-array v1, p0, [C

    .line 247
    .local v1, "randBuffer":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 248
    sget-object v2, Lcom/xiaomi/smack/util/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lcom/xiaomi/smack/util/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p0, :cond_1

    .line 160
    const/4 p0, 0x0

    .line 183
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 162
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 165
    .local v1, "i":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 168
    .local v5, "string2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 169
    .local v3, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 170
    .local v4, "oLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 172
    add-int/2addr v1, v4

    .line 173
    move v2, v1

    .line 175
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 176
    sub-int v6, v1, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 177
    add-int/2addr v1, v4

    .line 178
    move v2, v1

    goto :goto_1

    .line 180
    :cond_2
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
