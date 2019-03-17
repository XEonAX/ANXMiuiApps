.class Lcom/miui/gallery/provider/cache/MemoryCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "MemoryCursor.java"


# instance fields
.field private mColumnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mName:Ljava/lang/String;

.field private mQuery:Lcom/miui/gallery/provider/cache/ResultSet;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cache/ResultSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Lcom/miui/gallery/provider/cache/ResultSet;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/ResultSet;->getCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/ResultSet;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mColumns:[Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private doClearOrCreateWindow(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    goto :goto_0
.end method

.method private fillWindow(I)V
    .locals 2
    .param p1, "startPos"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/cache/MemoryCursor;->doClearOrCreateWindow(Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    invoke-interface {v1}, Lcom/miui/gallery/provider/cache/ResultSet;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-interface {v0, v1}, Lcom/miui/gallery/provider/cache/ResultSet;->fillWindow(Landroid/database/CursorWindow;)I

    .line 57
    iget v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/ResultSet;->getCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mQuery:Lcom/miui/gallery/provider/cache/ResultSet;

    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/ResultSet;->close()V

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MemoryCursor;->close()V

    .line 123
    const-string v0, ".provider.cache.MemoryCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which has not been deactived or closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mColumnMap:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mColumns:[Ljava/lang/String;

    .line 69
    .local v0, "columns":[Ljava/lang/String;
    array-length v1, v0

    .line 70
    .local v1, "count":I
    new-instance v3, Ljava/util/HashMap;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 71
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 72
    aget-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iput-object v3, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mColumnMap:Ljava/util/Map;

    .line 77
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mColumnMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 78
    .local v2, "i":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/cache/MemoryCursor;->fillWindow(I)V

    .line 33
    :cond_0
    iget v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I

    return v0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    .line 44
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 45
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/gallery/provider/cache/MemoryCursor;->fillWindow(I)V

    .line 47
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cache/MemoryCursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return v1

    .line 95
    :cond_0
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->clear()V

    .line 99
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mPos:I

    .line 100
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, ".provider.cache.MemoryCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requery() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/provider/cache/MemoryCursor;->mCount:I

    .line 115
    return-void
.end method
