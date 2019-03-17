.class public Lorg/jcodec/containers/mp4/boxes/MetaBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "MetaBox.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final FOURCC:Ljava/lang/String; = "meta"


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0
    .param p1, "atom"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 23
    return-void
.end method

.method public static createMetaBox()Lorg/jcodec/containers/mp4/boxes/MetaBox;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MetaBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "meta"

    return-object v0
.end method

.method private getDataBox(Ljava/util/List;)Lorg/jcodec/containers/mp4/boxes/DataBox;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">;)",
            "Lorg/jcodec/containers/mp4/boxes/DataBox;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 55
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    instance-of v2, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;

    if-eqz v2, :cond_0

    .line 56
    check-cast v0, Lorg/jcodec/containers/mp4/boxes/DataBox;

    .line 59
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKeyedMeta()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    const-class v7, Lorg/jcodec/containers/mp4/boxes/IListBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/IListBox;->fourcc()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/IListBox;

    .line 33
    .local v2, "ilst":Lorg/jcodec/containers/mp4/boxes/IListBox;
    const-class v7, Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/KeysBox;->fourcc()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->findAllPath(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;[Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v4

    check-cast v4, [Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    .line 35
    .local v4, "keys":[Lorg/jcodec/containers/mp4/boxes/MdtaBox;
    if-eqz v2, :cond_0

    array-length v7, v4

    if-nez v7, :cond_1

    .line 50
    :cond_0
    return-object v5

    .line 38
    :cond_1
    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/IListBox;->getValues()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 40
    .local v3, "index":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getDataBox(Ljava/util/List;)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v0

    .line 43
    .local v0, "db":Lorg/jcodec/containers/mp4/boxes/DataBox;
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getType()I

    move-result v7

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getLocale()I

    move-result v9

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/DataBox;->getData()[B

    move-result-object v10

    invoke-static {v7, v9, v10}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createOtherWithLocale(II[B)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v6

    .line 46
    .local v6, "value":Lorg/jcodec/containers/mp4/boxes/MetaValue;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    array-length v9, v4

    if-gt v7, v9, :cond_2

    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setKeyedMeta(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/KeysBox;->createKeysBox()Lorg/jcodec/containers/mp4/boxes/KeysBox;

    move-result-object v5

    .line 66
    .local v5, "keys":Lorg/jcodec/containers/mp4/boxes/KeysBox;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;>;"
    const/4 v3, 0x1

    .line 68
    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->createMdtaBox(Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/jcodec/containers/mp4/boxes/KeysBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    .line 71
    .local v6, "v":Lorg/jcodec/containers/mp4/boxes/MetaValue;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    invoke-virtual {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getType()I

    move-result v7

    invoke-virtual {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getLocale()I

    move-result v9

    invoke-virtual {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getData()[B

    move-result-object v10

    invoke-static {v7, v9, v10}, Lorg/jcodec/containers/mp4/boxes/DataBox;->createDataBox(II[B)Lorg/jcodec/containers/mp4/boxes/DataBox;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_1

    .line 76
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/boxes/Box;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    .end local v6    # "v":Lorg/jcodec/containers/mp4/boxes/MetaValue;
    :cond_1
    invoke-static {v1}, Lorg/jcodec/containers/mp4/boxes/IListBox;->createIListBox(Ljava/util/Map;)Lorg/jcodec/containers/mp4/boxes/IListBox;

    move-result-object v4

    .line 77
    .local v4, "ilst":Lorg/jcodec/containers/mp4/boxes/IListBox;
    invoke-virtual {p0, v5}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->replaceBox(Lorg/jcodec/containers/mp4/boxes/Box;)V

    .line 78
    invoke-virtual {p0, v4}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->replaceBox(Lorg/jcodec/containers/mp4/boxes/Box;)V

    goto :goto_0
.end method
