.class public Lcom/miui/gallery/util/SyncSortUtil;
.super Ljava/lang/Object;
.source "SyncSortUtil.java"


# direct methods
.method private static partition([I[JII)I
    .locals 6
    .param p0, "targetArray"    # [I
    .param p1, "compareArray"    # [J
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .prologue
    .line 60
    aget-wide v0, p1, p2

    .line 61
    .local v0, "key":J
    aget v2, p0, p2

    .line 62
    .local v2, "targetKey":I
    :goto_0
    if-ge p2, p3, :cond_2

    .line 63
    :goto_1
    aget-wide v4, p1, p3

    cmp-long v3, v4, v0

    if-ltz v3, :cond_0

    if-le p3, p2, :cond_0

    .line 64
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 66
    :cond_0
    aget-wide v4, p1, p3

    aput-wide v4, p1, p2

    .line 67
    aget v3, p0, p3

    aput v3, p0, p2

    .line 68
    :goto_2
    aget-wide v4, p1, p2

    cmp-long v3, v4, v0

    if-gtz v3, :cond_1

    if-le p3, p2, :cond_1

    .line 69
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 71
    :cond_1
    aget-wide v4, p1, p2

    aput-wide v4, p1, p3

    .line 72
    aget v3, p0, p2

    aput v3, p0, p3

    goto :goto_0

    .line 74
    :cond_2
    aput-wide v0, p1, p3

    .line 75
    aput v2, p0, p3

    .line 76
    return p3
.end method

.method private static partition([J[JII)I
    .locals 6
    .param p0, "targetArray"    # [J
    .param p1, "compareArray"    # [J
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .prologue
    .line 22
    aget-wide v0, p1, p2

    .line 23
    .local v0, "key":J
    aget-wide v2, p0, p2

    .line 24
    .local v2, "targetKey":J
    :goto_0
    if-ge p2, p3, :cond_2

    .line 25
    :goto_1
    aget-wide v4, p1, p3

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    if-le p3, p2, :cond_0

    .line 26
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 28
    :cond_0
    aget-wide v4, p1, p3

    aput-wide v4, p1, p2

    .line 29
    aget-wide v4, p0, p3

    aput-wide v4, p0, p2

    .line 31
    :goto_2
    aget-wide v4, p1, p2

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    if-le p3, p2, :cond_1

    .line 32
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 34
    :cond_1
    aget-wide v4, p1, p2

    aput-wide v4, p1, p3

    .line 35
    aget-wide v4, p0, p2

    aput-wide v4, p0, p3

    goto :goto_0

    .line 37
    :cond_2
    aput-wide v0, p1, p3

    .line 38
    aput-wide v2, p0, p3

    .line 39
    return p3
.end method

.method public static sort([I[JII)V
    .locals 2
    .param p0, "targetArray"    # [I
    .param p1, "compareArray"    # [J
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .prologue
    .line 51
    if-lt p2, p3, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/util/SyncSortUtil;->partition([I[JII)I

    move-result v0

    .line 55
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, p2, v1}, Lcom/miui/gallery/util/SyncSortUtil;->sort([I[JII)V

    .line 56
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v1, p3}, Lcom/miui/gallery/util/SyncSortUtil;->sort([I[JII)V

    goto :goto_0
.end method

.method public static sort([J[JII)V
    .locals 2
    .param p0, "targetArray"    # [J
    .param p1, "compareArray"    # [J
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .prologue
    .line 13
    if-lt p2, p3, :cond_0

    .line 19
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/util/SyncSortUtil;->partition([J[JII)I

    move-result v0

    .line 17
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, p2, v1}, Lcom/miui/gallery/util/SyncSortUtil;->sort([J[JII)V

    .line 18
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v1, p3}, Lcom/miui/gallery/util/SyncSortUtil;->sort([J[JII)V

    goto :goto_0
.end method
