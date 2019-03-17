.class Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;
.super Landroid/support/v7/widget/util/SortedListAdapterCallback;
.source "BaseAlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/BaseAlbumListAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/util/SortedListAdapterCallback",
        "<",
        "Lcom/miui/gallery/model/Album;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/BaseAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BaseAlbumListAdapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/BaseAlbumListAdapter;
    .param p2, "x0"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 35
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;->this$0:Lcom/miui/gallery/adapter/BaseAlbumListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/util/SortedListAdapterCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/gallery/model/Album;Lcom/miui/gallery/model/Album;)Z
    .locals 4
    .param p1, "oldItem"    # Lcom/miui/gallery/model/Album;
    .param p2, "newItem"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 57
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getSortBy()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getSortBy()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getCoverSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getCoverSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getCoverPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getBabyInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getBabyInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    check-cast p1, Lcom/miui/gallery/model/Album;

    check-cast p2, Lcom/miui/gallery/model/Album;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;->areContentsTheSame(Lcom/miui/gallery/model/Album;Lcom/miui/gallery/model/Album;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Lcom/miui/gallery/model/Album;Lcom/miui/gallery/model/Album;)Z
    .locals 4
    .param p1, "item1"    # Lcom/miui/gallery/model/Album;
    .param p2, "item2"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 68
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    check-cast p1, Lcom/miui/gallery/model/Album;

    check-cast p2, Lcom/miui/gallery/model/Album;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;->areItemsTheSame(Lcom/miui/gallery/model/Album;Lcom/miui/gallery/model/Album;)Z

    move-result v0

    return v0
.end method

.method public compare(Lcom/miui/gallery/model/Album;Lcom/miui/gallery/model/Album;)I
    .locals 6
    .param p1, "o1"    # Lcom/miui/gallery/model/Album;
    .param p2, "o2"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 38
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumClassification()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumClassification()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumClassification()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumClassification()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 52
    :goto_0
    return v2

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 42
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/model/Album$AlbumType;->OTHERS_SHARE:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->NORMAL:Lcom/miui/gallery/model/Album$AlbumType;

    .line 43
    invoke-virtual {v2}, Lcom/miui/gallery/model/Album$AlbumType;->ordinal()I

    move-result v0

    .line 45
    .local v0, "ordinal1":I
    :goto_1
    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/model/Album$AlbumType;->OTHERS_SHARE:Lcom/miui/gallery/model/Album$AlbumType;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/miui/gallery/model/Album$AlbumType;->NORMAL:Lcom/miui/gallery/model/Album$AlbumType;

    .line 46
    invoke-virtual {v2}, Lcom/miui/gallery/model/Album$AlbumType;->ordinal()I

    move-result v1

    .line 48
    .local v1, "ordinal2":I
    :goto_2
    if-eq v0, v1, :cond_3

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    goto :goto_0

    .line 44
    .end local v0    # "ordinal1":I
    .end local v1    # "ordinal2":I
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/model/Album$AlbumType;->ordinal()I

    move-result v0

    goto :goto_1

    .line 47
    .restart local v0    # "ordinal1":I
    :cond_2
    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/model/Album$AlbumType;->ordinal()I

    move-result v1

    goto :goto_2

    .line 52
    .end local v0    # "ordinal1":I
    :cond_3
    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getSortBy()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getSortBy()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;, "Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;"
    check-cast p1, Lcom/miui/gallery/model/Album;

    check-cast p2, Lcom/miui/gallery/model/Album;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListAdapter$1;->compare(Lcom/miui/gallery/model/Album;Lcom/miui/gallery/model/Album;)I

    move-result v0

    return v0
.end method
