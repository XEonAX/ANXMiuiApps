.class public Lcom/miui/gallery/cloud/thread/CommandQueue;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/cloud/thread/Command;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLists:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "priorityCount"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    .line 51
    new-array v0, p1, [Ljava/util/LinkedList;

    check-cast v0, [Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    .line 52
    iput p2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMaxSize:I

    .line 53
    return-void
.end method

.method private needAdd(Lcom/miui/gallery/cloud/thread/Command;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z
    .locals 6
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    .local p1, "cmd":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    .local p4, "l":Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;, "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<TT;>;"
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/Command;

    .line 214
    .local v0, "old":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    if-nez v0, :cond_0

    .line 227
    :goto_0
    return v1

    .line 217
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v2

    invoke-interface {p1, p2, p3}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 218
    invoke-interface {v0}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v2

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 219
    invoke-interface {v0}, Lcom/miui/gallery/cloud/thread/Command;->needProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    :cond_1
    if-eqz p4, :cond_2

    .line 221
    invoke-interface {p4, v0}, Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;->onRemove(Lcom/miui/gallery/cloud/thread/Command;)V

    .line 223
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/thread/CommandQueue;->remove(Lcom/miui/gallery/cloud/thread/Command;)V

    goto :goto_0

    .line 227
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putInternal(Lcom/miui/gallery/cloud/thread/Command;ZJLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z
    .locals 5
    .param p2, "atFirst"    # Z
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZJ",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    .local p1, "cmd":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    .local p5, "l":Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;, "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<TT;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/miui/gallery/cloud/thread/CommandQueue;->needAdd(Lcom/miui/gallery/cloud/thread/Command;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const/4 v2, 0x0

    .line 209
    :goto_0
    return v2

    .line 187
    :cond_0
    if-eqz p5, :cond_1

    .line 188
    invoke-interface {p5, p1}, Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;->onAdd(Lcom/miui/gallery/cloud/thread/Command;)V

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v0

    .line 193
    .local v0, "p":I
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v0

    .line 197
    :cond_2
    if-eqz p2, :cond_4

    .line 198
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 200
    iget v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMaxSize:I

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/CommandQueue;->size()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMaxSize:I

    if-le v2, v3, :cond_3

    .line 201
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/thread/Command;

    .line 202
    .local v1, "removedCmd":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v1    # "removedCmd":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private remove(Lcom/miui/gallery/cloud/thread/Command;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    .local p1, "cmd":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    invoke-interface {p1}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v3

    aget-object v1, v2, v3

    .line 234
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public getMinDelay(J)J
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 126
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 127
    .local v2, "delay":J
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/Command;

    .line 128
    .local v0, "c":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v4

    .line 129
    .local v4, "thisDelay":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 130
    move-wide v2, v4

    goto :goto_0

    .line 134
    .end local v0    # "c":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    .end local v4    # "thisDelay":J
    :cond_1
    return-wide v2
.end method

.method public hasDelayedItem()Z
    .locals 8

    .prologue
    .line 138
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 139
    .local v2, "now":J
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/Command;

    .line 140
    .local v0, "c":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    invoke-interface {v0, v2, v3}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v4

    .line 141
    .local v4, "thisDelay":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 142
    const/4 v1, 0x1

    .line 146
    .end local v0    # "c":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    .end local v4    # "thisDelay":J
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public poll(Ljava/util/List;IJ)V
    .locals 11
    .param p2, "limit"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;IJ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v8, 0x0

    .line 84
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    array-length v6, v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_7

    .line 85
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    aget-object v5, v6, v3

    .line 86
    .local v5, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    .line 91
    .local v2, "first":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 92
    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_6

    .line 93
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/Command;

    .line 95
    .local v0, "c":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    const/4 v1, 0x0

    .line 96
    .local v1, "executable":Z
    if-nez v2, :cond_4

    .line 97
    invoke-interface {v0, p3, p4}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 98
    move-object v2, v0

    .line 99
    const/4 v1, 0x1

    .line 110
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 113
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/miui/gallery/cloud/thread/Command;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_4
    invoke-interface {v2, v0}, Lcom/miui/gallery/cloud/thread/Command;->canMergeWith(Lcom/miui/gallery/cloud/thread/Command;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 102
    invoke-interface {v0, p3, p4}, Lcom/miui/gallery/cloud/thread/Command;->getDelay(J)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 103
    const/4 v1, 0x1

    goto :goto_2

    .line 114
    :cond_5
    if-eqz v2, :cond_2

    .line 119
    .end local v0    # "c":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    .end local v1    # "executable":Z
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    .end local v2    # "first":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .end local v5    # "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    :cond_7
    return-void
.end method

.method public putAtFrist(Ljava/util/List;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)I
    .locals 8
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;J",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "l":Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;, "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<TT;>;"
    const/4 v3, 0x1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 164
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "addCount":I
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/thread/Command;

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/cloud/thread/CommandQueue;->putInternal(Lcom/miui/gallery/cloud/thread/Command;ZJLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 169
    :cond_1
    return v0
.end method

.method public putAtLast(Ljava/util/List;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)I
    .locals 8
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;J",
            "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "l":Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;, "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<TT;>;"
    const/4 v3, 0x0

    .line 173
    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 174
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v0, 0x0

    .line 175
    .local v0, "addCount":I
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/thread/Command;

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/cloud/thread/CommandQueue;->putInternal(Lcom/miui/gallery/cloud/thread/Command;ZJLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 179
    :cond_1
    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/miui/gallery/cloud/thread/Command;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/Command;

    .line 65
    .local v0, "cmd":Lcom/miui/gallery/cloud/thread/Command;, "TT;"
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mLists:[Ljava/util/LinkedList;

    invoke-interface {v0}, Lcom/miui/gallery/cloud/thread/Command;->getPriority()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/miui/gallery/cloud/thread/CommandQueue;, "Lcom/miui/gallery/cloud/thread/CommandQueue<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/CommandQueue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
