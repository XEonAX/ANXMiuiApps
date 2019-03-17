.class public Lcom/miui/gallery/sdk/download/executor/queue/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/sdk/download/executor/queue/Command;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    .line 19
    iput p1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMaxSize:I

    .line 20
    return-void
.end method

.method private needAdd(Lcom/miui/gallery/sdk/download/executor/queue/Command;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    .local p1, "cmd":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    const/4 v1, 0x1

    .line 98
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    .line 99
    .local v0, "old":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return v1

    .line 102
    :cond_0
    invoke-interface {v0}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getPriority()I

    move-result v2

    invoke-interface {p1}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getPriority()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 103
    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->remove(Lcom/miui/gallery/sdk/download/executor/queue/Command;)V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putInternal(Lcom/miui/gallery/sdk/download/executor/queue/Command;Z)Z
    .locals 3
    .param p2, "atFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    .local p1, "cmd":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->needAdd(Lcom/miui/gallery/sdk/download/executor/queue/Command;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    if-eqz p2, :cond_2

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 85
    iget v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMaxSize:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMaxSize:I

    if-le v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    .line 87
    .local v0, "removedCmd":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v0    # "removedCmd":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private remove(Lcom/miui/gallery/sdk/download/executor/queue/Command;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    .local p1, "cmd":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    invoke-interface {p1}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 41
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/queue/Command;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    return-object v0
.end method

.method public poll(I)Ljava/util/List;
    .locals 5
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 49
    .local v2, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 50
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    .line 52
    .local v0, "c":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/miui/gallery/sdk/download/executor/queue/Command;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0    # "c":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    :cond_0
    return-object v2
.end method

.method public putAtFirst(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-interface {p1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 61
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "addCount":I
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->putInternal(Lcom/miui/gallery/sdk/download/executor/queue/Command;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 65
    :cond_1
    return v0
.end method

.method public putAtLast(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 69
    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 70
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v0, 0x0

    .line 71
    .local v0, "addCount":I
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->putInternal(Lcom/miui/gallery/sdk/download/executor/queue/Command;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 74
    :cond_1
    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/queue/Command;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/queue/Command;

    .line 32
    .local v0, "cmd":Lcom/miui/gallery/sdk/download/executor/queue/Command;, "TT;"
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

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
    .line 44
    .local p0, "this":Lcom/miui/gallery/sdk/download/executor/queue/Queue;, "Lcom/miui/gallery/sdk/download/executor/queue/Queue<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
