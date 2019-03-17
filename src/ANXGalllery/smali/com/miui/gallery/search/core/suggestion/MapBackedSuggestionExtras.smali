.class public Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;
.super Ljava/lang/Object;
.source "MapBackedSuggestionExtras.java"

# interfaces
.implements Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;


# instance fields
.field private mExtras:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 67
    :goto_0
    return v2

    .line 52
    :cond_1
    if-eq p1, p0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v4

    .line 54
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    .line 58
    .local v1, "otherExtra":Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 59
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .line 61
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 64
    goto :goto_0

    :cond_6
    move v2, v3

    .line 67
    goto :goto_0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraColumnNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValue"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->mExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
