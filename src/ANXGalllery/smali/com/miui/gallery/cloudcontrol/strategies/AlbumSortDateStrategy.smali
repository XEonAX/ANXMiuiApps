.class public Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "AlbumSortDateStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;,
        Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    }
.end annotation


# instance fields
.field private mAlbums:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albums"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;",
            ">;"
        }
    .end annotation
.end field

.field private transient mSortDateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 4

    .prologue
    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->mSortDateMap:Ljava/util/Map;

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->mAlbums:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;

    .line 58
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->mSortDateMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->getAlbumPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;
    :cond_1
    return-void
.end method

.method public getAlbumPathsBySortDate(Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;)Ljava/util/List;
    .locals 4
    .param p1, "sortDate"    # Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->mAlbums:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;

    .line 81
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->getSortDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->fromValue(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->getAlbumPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;
    :cond_1
    return-object v1
.end method
