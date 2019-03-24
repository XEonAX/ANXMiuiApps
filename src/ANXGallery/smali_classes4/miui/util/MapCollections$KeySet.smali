.class final Lmiui/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic JB:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 262
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 267
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dk()V

    .line 268
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->c(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dj()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 327
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 332
    nop

    .line 333
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->di()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 334
    iget-object v3, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v3, v0, v1}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v3

    .line 335
    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->di()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Lmiui/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/MapCollections$ArrayIterator;-><init>(Lmiui/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->c(Ljava/lang/Object;)I

    move-result p1

    .line 293
    if-ltz p1, :cond_0

    .line 294
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->T(I)V

    .line 295
    const/4 p1, 0x1

    return p1

    .line 297
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dj()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dj()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 312
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->di()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 317
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/util/MapCollections;->aa(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->JB:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/util/MapCollections;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
