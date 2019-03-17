.class Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
.super Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
.source "ImageResultSuggestionCursor.java"

# interfaces
.implements Lcom/miui/gallery/search/resultpage/ExpandableGroupList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
        ">;",
        "Lcom/miui/gallery/search/resultpage/ExpandableGroupList",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
        "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupCollapsedItemArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupExpandStateArray:Landroid/util/SparseBooleanArray;

.field private mSupportExpand:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Z)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "supportExpand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    .line 36
    iput-boolean p3, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mSupportExpand:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;ZLandroid/util/SparseBooleanArray;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "mSupportExpand"    # Z
    .param p4, "createDateExpandStateArray"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;Z",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Z)V

    .line 48
    invoke-direct {p0, p2, p4}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->initGroupCollapsedItemArray(Ljava/util/List;Landroid/util/SparseBooleanArray;)V

    .line 49
    return-void
.end method

.method private initGroupCollapsedItemArray(Ljava/util/List;Landroid/util/SparseBooleanArray;)V
    .locals 9
    .param p2, "createDateExpandStateArray"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupExpandStateArray:Landroid/util/SparseBooleanArray;

    .line 170
    new-instance v7, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupCollapsedItemArray:Landroid/util/SparseArray;

    .line 171
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v5, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 174
    .local v4, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    if-eqz p2, :cond_0

    .line 175
    invoke-interface {v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v7

    const-string v8, "create_date"

    invoke-interface {v7, v8}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    .local v0, "createDate":I
    iget-object v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupExpandStateArray:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 179
    .end local v0    # "createDate":I
    :cond_0
    const-string v7, "item_collapse_visibility"

    invoke-interface {v4, v7}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, "indexCollapseVisibility":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 181
    invoke-interface {v4, v3}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToPosition(I)Z

    .line 182
    if-ltz v2, :cond_1

    const-string/jumbo v7, "visible"

    .line 183
    invoke-interface {v4, v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/Integer;

    .line 188
    .local v6, "visibleItems":[Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 189
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "visibleItems":[Ljava/lang/Integer;
    check-cast v6, [Ljava/lang/Integer;

    .line 191
    .restart local v6    # "visibleItems":[Ljava/lang/Integer;
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupCollapsedItemArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "indexCollapseVisibility":I
    .end local v3    # "j":I
    .end local v4    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .end local v6    # "visibleItems":[Ljava/lang/Integer;
    :cond_4
    return-void
.end method


# virtual methods
.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExpandState(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getChildrenCount(IZ)I

    move-result v0

    return v0
.end method

.method public getChildrenCount(IZ)I
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "expanded"    # Z

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->checkGroupPosition(I)V

    .line 142
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mSupportExpand:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupCollapsedItemArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v0, v0

    goto :goto_0
.end method

.method public getGroupCreateDate(I)I
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 74
    const-string v0, "create_date"

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "create_date"

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGroupCreateTime(I)J
    .locals 2
    .param p1, "groupIndex"    # I

    .prologue
    .line 66
    const-string v0, "create_time"

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "create_time"

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getGroupExpandState(I)Z
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->checkGroupPosition(I)V

    .line 125
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mSupportExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupExpandStateArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getGroupExpandStateArray()Landroid/util/SparseBooleanArray;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCount()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 90
    .local v0, "array":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCreateDate(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExpandState(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v0
.end method

.method protected getGroupExtra(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupRankValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 82
    const-string v0, "rank_value"

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mSupportExpand:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExpandState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "expand_title"

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageIds()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCount()I

    move-result v0

    .line 108
    .local v0, "groupCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 110
    iget-boolean v3, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mSupportExpand:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExpandState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :cond_0
    const-string v3, "all_ids"

    invoke-virtual {p0, v1, v3}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const-string v3, "collapse_visible_ids"

    invoke-virtual {p0, v1, v3}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 117
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 119
    :goto_2
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected onMoveGroup(II)Z
    .locals 2
    .param p1, "groupIndex"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mSupportExpand:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExpandState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->onMoveGroup(II)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->mGroupCollapsedItemArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method
