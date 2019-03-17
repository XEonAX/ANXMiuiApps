.class public Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationSectionAdapter.java"

# interfaces
.implements Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;


# instance fields
.field protected mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

.field protected mAppendMoreItemToItems:Z

.field protected mContext:Landroid/content/Context;

.field protected mFrom:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

.field protected mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewFactory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .param p3, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "appendMoreItemToItems"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p3, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 44
    iput-object p4, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mFrom:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mAppendMoreItemToItems:Z

    .line 46
    return-void
.end method

.method private getFixedMoreItemValue(ZLcom/miui/gallery/search/core/suggestion/SuggestionExtras;)Z
    .locals 2
    .param p1, "defaultValue"    # Z
    .param p2, "extras"    # Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    .prologue
    .line 100
    if-nez p2, :cond_1

    .line 104
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 103
    .restart local p1    # "defaultValue":Z
    :cond_1
    const-string v1, "fixed"

    invoke-interface {p2, v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "fix":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public changeSectionData(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V
    .locals 1
    .param p1, "suggestionSection"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    if-ne p1, v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getItemCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mAppendMoreItemToItems:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->hasMoreItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 124
    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    if-ltz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToPosition(I)Z

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getItem(I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method protected getItemCount()I
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/search/SearchConfig;->getNavigationConfig()Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 140
    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->getSectionMaxItemCount(Lcom/miui/gallery/search/SearchConstants$SectionType;)I

    move-result v0

    .line 141
    .local v0, "maxCount":I
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 119
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMoreItemView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, -0x3

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getItemCount()I

    move-result v1

    if-ne p1, v1, :cond_2

    move v3, v0

    .line 63
    .local v3, "convertPosition":I
    :goto_0
    if-nez p2, :cond_3

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v1, v2, v5, v3}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "viewType":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    invoke-interface {v1, p3, v6}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->createViewHolder(Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    move-result-object v4

    .line 66
    .local v4, "holder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, v4, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .end local v6    # "viewType":Ljava/lang/String;
    :goto_1
    if-gez v3, :cond_0

    if-ne v3, v0, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getItem(I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    iget-object v5, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 91
    iget-object v0, v4, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->itemView:Landroid/view/View;

    return-object v0

    .end local v3    # "convertPosition":I
    .end local v4    # "holder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    :cond_2
    move v3, p1

    .line 61
    goto :goto_0

    .line 68
    .restart local v3    # "convertPosition":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    .restart local v4    # "holder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    goto :goto_1
.end method

.method public hasMoreItem()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedMoreItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->hasMoreItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getFixedMoreItemValue(ZLcom/miui/gallery/search/core/suggestion/SuggestionExtras;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionClickListener(Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 0
    .param p1, "actionClickListener"    # Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .line 57
    return-void
.end method
