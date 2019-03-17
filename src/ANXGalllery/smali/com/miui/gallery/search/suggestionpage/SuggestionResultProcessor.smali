.class public Lcom/miui/gallery/search/suggestionpage/SuggestionResultProcessor;
.super Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;
.source "SuggestionResultProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;-><init>(Z)V

    .line 29
    return-void
.end method

.method private getShortcutUri(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/search/SearchConfig;->getSuggestionConfig()Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    move-result-object v0

    .line 111
    .local v0, "suggestionConfig":Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 112
    .local v1, "suggestionSection":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->supportShortcut(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getIntentActionURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getIntentActionURI()Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v0    # "suggestionConfig":Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    .end local v1    # "suggestionSection":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected acceptEmptySection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Z
    .locals 2
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-eq v0, v1, :cond_0

    .line 92
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->acceptEmptySection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Z

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

.method protected packData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
    .locals 22
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
    .line 42
    .local p2, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 44
    .local v20, "startTime":J
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_NO_RESULT:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-eq v4, v5, :cond_4

    .line 45
    :cond_0
    invoke-super/range {p0 .. p3}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->packData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    move-result-object v12

    .line 46
    .local v12, "cursor":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    if-eqz v12, :cond_3

    const-string v4, "enableShortcut"

    .line 47
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "enableShortcut"

    .line 48
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/suggestionpage/SuggestionResultProcessor;->getShortcutUri(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 51
    .local v18, "shortcutUri":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 52
    invoke-virtual {v12}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 53
    .local v13, "extra":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v13, v4, :cond_2

    .line 54
    :cond_1
    new-instance v13, Landroid/os/Bundle;

    .end local v13    # "extra":Landroid/os/Bundle;
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 56
    .restart local v13    # "extra":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v4, "short_cut_uri"

    move-object/from16 v0, v18

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v12, v13}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v13    # "extra":Landroid/os/Bundle;
    .end local v18    # "shortcutUri":Ljava/lang/String;
    :cond_3
    const-string v4, "SuggestionResultProcessor"

    const-string v5, "Pack data cost %d"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v12    # "cursor":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    :goto_0
    return-object v12

    .line 62
    :cond_4
    :try_start_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v15, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v16, "packedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/search/SearchConfig;->getSuggestionConfig()Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    move-result-object v19

    .line 66
    .local v19, "suggestionConfig":Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 67
    .local v17, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->shouldDrawSectionHeader(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 68
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCount()I

    move-result v5

    if-ge v14, v5, :cond_5

    .line 69
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->moveToPosition(I)Z

    .line 70
    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 73
    .end local v14    # "i":I
    :cond_6
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 85
    .end local v15    # "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v16    # "packedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    .end local v17    # "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .end local v19    # "suggestionConfig":Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    :catchall_0
    move-exception v4

    const-string v5, "SuggestionResultProcessor"

    const-string v7, "Pack data cost %d"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw v4

    .line 77
    .restart local v15    # "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .restart local v16    # "packedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    .restart local v19    # "suggestionConfig":Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    :cond_7
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 78
    sget-object v6, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 79
    .local v6, "type":Lcom/miui/gallery/search/SearchConstants$SectionType;
    new-instance v4, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    new-instance v7, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    const/4 v8, 0x0

    .line 81
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/SearchConfig;->getTitleForSection(Lcom/miui/gallery/search/SearchConstants$SectionType;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/SearchConstants$SectionType;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    .line 79
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v6    # "type":Lcom/miui/gallery/search/SearchConstants$SectionType;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super {v0, v1, v15, v2}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->packData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 85
    const-string v4, "SuggestionResultProcessor"

    const-string v5, "Pack data cost %d"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected toSuggestion(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    .locals 3
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v0

    .line 99
    .local v0, "sug":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_OTHER:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-eq v1, v2, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_GUIDE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-eq v1, v2, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionSubTitle(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-object v0
.end method
