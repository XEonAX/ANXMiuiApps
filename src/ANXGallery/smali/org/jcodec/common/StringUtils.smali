.class public Lorg/jcodec/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static splitC(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jcodec/common/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 v6, 0x0

    .line 45
    :goto_0
    return-object v6

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 21
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 22
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v5, 0x0

    .line 26
    .local v5, "start":I
    const/4 v4, 0x0

    .line 27
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 28
    .local v1, "lastMatch":Z
    :goto_1
    if-ge v0, v2, :cond_5

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 30
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 31
    :cond_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v1, 0x1

    .line 35
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 36
    goto :goto_1

    .line 38
    :cond_4
    const/4 v1, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 43
    :cond_6
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method
