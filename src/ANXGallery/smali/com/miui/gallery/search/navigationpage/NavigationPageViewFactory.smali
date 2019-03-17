.class public Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;
.super Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;
.source "NavigationPageViewFactory.java"


# static fields
.field private static sViewTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPeopleItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mRecommendItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_section_header"

    const v2, 0x7f0400ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_recommend"

    const v2, 0x7f0400c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_recommend_item"

    const v2, 0x7f0400c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_people"

    const v2, 0x7f0400c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_people_item"

    const v2, 0x7f0400c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_people_more_item"

    const v2, 0x7f0400c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_tag"

    const v2, 0x7f0400cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_tag_item"

    const v2, 0x7f0400cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_location_item"

    const v2, 0x7f0400c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_section_content"

    const v2, 0x7f0400c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "navigation_warning_header"

    const v2, 0x7f0400cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 10
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p3, "childPosition"    # I
    .param p4, "viewHolder"    # Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .param p5, "listener"    # Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .prologue
    .line 156
    move-object v9, p2

    check-cast v9, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 157
    .local v9, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    packed-switch p3, :pswitch_data_0

    .line 217
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v7, p4, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;

    .line 161
    .local v7, "contentView":Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;
    invoke-interface {v7}, Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;->getContentAdapter()Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    move-result-object v8

    .line 162
    .local v8, "existAdapter":Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
    if-eqz v8, :cond_1

    .line 163
    invoke-virtual {v8, v9}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->changeSectionData(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, v9}, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->createContentAdapter(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    move-result-object v6

    .line 166
    .local v6, "adapter":Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
    invoke-virtual {v6, p5}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->setActionClickListener(Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 167
    iget-object v0, p4, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;

    invoke-interface {v0, v6}, Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;->setContentAdapter(Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;)V

    goto :goto_0

    .line 173
    .end local v6    # "adapter":Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
    .end local v7    # "contentView":Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;
    .end local v8    # "existAdapter":Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
    :pswitch_1
    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_WARNING:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_3

    .line 174
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_4

    .line 183
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p5, :cond_4

    .line 184
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$1;

    invoke-direct {v1, p0, p5}, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$1;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_4
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_5
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 205
    :pswitch_2
    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 207
    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getNavigationConfig()Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    move-result-object v0

    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->getSectionMaxItemCount(Lcom/miui/gallery/search/SearchConstants$SectionType;)I

    move-result v0

    invoke-interface {v9, v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {v9}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 210
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->bindIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createContentAdapter(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
    .locals 6
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    .line 237
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_1

    const-string v4, "from_navigation_history"

    .line 239
    .local v4, "from":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-eq v0, v1, :cond_0

    .line 240
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_FEATURE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 241
    .local v5, "appendMoreItem":Z
    :goto_1
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/search/core/context/SearchContext;->getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Ljava/lang/String;Z)V

    return-object v0

    .line 237
    .end local v4    # "from":Ljava/lang/String;
    .end local v5    # "appendMoreItem":Z
    :cond_1
    const-string v4, "from_navigation"

    goto :goto_0

    .line 240
    .restart local v4    # "from":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    const-string v0, "Error"

    const-string v1, "empty view type"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const-string v0, "navigation_recommend_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->mRecommendItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0

    .line 229
    :cond_1
    const-string v0, "navigation_people_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "navigation_people_more_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->mPeopleItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0

    .line 232
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLayoutIdForViewType(Ljava/lang/String;)I
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSuggestionViewTypes()Ljava/util/Collection;
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
    .line 85
    sget-object v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->sViewTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p3, "childPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_NAVIGATION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v2, v3, :cond_0

    instance-of v2, p2, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    if-nez v2, :cond_1

    .line 150
    .end local p2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_0
    :goto_0
    return-object v1

    .line 98
    .restart local p2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_1
    check-cast p2, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .end local p2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    .line 99
    .local v0, "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    packed-switch p3, :pswitch_data_0

    .line 135
    if-ltz p3, :cond_0

    .line 136
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/search/SearchConfig;->getNavigationConfig()Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->useBatchContent(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    sget-object v1, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$2;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 146
    const-string v1, "navigation_tag_item"

    goto :goto_0

    .line 102
    :pswitch_0
    sget-object v1, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$2;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 106
    const-string v1, "navigation_section_header"

    goto :goto_0

    .line 104
    :pswitch_1
    const-string v1, "navigation_warning_header"

    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v1, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$2;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 120
    const-string v1, "navigation_section_content"

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v1, "navigation_recommend"

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v1, "navigation_people"

    goto :goto_0

    .line 118
    :pswitch_5
    const-string v1, "navigation_tag"

    goto :goto_0

    .line 125
    :pswitch_6
    sget-object v1, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$2;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    .line 131
    const-string v1, "navigation_tag_item"

    goto :goto_0

    .line 127
    :pswitch_7
    const-string v1, "navigation_recommend_item"

    goto :goto_0

    .line 129
    :pswitch_8
    const-string v1, "navigation_people_more_item"

    goto :goto_0

    .line 140
    :pswitch_9
    const-string v1, "navigation_recommend_item"

    goto :goto_0

    .line 142
    :pswitch_a
    const-string v1, "navigation_people_item"

    goto :goto_0

    .line 144
    :pswitch_b
    const-string v1, "navigation_location_item"

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 102
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 111
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 125
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected initDisplayImageOptions(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0200df

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->initDisplayImageOptions(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02e3

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    .local v0, "recommendItemRadius":I
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    new-instance v2, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v0, v3, v5

    aput v5, v3, v6

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v0, v3, v4

    invoke-direct {v2, v3}, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;-><init>([I)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->mRecommendItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 75
    invoke-virtual {v1, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v2, v6}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 78
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->mPeopleItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 81
    return-void
.end method
