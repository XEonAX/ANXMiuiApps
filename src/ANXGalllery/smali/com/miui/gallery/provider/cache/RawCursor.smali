.class public Lcom/miui/gallery/provider/cache/RawCursor;
.super Landroid/database/AbstractCursor;
.source "RawCursor.java"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/provider/cache/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexes:[I


# direct methods
.method public constructor <init>(Ljava/util/List;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V
    .locals 1
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "mapper"    # Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/provider/cache/CacheItem;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "contents":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/provider/cache/CacheItem;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mColumns:[Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mColumns:[Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/miui/gallery/provider/cache/RawCursor;->buildIndex([Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    .line 16
    return-void
.end method

.method private static buildIndex([Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)[I
    .locals 3
    .param p0, "columns"    # [Ljava/lang/String;
    .param p1, "mapper"    # Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    .prologue
    .line 111
    array-length v2, p0

    new-array v1, v2, [I

    .line 112
    .local v1, "indexes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 113
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [B

    goto :goto_0

    .line 127
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a blob"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mColumns:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 96
    const-wide/16 v2, 0x0

    .line 100
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-wide v2

    .line 97
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 98
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 100
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 81
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 87
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 84
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 87
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "column"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 55
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v3, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v3, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v3, v3, p1

    invoke-interface {v1, v3, v2}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move v1, v2

    .line 61
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 58
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 61
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 68
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 70
    const-wide/16 v2, 0x0

    .line 74
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-wide v2

    .line 71
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 74
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 4
    .param p1, "column"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v3, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v3, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v3, v3, p1

    invoke-interface {v1, v3, v2}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move v1, v2

    .line 48
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 45
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 48
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 31
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/provider/cache/CacheItem;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 3
    .param p1, "column"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/RawCursor;->checkPosition()V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mContents:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mPos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/RawCursor;->mIndexes:[I

    aget v2, v2, p1

    invoke-interface {v0, v2, v1}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
