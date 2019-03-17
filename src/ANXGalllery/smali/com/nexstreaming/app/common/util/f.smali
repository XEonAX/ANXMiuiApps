.class public final Lcom/nexstreaming/app/common/util/f;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method public static final a(Ljava/util/Collection;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    new-array v0, v2, [I

    .line 17
    :goto_0
    return-object v0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 15
    add-int/lit8 v3, v1, 0x1

    if-nez v0, :cond_1

    move v0, v2

    :goto_2
    aput v0, v4, v1

    move v1, v3

    .line 16
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    .line 17
    goto :goto_0
.end method
