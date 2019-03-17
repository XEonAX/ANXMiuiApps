.class public Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;
.super Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;
.source "FilterBarViewFactory.java"


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
.field private mFilterItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->sViewTypes:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "filter_item"

    const v2, 0x7f04007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "filter_item_no_icon"

    const v2, 0x7f04007d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;
    .param p1, "x1"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->getItem(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method private getItem(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p2, "position"    # I

    .prologue
    .line 97
    invoke-interface {p1, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 98
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 6
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p3, "childPosition"    # I
    .param p4, "viewHolder"    # Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .param p5, "listener"    # Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .prologue
    .line 74
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-direct {p0, v0, p3}, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->getItem(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v2

    .line 75
    .local v2, "item":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 78
    invoke-super/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 81
    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 82
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;

    invoke-direct {v1, p0, p5, p2, p3}, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;-><init>(Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;Lcom/miui/gallery/search/core/display/OnActionClickListener;Lcom/miui/gallery/search/core/suggestion/Suggestion;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->mFilterItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method protected getLayoutIdForViewType(Ljava/lang/String;)I
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->sViewTypes:Ljava/util/Map;

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
    .line 52
    sget-object v0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->sViewTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p3, "childPosition"    # I

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "filter_item_no_icon"

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "filter_item"

    goto :goto_0
.end method

.method protected initDisplayImageOptions(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->initDisplayImageOptions(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/miui/gallery/people/PeopleDisplayHelper;->getDefaultPeopleDisplayOptionsBuilder()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->mFilterItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 48
    return-void
.end method
