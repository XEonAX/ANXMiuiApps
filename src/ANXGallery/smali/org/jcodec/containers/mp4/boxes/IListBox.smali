.class public Lorg/jcodec/containers/mp4/boxes/IListBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "IListBox.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/containers/mp4/boxes/IListBox$LocalBoxes;
    }
.end annotation


# static fields
.field private static final FOURCC:Ljava/lang/String; = "ilst"


# instance fields
.field private factory:Lorg/jcodec/containers/mp4/IBoxFactory;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 2
    .param p1, "atom"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 37
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/IListBox$LocalBoxes;

    invoke-direct {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox$LocalBoxes;-><init>()V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;-><init>(Lorg/jcodec/containers/mp4/Boxes;)V

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->factory:Lorg/jcodec/containers/mp4/IBoxFactory;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->values:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public static createIListBox(Ljava/util/Map;)Lorg/jcodec/containers/mp4/boxes/IListBox;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;>;)",
            "Lorg/jcodec/containers/mp4/boxes/IListBox;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/IListBox;

    const-string v1, "ilst"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 43
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/IListBox;
    iput-object p0, v0, Lorg/jcodec/containers/mp4/boxes/IListBox;->values:Ljava/util/Map;

    .line 44
    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "ilst"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 69
    iget-object v3, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 71
    .local v2, "fork":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 74
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {v0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 76
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 78
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    .end local v2    # "fork":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method public estimateSize()I
    .locals 6

    .prologue
    .line 82
    const/16 v2, 0x8

    .line 83
    .local v2, "sz":I
    iget-object v3, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 85
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Box;->estimateSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    .line 86
    goto :goto_0

    .line 88
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    :cond_1
    return v2
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->values:Ljava/util/Map;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 50
    .local v5, "size":I
    add-int/lit8 v6, v5, -0x4

    invoke-static {p1, v6}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 51
    .local v4, "local":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 52
    .local v3, "index":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    iget-object v6, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->values:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    invoke-static {v4}, Lorg/jcodec/containers/mp4/boxes/Header;->read(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    .line 56
    .local v1, "childAtom":Lorg/jcodec/containers/mp4/boxes/Header;
    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 57
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v4, v6}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/jcodec/containers/mp4/boxes/IListBox;->factory:Lorg/jcodec/containers/mp4/IBoxFactory;

    invoke-static {v6, v1, v7}, Lorg/jcodec/containers/mp4/boxes/IListBox;->parseBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    .line 58
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    .end local v1    # "childAtom":Lorg/jcodec/containers/mp4/boxes/Header;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    .end local v3    # "index":I
    .end local v4    # "local":Ljava/nio/ByteBuffer;
    .end local v5    # "size":I
    :cond_2
    return-void
.end method
