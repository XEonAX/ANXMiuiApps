.class public Lorg/jcodec/containers/mp4/boxes/NodeBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "NodeBox.java"


# instance fields
.field protected boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;"
        }
    .end annotation
.end field

.field protected factory:Lorg/jcodec/containers/mp4/IBoxFactory;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 1
    .param p1, "atom"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    .line 31
    return-void
.end method

.method public static findAll(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2
    .param p0, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findAllPath(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;[Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public static findAllPath(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;[Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 6
    .param p0, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;
    .param p2, "path"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 155
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v4, v3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findBox(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/util/List;Ljava/util/Collection;)V

    .line 157
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 159
    .local v2, "next":Lorg/jcodec/containers/mp4/boxes/Box;
    if-nez v2, :cond_1

    .line 160
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jcodec/platform/Platform;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    :try_start_0
    invoke-static {p1, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->asBox(Ljava/lang/Class;Lorg/jcodec/containers/mp4/boxes/Box;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "next":Lorg/jcodec/containers/mp4/boxes/Box;
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/jcodec/containers/mp4/boxes/Box;

    check-cast v4, [Lorg/jcodec/containers/mp4/boxes/Box;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/jcodec/containers/mp4/boxes/Box;

    return-object v4
.end method

.method public static findBox(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/util/List;Ljava/util/Collection;)V
    .locals 6
    .param p0, "root"    # Lorg/jcodec/containers/mp4/boxes/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    const/4 v5, 0x0

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 176
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "head":Ljava/lang/String;
    instance-of v3, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    if-eqz v3, :cond_2

    move-object v2, p0

    .line 178
    check-cast v2, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    .line 179
    .local v2, "nb":Lorg/jcodec/containers/mp4/boxes/NodeBox;
    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 180
    .local v0, "candidate":Lorg/jcodec/containers/mp4/boxes/Box;
    if-eqz v1, :cond_1

    iget-object v4, v0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    :cond_1
    invoke-static {v0, p1, p2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findBox(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/util/List;Ljava/util/Collection;)V

    goto :goto_0

    .line 185
    .end local v0    # "candidate":Lorg/jcodec/containers/mp4/boxes/Box;
    .end local v2    # "nb":Lorg/jcodec/containers/mp4/boxes/NodeBox;
    :cond_2
    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 189
    .end local v1    # "head":Ljava/lang/String;
    :goto_1
    return-void

    .line 187
    :cond_3
    invoke-interface {p2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static findDeep(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2
    .param p0, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "storage":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1, p2, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findDeepInner(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    .line 122
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jcodec/containers/mp4/boxes/Box;

    check-cast v1, [Lorg/jcodec/containers/mp4/boxes/Box;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jcodec/containers/mp4/boxes/Box;

    return-object v1
.end method

.method public static findDeepInner(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "storage":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/Box;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    instance-of v2, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 133
    check-cast v1, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    .line 134
    .local v1, "nb":Lorg/jcodec/containers/mp4/boxes/NodeBox;
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 135
    .local v0, "candidate":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-static {v0, p1, p2, p3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findDeepInner(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method public static findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2
    .param p0, "box"    # Lorg/jcodec/containers/mp4/boxes/NodeBox;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Lorg/jcodec/containers/mp4/boxes/NodeBox;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirstPath(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;[Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public static findFirstPath(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;[Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2
    .param p0, "box"    # Lorg/jcodec/containers/mp4/boxes/NodeBox;
    .param p2, "path"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Lorg/jcodec/containers/mp4/boxes/NodeBox;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findAllPath(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;[Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, [Lorg/jcodec/containers/mp4/boxes/Box;

    .line 150
    .local v0, "result":[Lorg/jcodec/containers/mp4/boxes/Box;, "[TT;"
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseChildBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 8
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "factory"    # Lorg/jcodec/containers/mp4/IBoxFactory;

    .prologue
    const/4 v4, 0x4

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 48
    .local v1, "fork":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_2

    .line 51
    const/4 v2, 0x0

    .line 58
    :cond_1
    :goto_1
    return-object v2

    .line 53
    :cond_2
    const/4 v2, 0x0

    .line 54
    .local v2, "ret":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-static {p0}, Lorg/jcodec/containers/mp4/boxes/Header;->read(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v0

    .line 55
    .local v0, "childAtom":Lorg/jcodec/containers/mp4/boxes/Header;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 56
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {p0, v3}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->parseBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public add(Lorg/jcodec/containers/mp4/boxes/Box;)V
    .locals 1
    .param p1, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 70
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 71
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {v0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 73
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    :cond_0
    return-void
.end method

.method protected dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"tag\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "\"boxes\": ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->dumpBoxes(Ljava/lang/StringBuilder;)V

    .line 93
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method protected dumpBoxes(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/boxes/Box;

    invoke-virtual {v1, p1}, Lorg/jcodec/containers/mp4/boxes/Box;->dump(Ljava/lang/StringBuilder;)V

    .line 100
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 101
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public estimateSize()I
    .locals 4

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "total":I
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 79
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Box;->estimateSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 80
    goto :goto_0

    .line 81
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    :cond_0
    invoke-static {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->estimateHeaderSize(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public getBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 40
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->factory:Lorg/jcodec/containers/mp4/IBoxFactory;

    invoke-static {p1, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->parseChildBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    .line 41
    .local v0, "child":Lorg/jcodec/containers/mp4/boxes/Box;
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0    # "child":Lorg/jcodec/containers/mp4/boxes/Box;
    :cond_1
    return-void
.end method

.method public removeChildren([Ljava/lang/String;)V
    .locals 6
    .param p1, "fourcc"    # [Ljava/lang/String;

    .prologue
    .line 106
    iget-object v5, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 108
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Box;->getFourcc()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "fcc":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_0

    .line 110
    aget-object v1, p1, v3

    .line 111
    .local v1, "cand":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 109
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    .end local v1    # "cand":Ljava/lang/String;
    .end local v2    # "fcc":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public replaceBox(Lorg/jcodec/containers/mp4/boxes/Box;)V
    .locals 3
    .param p1, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Box;->getFourcc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->removeChildren([Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    .line 87
    return-void
.end method

.method public setFactory(Lorg/jcodec/containers/mp4/IBoxFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jcodec/containers/mp4/IBoxFactory;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->factory:Lorg/jcodec/containers/mp4/IBoxFactory;

    .line 35
    return-void
.end method
