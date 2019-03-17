.class public Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;
.super Ljava/lang/Object;
.source "SuggestionViewFactoryImpl.java"

# interfaces
.implements Lcom/miui/gallery/search/core/display/SuggestionViewFactory;


# instance fields
.field private final mDefaultFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

.field private final mFactories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/search/core/display/SuggestionViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeToFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/display/SuggestionViewFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mFactories:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/miui/gallery/search/core/display/DefaultSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/core/display/DefaultSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mDefaultFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mDefaultFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 31
    new-instance v0, Lcom/miui/gallery/search/core/display/DefaultSectionHeaderView$Factory;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/core/display/DefaultSectionHeaderView$Factory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 32
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 33
    new-instance v0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 34
    new-instance v0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 35
    new-instance v0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 36
    return-void
.end method

.method private addViewTypes(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V
    .locals 6
    .param p1, "factory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "viewType":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The view type %s has already exists in other factory %s, please change a name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    .line 55
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 54
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v0    # "viewType":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected final addFactory(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->addViewTypes(Lcom/miui/gallery/search/core/display/SuggestionViewFactory;)V

    .line 49
    return-void
.end method

.method public bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 6
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p3, "childPosition"    # I
    .param p4, "viewHolder"    # Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .param p5, "listener"    # Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .prologue
    .line 88
    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getViewType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .local v0, "factory":Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 90
    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 92
    .end local v0    # "factory":Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    :cond_0
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 77
    .local v0, "factory":Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->createViewHolder(Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    move-result-object v1

    .line 78
    .local v1, "holder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    if-nez p2, :cond_0

    .line 79
    const-string v2, "Error"

    const-string v3, "empty view type"

    invoke-static {v2, v3}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {v1, p2}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->setViewType(Ljava/lang/String;)V

    .line 82
    return-object v1
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
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mViewTypeToFactoryMap:Ljava/util/Map;

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
    .line 64
    invoke-interface {p2, p3}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 66
    .local v0, "factory":Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "viewType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    .end local v0    # "factory":Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .end local v1    # "viewType":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SuggestionViewFactoryImpl;->mDefaultFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
