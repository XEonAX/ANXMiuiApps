.class abstract Lmiui/util/MapCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/MapCollections$ValuesCollection;,
        Lmiui/util/MapCollections$KeySet;,
        Lmiui/util/MapCollections$EntrySet;,
        Lmiui/util/MapCollections$MapIterator;,
        Lmiui/util/MapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field Jw:Lmiui/util/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field Jx:Lmiui/util/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field Jy:Lmiui/util/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 443
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 444
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    const/4 p0, 0x0

    return p0

    .line 449
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 498
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 499
    return v0

    .line 501
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 502
    check-cast p1, Ljava/util/Set;

    .line 505
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 508
    :catch_0
    move-exception p0

    .line 509
    return v2

    .line 506
    :catch_1
    move-exception p0

    .line 507
    return v2

    .line 512
    :cond_2
    return v2
.end method

.method public static b(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 453
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 454
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 455
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static c(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 462
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 463
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 464
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method protected abstract T(I)V
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lmiui/util/MapCollections;->di()I

    move-result v0

    .line 483
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 484
    nop

    .line 485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 486
    nop

    .line 488
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 489
    invoke-virtual {p0, v1, p2}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_1
    array-length p2, p1

    if-le p2, v0, :cond_2

    .line 492
    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 494
    :cond_2
    return-object p1
.end method

.method public aa(I)[Ljava/lang/Object;
    .locals 4

    .line 473
    invoke-virtual {p0}, Lmiui/util/MapCollections;->di()I

    move-result v0

    .line 474
    new-array v1, v0, [Ljava/lang/Object;

    .line 475
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 476
    invoke-virtual {p0, v2, p1}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-object v1
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;)I
.end method

.method protected abstract d(Ljava/lang/Object;)I
.end method

.method public dA()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lmiui/util/MapCollections;->Jx:Lmiui/util/MapCollections$KeySet;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lmiui/util/MapCollections$KeySet;

    invoke-direct {v0, p0}, Lmiui/util/MapCollections$KeySet;-><init>(Lmiui/util/MapCollections;)V

    iput-object v0, p0, Lmiui/util/MapCollections;->Jx:Lmiui/util/MapCollections$KeySet;

    .line 526
    :cond_0
    iget-object v0, p0, Lmiui/util/MapCollections;->Jx:Lmiui/util/MapCollections$KeySet;

    return-object v0
.end method

.method public dB()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lmiui/util/MapCollections;->Jy:Lmiui/util/MapCollections$ValuesCollection;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lmiui/util/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Lmiui/util/MapCollections$ValuesCollection;-><init>(Lmiui/util/MapCollections;)V

    iput-object v0, p0, Lmiui/util/MapCollections;->Jy:Lmiui/util/MapCollections$ValuesCollection;

    .line 533
    :cond_0
    iget-object v0, p0, Lmiui/util/MapCollections;->Jy:Lmiui/util/MapCollections$ValuesCollection;

    return-object v0
.end method

.method protected abstract di()I
.end method

.method protected abstract dj()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract dk()V
.end method

.method public dz()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lmiui/util/MapCollections;->Jw:Lmiui/util/MapCollections$EntrySet;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lmiui/util/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Lmiui/util/MapCollections$EntrySet;-><init>(Lmiui/util/MapCollections;)V

    iput-object v0, p0, Lmiui/util/MapCollections;->Jw:Lmiui/util/MapCollections$EntrySet;

    .line 519
    :cond_0
    iget-object v0, p0, Lmiui/util/MapCollections;->Jw:Lmiui/util/MapCollections$EntrySet;

    return-object v0
.end method

.method protected abstract k(II)Ljava/lang/Object;
.end method
