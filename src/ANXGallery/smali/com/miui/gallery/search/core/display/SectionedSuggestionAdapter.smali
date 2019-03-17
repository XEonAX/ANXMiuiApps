.class public Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;
.super Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;
.source "SectionedSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewFactory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected bindInnerItemViewHolder(Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p2}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getIndexes(I)[I

    move-result-object v6

    .line 70
    .local v6, "indexes":[I
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v6, v3

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;

    move-result-object v5

    move-object v4, p1

    .line 70
    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 72
    return-void
.end method

.method protected getHeaderCount(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public getIndexes(I)[I
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 79
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 80
    .local v2, "indexes":[I
    const/4 v3, 0x0

    .line 81
    .local v3, "sectionStartPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionTotalItemCount(I)I

    move-result v4

    .line 83
    .local v4, "sectionTotal":I
    add-int v5, v3, v4

    if-ge p1, v5, :cond_5

    .line 84
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getHeaderCount(I)I

    move-result v0

    .line 85
    .local v0, "headerCount":I
    aput v1, v2, v8

    .line 86
    sub-int v5, p1, v3

    aput v5, v2, v7

    .line 87
    aget v5, v2, v7

    if-ge v5, v0, :cond_2

    .line 89
    const/4 v5, -0x1

    aput v5, v2, v7

    .line 106
    .end local v0    # "headerCount":I
    .end local v4    # "sectionTotal":I
    :cond_0
    :goto_1
    aget v5, v2, v7

    if-ltz v5, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSuggestionCursor()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    aget v6, v2, v8

    aget v7, v2, v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->moveToPosition(II)V

    .line 109
    :cond_1
    return-object v2

    .line 90
    .restart local v0    # "headerCount":I
    .restart local v4    # "sectionTotal":I
    :cond_2
    aget v5, v2, v7

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionItemCount(I)I

    move-result v6

    add-int/2addr v6, v0

    if-ne v5, v6, :cond_3

    .line 92
    const/4 v5, -0x3

    aput v5, v2, v7

    goto :goto_1

    .line 93
    :cond_3
    aget v5, v2, v8

    invoke-virtual {p0, v5}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->useBatchContent(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    const/4 v5, -0x2

    aput v5, v2, v7

    goto :goto_1

    .line 98
    :cond_4
    aget v5, v2, v7

    sub-int/2addr v5, v0

    aput v5, v2, v7

    goto :goto_1

    .line 103
    .end local v0    # "headerCount":I
    :cond_5
    add-int/2addr v3, v4

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getInnerItemViewCount()I
    .locals 3

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionTotalItemCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return v1
.end method

.method protected getInnerItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getIndexes(I)[I

    move-result-object v0

    .line 63
    .local v0, "indexes":[I
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-interface {v2, v3, v4, v5}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "viewType":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method protected getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSuggestionCursor()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSuggestionCursor()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSectionCount()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSuggestionCursor()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSuggestionCursor()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroupCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSectionItemCount(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->useBatchContent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getHeaderCount(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getSectionTotalItemCount(I)I
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getHeaderCount(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionItemCount(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->useBatchContent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected useBatchContent(I)Z
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
