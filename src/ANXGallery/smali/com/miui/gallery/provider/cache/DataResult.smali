.class Lcom/miui/gallery/provider/cache/DataResult;
.super Ljava/lang/Object;
.source "DataResult.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/ResultSet;


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
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;
    .param p3, "mapper"    # Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/provider/cache/CacheItem;",
            ">;",
            "Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "content":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/provider/cache/CacheItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/DataResult;->mContents:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/DataResult;->mColumns:[Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mColumns:[Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/miui/gallery/provider/cache/DataResult;->buildIndex([Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mIndexes:[I

    .line 21
    return-void
.end method

.method private static buildIndex([Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)[I
    .locals 3
    .param p0, "columns"    # [Ljava/lang/String;
    .param p1, "mapper"    # Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    .prologue
    .line 60
    array-length v2, p0

    new-array v1, v2, [I

    .line 61
    .local v1, "indexes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 62
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mContents:Ljava/util/List;

    .line 55
    iput-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mColumns:[Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mIndexes:[I

    .line 57
    return-void
.end method

.method public fillWindow(Landroid/database/CursorWindow;)I
    .locals 7
    .param p1, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/DataResult;->mContents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 27
    const-string v3, ".provider.cache.DataResult"

    const-string/jumbo v4, "window can not allocate a new row, break."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    const-string v3, ".provider.cache.DataResult"

    const-string/jumbo v4, "window[%s] filled: %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, p1, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    return v0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/DataResult;->mColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 31
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/DataResult;->mContents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/provider/cache/CacheItem;

    iget-object v4, p0, Lcom/miui/gallery/provider/cache/DataResult;->mIndexes:[I

    aget v4, v4, v2

    invoke-interface {v3, p1, v1, v2, v4}, Lcom/miui/gallery/provider/cache/CacheItem;->fillWindow(Landroid/database/CursorWindow;III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 32
    const-string v3, ".provider.cache.DataResult"

    const-string v4, "fill window[%s] failed: %s, %s"

    iget-object v5, p0, Lcom/miui/gallery/provider/cache/DataResult;->mContents:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/provider/cache/DataResult;->mColumns:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v3, v4, p1, v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 35
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/DataResult;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
