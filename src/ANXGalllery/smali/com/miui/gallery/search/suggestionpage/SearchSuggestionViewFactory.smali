.class public Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;
.super Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;
.source "SearchSuggestionViewFactory.java"


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
.field private mItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mPeopleItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f040066

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "search_suggestion_people"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "search_suggestion_item"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "search_suggestion_no_result_header"

    const v2, 0x7f040153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "search_suggestion_guide_item"

    const v2, 0x7f04008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;
    .param p1, "x1"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->getItem(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method private findQueryTextSpan(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "queryText"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "firstIndex":I
    if-ltz v0, :cond_2

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 165
    .local v2, "lastIndex":I
    if-eq v2, v0, :cond_1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u201c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 170
    :cond_0
    if-ltz v1, :cond_1

    .line 171
    add-int/lit8 v0, v1, 0x1

    .line 174
    .end local v1    # "index":I
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    .line 176
    .end local v2    # "lastIndex":I
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getItem(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .param p2, "position"    # I

    .prologue
    .line 152
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 153
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 154
    :cond_0
    if-ltz p2, :cond_1

    .line 155
    invoke-interface {p1, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToPosition(I)Z

    .line 156
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 102
    move-object v8, p2

    check-cast v8, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 103
    .local v8, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 104
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {v8}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0, v8, p3}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->getItem(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v2

    .line 111
    .local v2, "item":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    if-eqz v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 114
    invoke-super/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 117
    const-string v0, "search_suggestion_guide_item"

    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getViewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "query"

    .line 118
    invoke-virtual {p1, v0}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query"

    .line 121
    invoke-virtual {p1, v1}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->findQueryTextSpan(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v9

    .line 122
    .local v9, "span":[I
    if-eqz v9, :cond_2

    .line 123
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 126
    .local v7, "highLightSpan":Landroid/text/style/ForegroundColorSpan;
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    const/16 v3, 0x21

    invoke-virtual {v6, v7, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 127
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v6    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v7    # "highLightSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v9    # "span":[I
    :cond_2
    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 133
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;

    invoke-direct {v1, p0, p2, p5, p3}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;-><init>(Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;Lcom/miui/gallery/search/core/suggestion/Suggestion;Lcom/miui/gallery/search/core/display/OnActionClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "search_suggestion_people"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search_suggestion_guide_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->mPeopleItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 184
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->mItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method protected getLayoutIdForViewType(Ljava/lang/String;)I
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

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
    .line 70
    sget-object v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->sViewTypes:Ljava/util/Map;

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

    .line 80
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-eq v2, v3, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v2, v3, :cond_1

    :cond_0
    instance-of v2, p2, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    if-nez v2, :cond_2

    .line 96
    .end local p2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_1
    :goto_0
    return-object v1

    .line 84
    .restart local p2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_2
    check-cast p2, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .end local p2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    .line 85
    .local v0, "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v2, :cond_3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    .line 86
    const-string v1, "search_suggestion_no_result_header"

    goto :goto_0

    .line 87
    :cond_3
    if-gez p3, :cond_4

    const/4 v2, -0x3

    if-ne p3, v2, :cond_1

    .line 88
    :cond_4
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_5

    .line 89
    const-string v1, "search_suggestion_people"

    goto :goto_0

    .line 90
    :cond_5
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_GUIDE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_6

    .line 91
    const-string v1, "search_suggestion_guide_item"

    goto :goto_0

    .line 93
    :cond_6
    const-string v1, "search_suggestion_item"

    goto :goto_0
.end method

.method protected initDisplayImageOptions(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f02025f

    .line 57
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->initDisplayImageOptions(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->mItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 65
    invoke-static {}, Lcom/miui/gallery/people/PeopleDisplayHelper;->getDefaultPeopleDisplayOptionsBuilder()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->mPeopleItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 66
    return-void
.end method
