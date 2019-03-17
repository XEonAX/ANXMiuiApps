.class public Lcom/nexstreaming/app/common/util/c;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, -0x1000000

    const/16 v4, 0x10

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 16
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 17
    const-wide/16 v2, 0xf

    and-long/2addr v2, v0

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    const-wide/16 v4, 0xf0

    and-long/2addr v4, v0

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0xf00

    and-long/2addr v0, v4

    const/16 v4, 0xc

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    or-int v1, v0, v7

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 19
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    or-int v1, v0, v7

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 21
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 22
    shr-long v2, v0, v6

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    long-to-int v1, v0

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 30
    const/4 v0, 0x2

    move v2, v0

    move v3, v1

    move v0, v1

    .line 31
    :goto_1
    array-length v4, v5

    if-ge v0, v4, :cond_8

    .line 32
    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_4

    .line 31
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 36
    const/16 v6, 0xff

    if-le v4, v6, :cond_5

    .line 37
    const/16 v4, 0xff

    .line 38
    :cond_5
    if-gez v4, :cond_6

    move v4, v1

    .line 41
    :cond_6
    if-ltz v2, :cond_7

    .line 42
    mul-int/lit8 v6, v2, 0x8

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    .line 43
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 45
    :cond_7
    shl-int/lit8 v0, v4, 0x18

    or-int/2addr v3, v0

    :cond_8
    move v1, v3

    .line 51
    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 6
    const-string v0, "#%08X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    ushr-int/lit8 v3, p0, 0x18

    shl-int/lit8 v4, p0, 0x8

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
