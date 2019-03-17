.class public Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;
.super Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
.source "SectionedResultProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
        "<",
        "Lcom/miui/gallery/search/core/result/SuggestionResult",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mRemoveDuplicateItems:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;-><init>(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "removeDuplicateItems"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->mRemoveDuplicateItems:Z

    .line 40
    iput-boolean p1, p0, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->mRemoveDuplicateItems:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected acceptEmptySection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Z
    .locals 1
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected getIndependentSection(Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    .locals 12
    .param p2, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "addedItemKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v11, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->getSuggestionKey(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "itemKey":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->mRemoveDuplicateItems:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :goto_0
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    .end local v10    # "itemKey":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTypeString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    .line 139
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    .line 140
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getDataURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionSubTitle()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v7

    invoke-virtual {p0, p2, v7}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v7

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getRankInfos()Ljava/util/List;

    move-result-object v8

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v0

    .line 132
    .restart local v10    # "itemKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_3
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)",
            "Lcom/miui/gallery/search/core/result/SuggestionResult",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->getMergedErrorInfo(Ljava/util/List;)Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v1

    .line 49
    .local v1, "errorInfo":Lcom/miui/gallery/search/core/result/ErrorInfo;
    const/4 v0, 0x0

    .line 51
    .local v0, "data":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v9, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v6, "itemKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 56
    .local v7, "queryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 57
    .local v10, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    if-nez v7, :cond_1

    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 58
    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v7

    .line 61
    :cond_1
    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 64
    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v12

    instance-of v12, v12, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    if-eqz v12, :cond_4

    .line 66
    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 68
    .local v8, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    invoke-interface {v8}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v12

    sget-object v13, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v12, v13, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_3

    .line 69
    :cond_2
    invoke-virtual {p0, v9, v6, v8}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->onAddSection(Ljava/util/List;Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    .line 87
    .end local v8    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 88
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v2, "extras":Landroid/os/Bundle;
    const-string v12, "itemCount"

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0, v7, v9, v2}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->packData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    move-result-object v0

    goto :goto_0

    .line 71
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_4
    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v12

    instance-of v12, v12, Lcom/miui/gallery/search/core/GroupList;

    if-eqz v12, :cond_3

    .line 73
    invoke-interface {v10}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/search/core/GroupList;

    .line 74
    .local v4, "groupList":Lcom/miui/gallery/search/core/GroupList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Lcom/miui/gallery/search/core/GroupList;->getGroupCount()I

    move-result v12

    if-ge v5, v12, :cond_3

    .line 75
    invoke-interface {v4, v5}, Lcom/miui/gallery/search/core/GroupList;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "group":Ljava/lang/Object;
    instance-of v12, v3, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    if-eqz v12, :cond_6

    move-object v8, v3

    .line 77
    check-cast v8, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 78
    .restart local v8    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    invoke-interface {v8}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v12

    sget-object v13, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_3

    .line 82
    :cond_5
    check-cast v3, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .end local v3    # "group":Ljava/lang/Object;
    invoke-virtual {p0, v9, v6, v3}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->onAddSection(Ljava/util/List;Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    .line 74
    .end local v8    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 94
    .end local v4    # "groupList":Lcom/miui/gallery/search/core/GroupList;
    .end local v5    # "i":I
    .end local v10    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_7
    new-instance v11, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;

    invoke-direct {v11, v7, v0, v1}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    return-object v11
.end method

.method protected getSuggestionKey(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Ljava/lang/String;
    .locals 4
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 145
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getSuggestionConfig()Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    move-result-object v0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->countToRecall(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 146
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddSection(Ljava/util/List;Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V
    .locals 2
    .param p3, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .local p2, "addedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p3}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->acceptEmptySection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p3}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getDataURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-interface {p3}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/SearchConfig;->showSection(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->getIndependentSection(Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    return-void
.end method

.method protected packData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    .line 102
    .local v0, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {v0, p3}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->setExtras(Landroid/os/Bundle;)V

    .line 105
    :cond_0
    return-object v0
.end method

.method protected toSuggestion(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    .locals 1
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 120
    invoke-super {p0, p2}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v0

    return-object v0
.end method
