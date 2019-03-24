.class public Lmiui/text/ExtraTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GB:J = 0x3b9aca00L

.field private static final HEX_DIGITS:[C

.field public static final KB:J = 0x3e8L

.field public static final MB:J = 0xf4240L

.field private static final UNIT:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 7

    .line 145
    if-nez p0, :cond_0

    .line 146
    const-string p0, ""

    return-object p0

    .line 149
    :cond_0
    long-to-float p1, p1

    .line 150
    sget p2, Lcom/miui/internal/R$string;->size_byte:I

    .line 151
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-lez v1, :cond_1

    .line 152
    sget p2, Lcom/miui/internal/R$string;->size_kilo_byte:I

    .line 153
    div-float/2addr p1, v2

    .line 155
    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    .line 156
    sget p2, Lcom/miui/internal/R$string;->size_mega_byte:I

    .line 157
    div-float/2addr p1, v2

    .line 159
    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    .line 160
    sget p2, Lcom/miui/internal/R$string;->size_giga_byte:I

    .line 161
    div-float/2addr p1, v2

    .line 163
    :cond_3
    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    .line 164
    sget p2, Lcom/miui/internal/R$string;->size_tera_byte:I

    .line 165
    div-float/2addr p1, v2

    .line 167
    :cond_4
    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 168
    sget p2, Lcom/miui/internal/R$string;->size_peta_byte:I

    .line 169
    div-float/2addr p1, v2

    .line 173
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_6

    .line 174
    const-string p3, "%.2f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 175
    :cond_6
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 176
    if-eqz p3, :cond_7

    .line 177
    const-string p3, "%.1f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_7
    const-string p3, "%.2f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 181
    :cond_8
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a

    .line 182
    if-eqz p3, :cond_9

    .line 183
    const-string p3, "%.0f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_9
    const-string p3, "%.2f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_a
    const-string p3, "%.0f"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 192
    const/16 v0, 0x2e

    const/4 v3, 0x3

    const/16 v4, 0x30

    const/4 v5, 0x2

    if-le p3, v3, :cond_b

    add-int/lit8 v3, p3, -0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_b

    add-int/lit8 v6, p3, -0x2

    .line 193
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_b

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_b

    .line 194
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_b
    if-le p3, v5, :cond_c

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_c

    sub-int/2addr p3, v2

    .line 196
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v4, :cond_c

    .line 197
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_c
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/internal/R$string;->size_suffix:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 200
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {p3, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 199
    return-object p0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/text/ExtraTextUtils;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/text/ExtraTextUtils;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHexReadable(Ljava/lang/String;)[B
    .locals 11

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_7

    .line 94
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 95
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 98
    const/16 v4, 0x46

    const/16 v5, 0x66

    const/16 v6, 0x39

    const/16 v7, 0x41

    const/16 v8, 0x61

    const/16 v9, 0x30

    if-lt v3, v9, :cond_0

    if-gt v3, v6, :cond_0

    .line 99
    add-int/lit8 v3, v3, -0x30

    goto :goto_1

    .line 100
    :cond_0
    if-lt v3, v8, :cond_1

    if-gt v3, v5, :cond_1

    .line 101
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 102
    :cond_1
    if-lt v3, v7, :cond_5

    if-gt v3, v4, :cond_5

    .line 103
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    .line 107
    :goto_1
    shl-int/lit8 v3, v3, 0x4

    .line 109
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 110
    if-lt v10, v9, :cond_2

    if-gt v10, v6, :cond_2

    .line 111
    add-int/lit8 v10, v10, -0x30

    add-int/2addr v3, v10

    goto :goto_2

    .line 112
    :cond_2
    if-lt v10, v8, :cond_3

    if-gt v10, v5, :cond_3

    .line 113
    add-int/lit8 v10, v10, -0x61

    add-int/lit8 v10, v10, 0xa

    add-int/2addr v3, v10

    goto :goto_2

    .line 114
    :cond_3
    if-lt v10, v7, :cond_4

    if-gt v10, v4, :cond_4

    .line 115
    add-int/lit8 v10, v10, -0x41

    add-int/lit8 v10, v10, 0xa

    add-int/2addr v3, v10

    .line 120
    :goto_2
    shr-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 95
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s is not a readable string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s is not a readable string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_6
    return-object v1

    .line 91
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s is not a readable string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toHexReadable([B)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 75
    invoke-static {p0, v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([BLjava/lang/Appendable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 78
    return-object p0
.end method

.method public static toHexReadable([BLjava/lang/Appendable;)V
    .locals 5

    .line 46
    if-nez p0, :cond_0

    .line 47
    return-void

    .line 51
    :cond_0
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v2, p0, v1

    .line 52
    nop

    .line 53
    if-gez v2, :cond_1

    .line 54
    add-int/lit16 v2, v2, 0x100

    .line 57
    :cond_1
    shr-int/lit8 v3, v2, 0x4

    .line 58
    and-int/lit8 v2, v2, 0xf

    .line 59
    sget-object v4, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    aget-char v3, v4, v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v3

    sget-object v4, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    aget-char v2, v4, v2

    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_2
    nop

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Exception throw during when append"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
