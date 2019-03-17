.class Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
.super Ljava/lang/Object;
.source "BatchCursorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchOperationData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field keyItemDataMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<TT;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;",
            ">;"
        }
    .end annotation
.end field

.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TT;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keys:[Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keys:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    .line 207
    return-void
.end method


# virtual methods
.method copyResultsTo([J)V
    .locals 5
    .param p1, "results"    # [J

    .prologue
    .line 240
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect results length to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 246
    .local v1, "item":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-nez v1, :cond_1

    const-wide/16 v2, -0x66

    :goto_1
    aput-wide v2, p1, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget-wide v2, v1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    goto :goto_1

    .line 248
    .end local v1    # "item":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    :cond_2
    return-void
.end method

.method fillResult(J)V
    .locals 1
    .param p1, "result"    # J

    .prologue
    .line 223
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->fillResult(JZ)V

    .line 224
    return-void
.end method

.method fillResult(JZ)V
    .locals 7
    .param p1, "result"    # J
    .param p3, "overrideErrorResult"    # Z

    .prologue
    .line 214
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 215
    .local v0, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-nez p3, :cond_1

    iget-wide v2, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 216
    :cond_1
    iput-wide p1, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    goto :goto_0

    .line 219
    .end local v0    # "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    :cond_2
    return-void
.end method

.method isAllInvalid()Z
    .locals 8

    .prologue
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TT;>;"
    const/4 v1, 0x1

    .line 227
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 232
    .local v0, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 233
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method release()V
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    .line 253
    return-void
.end method
