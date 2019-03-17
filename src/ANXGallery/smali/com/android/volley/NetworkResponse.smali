.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final allHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field public final data:[B

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final networkTimeMs:J

.field public final notModified:Z

.field public final statusCode:I


# direct methods
.method private constructor <init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p5, "notModified"    # Z
    .param p6, "networkTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 101
    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 102
    iput-object p3, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 103
    if-nez p4, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    .line 108
    :goto_0
    iput-boolean p5, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 109
    iput-wide p6, p0, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    .line 110
    return-void

    .line 106
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .locals 9
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p4, "notModified"    # Z
    .param p5, "networkTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/android/volley/NetworkResponse;->toAllHeaderList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V

    .line 46
    return-void
.end method

.method public constructor <init>(I[BZJLjava/util/List;)V
    .locals 8
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "notModified"    # Z
    .param p4, "networkTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BZJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p6, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-static {p6}, Lcom/android/volley/NetworkResponse;->toHeaderMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p6

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 82
    const/16 v1, 0xc8

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 83
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    .line 96
    return-void
.end method

.method private static toAllHeaderList(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/android/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static toHeaderMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    if-nez p0, :cond_1

    .line 140
    const/4 v1, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v1

    .line 142
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_2
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 147
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Header;

    .line 148
    .local v0, "header":Lcom/android/volley/Header;
    invoke-virtual {v0}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
