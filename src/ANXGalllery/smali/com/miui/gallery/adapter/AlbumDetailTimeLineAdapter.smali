.class public Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
.super Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
.source "AlbumDetailTimeLineAdapter.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# instance fields
.field protected mGroupItemCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupStartLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupStartPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000b

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    .local v1, "location":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "location":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 46
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, "cursor":Landroid/database/Cursor;
    move-object v2, p2

    .line 50
    check-cast v2, Lcom/miui/gallery/ui/AlbumDetailGridHeaderItem;

    const/16 v3, 0x11

    .line 51
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/util/GalleryDateUtils;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/ui/AlbumDetailGridHeaderItem;->bindData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object p2
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "countInGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 80
    .local v3, "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 81
    .local v2, "groupStartLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "extra_timeline_item_count_in_group"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    const-string v4, "extra_timeline_group_start_pos"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    const-string v4, "extra_timeline_group_start_locations"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 87
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    .line 96
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 93
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 94
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
