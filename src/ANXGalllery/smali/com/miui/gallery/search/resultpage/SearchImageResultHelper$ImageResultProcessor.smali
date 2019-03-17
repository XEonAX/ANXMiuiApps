.class Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;
.super Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;
.source "SearchImageResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageResultProcessor"
.end annotation


# instance fields
.field private mCachedGroupExpandState:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V
    .locals 1
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultHelper;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->mCachedGroupExpandState:Landroid/util/SparseBooleanArray;

    .line 136
    return-void
.end method

.method private appendNotInSecretSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "(%s) AND (%s != %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "localGroupId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-wide/16 v4, -0x3e8

    .line 463
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 461
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doExpandableFirstStepQuery(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .param p1, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "outLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "outIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "outCreateDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 345
    .local v12, "startTime":J
    const/4 v8, 0x0

    .line 347
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v2}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getQueryUri(Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$100()[Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->appendNotInSecretSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "alias_create_time DESC "

    .line 347
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 349
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 350
    invoke-interface {v8}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_timeline_group_start_locations"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 351
    invoke-interface {v8}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_timeline_group_start_pos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 352
    .local v9, "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 358
    .local v10, "startPos":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 359
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 363
    .end local v9    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "startPos":I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 364
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_2
    const-string v3, "ImageResultProcessor"

    const-string v4, "[%d]ms: first step query time for [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v2

    .line 363
    :cond_3
    if-eqz v8, :cond_4

    .line 364
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_4
    const-string v2, "ImageResultProcessor"

    const-string v3, "[%d]ms: first step query time for [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method private doExpandableSecondStepQuery(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .locals 30
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;"
        }
    .end annotation

    .prologue
    .line 375
    .local p3, "createDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "collapsedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "collapsedVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 377
    .local v24, "startTime":J
    const/16 v26, 0x0

    .line 379
    .local v26, "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    const-string v4, "%s IN (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "alias_create_date"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, ","

    .line 380
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 379
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 381
    .local v23, "selection":Ljava/lang/String;
    const/4 v14, 0x0

    .line 383
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getQueryUri(Z)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$100()[Ljava/lang/String;

    move-result-object v6

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->appendNotInSecretSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "alias_create_time DESC "

    .line 383
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 385
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 386
    invoke-interface {v14}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_timeline_group_start_locations"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 387
    .local v15, "expandedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v14}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_timeline_group_start_pos"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 390
    .local v17, "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .local v18, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 394
    .local v6, "imageGroupCursor":Landroid/database/MatrixCursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v12, "groupVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v13, "groupAllIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_8

    .line 398
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 399
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 400
    .local v28, "tempId":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_1
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "visible"

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->toRow(Landroid/database/Cursor;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 408
    add-int/lit8 v19, v19, 0x1

    .line 410
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v19

    if-ne v0, v4, :cond_0

    .line 411
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v19

    if-ne v0, v4, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 412
    .local v16, "groupIndex":I
    :goto_2
    const/4 v4, 0x3

    .line 413
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz p4, :cond_6

    .line 414
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    :goto_3
    if-eqz v15, :cond_7

    .line 415
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v10, v4

    :goto_4
    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 412
    invoke-direct/range {v4 .. v13}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->toSection(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    move-result-object v22

    .line 417
    .local v22, "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v6, Landroid/database/MatrixCursor;

    .end local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 421
    .restart local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 422
    invoke-interface {v13}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 447
    .end local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .end local v12    # "groupVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "groupAllIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "expandedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "groupIndex":I
    .end local v17    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v19    # "i":I
    .end local v22    # "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    .end local v28    # "tempId":J
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v14, :cond_3

    .line 448
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_3
    const-string v5, "ImageResultProcessor"

    const-string v7, "[%d]ms: second step query time for [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-static {v5, v7, v8, v0}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v4

    .line 404
    .restart local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .restart local v12    # "groupVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v13    # "groupAllIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "expandedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .restart local v19    # "i":I
    .restart local v28    # "tempId":J
    :cond_4
    :try_start_1
    const-string v4, "invisible"

    goto/16 :goto_1

    .line 411
    :cond_5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    goto :goto_2

    .line 414
    .restart local v16    # "groupIndex":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 415
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 431
    .end local v16    # "groupIndex":I
    .end local v28    # "tempId":J
    :cond_8
    const/16 v21, 0x0

    .line 432
    .local v21, "oldExpandStates":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->getResult()Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->getResult()Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v20

    .line 433
    .local v20, "oldCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :goto_6
    if-eqz v20, :cond_9

    .line 434
    check-cast v20, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    .end local v20    # "oldCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->getGroupExpandStateArray()Landroid/util/SparseBooleanArray;

    move-result-object v21

    .line 436
    :cond_9
    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->mCachedGroupExpandState:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    .end local v21    # "oldExpandStates":Landroid/util/SparseBooleanArray;
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->mCachedGroupExpandState:Landroid/util/SparseBooleanArray;

    .line 438
    new-instance v27, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    .line 439
    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$500(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->mCachedGroupExpandState:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;ZLandroid/util/SparseBooleanArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    .end local v26    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .local v27, "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 441
    if-eqz p2, :cond_b

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->createRankInfoBundle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->setExtras(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    move-object/from16 v26, v27

    .line 447
    .end local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .end local v12    # "groupVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "groupAllIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "expandedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v19    # "i":I
    .end local v27    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .restart local v26    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    :cond_c
    if-eqz v14, :cond_d

    .line 448
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_d
    const-string v4, "ImageResultProcessor"

    const-string v5, "[%d]ms: second step query time for [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-static {v4, v5, v7, v0}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v26

    .line 432
    .restart local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .restart local v12    # "groupVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v13    # "groupAllIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "expandedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .restart local v19    # "i":I
    .restart local v21    # "oldExpandStates":Landroid/util/SparseBooleanArray;
    :cond_e
    const/16 v20, 0x0

    goto :goto_6

    .line 447
    .end local v21    # "oldExpandStates":Landroid/util/SparseBooleanArray;
    .end local v26    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .restart local v27    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    :catchall_1
    move-exception v4

    move-object/from16 v26, v27

    .end local v27    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .restart local v26    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    goto/16 :goto_5
.end method

.method private getQueryUri(Z)Landroid/net/Uri;
    .locals 3
    .param p1, "generateHeader"    # Z

    .prologue
    .line 455
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    .line 456
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionsServerIdSelection(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v1, "serverIdBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .line 472
    .local v2, "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    const-string v4, "serverId"

    invoke-virtual {p0, v2, v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getSuggestionExtra(Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "serverId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 474
    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 477
    .end local v0    # "serverId":Ljava/lang/String;
    .end local v2    # "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 479
    const/4 v3, 0x0

    const-string v4, "serverId IN ("

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private toRow(Landroid/database/Cursor;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "collapseVisibility"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$300()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 519
    .local v0, "objects":[Ljava/lang/Object;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 520
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 521
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 522
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    .line 523
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 524
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 525
    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 526
    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 527
    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 528
    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 529
    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 530
    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 531
    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 532
    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 533
    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 534
    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 535
    const/16 v1, 0x10

    aput-object p2, v0, v1

    .line 536
    return-object v0
.end method

.method private toSection(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "items"    # Landroid/database/Cursor;
    .param p3, "createTime"    # Ljava/lang/Long;
    .param p4, "createDate"    # Ljava/lang/Integer;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "expandedTitle"    # Ljava/lang/String;
    .param p7, "rankValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;"
        }
    .end annotation

    .prologue
    .line 489
    .local p8, "visibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p9, "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_IMAGE_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    .line 490
    invoke-virtual {v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;

    invoke-direct {v3, p1, p2}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;)V

    invoke-direct {v0, p1, v2, v3}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 492
    .local v0, "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v1, "sectionExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "all_ids"

    const-string v3, ","

    invoke-static {v3, p9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    if-eqz p4, :cond_0

    .line 495
    const-string v2, "create_date"

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_0
    if-eqz p3, :cond_1

    .line 498
    const-string v2, "create_time"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_1
    if-eqz p5, :cond_2

    .line 501
    const-string/jumbo v2, "title"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_2
    if-eqz p7, :cond_3

    .line 504
    const-string v2, "rank_value"

    invoke-interface {v1, v2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_3
    if-eqz p8, :cond_4

    .line 508
    const-string v2, "collapse_visible_ids"

    const-string v3, ","

    invoke-static {v3, p8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_4
    if-eqz p6, :cond_5

    .line 511
    const-string v2, "expand_title"

    invoke-interface {v1, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_5
    new-instance v2, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;

    invoke-direct {v2, v1}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;->setSectionExtras(Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;)V

    .line 514
    return-object v0
.end method


# virtual methods
.method protected createSuggestionResult(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 14
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .param p4, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            "Lcom/miui/gallery/search/core/result/ErrorInfo;",
            ")",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 144
    .local v10, "startTime":J
    const/4 v9, 0x0

    .line 145
    .local v9, "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getSuggestionsServerIdSelection(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "serverIdSelection":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->supportExpand(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, p1, v0, v1, v8}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->doSimpleQuery(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Ljava/lang/String;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v9

    .line 166
    :cond_0
    :goto_0
    const-string v2, "ImageResultProcessor"

    const-string v3, "[%d]ms: query time for [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v2, v3, v4, v0}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    new-instance v2, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v2, v0, v9, v1}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    return-object v2

    .line 153
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, "collapsedGroupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v7, "collapsedVisibleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v5, "createDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v8, v6, v7, v5}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->doExpandableFirstStepQuery(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 160
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 162
    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->doExpandableSecondStepQuery(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v9

    goto :goto_0
.end method

.method protected doSimpleQuery(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Ljava/lang/String;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .locals 3
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .param p4, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    if-eqz p3, :cond_1

    const-string v1, "date"

    invoke-virtual {p3}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->doSimpleQueryWithRankValue(Ljava/util/List;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/QueryInfo;Ljava/lang/String;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    .line 179
    .local v0, "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p0, p3}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->createRankInfoBundle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->setExtras(Landroid/os/Bundle;)V

    .line 182
    :cond_0
    return-object v0

    .line 176
    .end local v0    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->doSimpleQueryWithDate(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Ljava/lang/String;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    move-result-object v0

    .restart local v0    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    goto :goto_0
.end method

.method protected doSimpleQueryWithDate(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Ljava/lang/String;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .locals 28
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    .line 188
    const/16 v20, 0x0

    .line 190
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "%s %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v7, "alias_create_time"

    aput-object v7, v6, v4

    const/4 v7, 0x1

    if-eqz p2, :cond_3

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getOrder()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getOrder()Ljava/lang/String;

    move-result-object v4

    .line 192
    :goto_0
    aput-object v4, v6, v7

    .line 190
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, "order":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getQueryUri(Z)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$100()[Ljava/lang/String;

    move-result-object v6

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->appendNotInSecretSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 193
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 195
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 196
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_timeline_group_start_locations"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 197
    .local v22, "groupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_timeline_group_start_pos"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 200
    .local v23, "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v24, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v12, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 204
    .local v12, "imageGroupCursor":Landroid/database/MatrixCursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v19, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v25, 0x0

    .local v25, "i":I
    :cond_0
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    .line 206
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 207
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v4, "visible"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->toRow(Landroid/database/Cursor;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v25, v25, 0x1

    .line 212
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v25

    if-ne v0, v4, :cond_0

    .line 213
    :cond_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v25

    if-ne v0, v4, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    .line 214
    .local v21, "groupIndex":I
    :goto_2
    const/4 v4, 0x3

    .line 215
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 216
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 214
    invoke-direct/range {v10 .. v19}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->toSection(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    move-result-object v26

    .line 217
    .local v26, "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v12, Landroid/database/MatrixCursor;

    .end local v12    # "imageGroupCursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 221
    .restart local v12    # "imageGroupCursor":Landroid/database/MatrixCursor;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 229
    .end local v9    # "order":Ljava/lang/String;
    .end local v12    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .end local v19    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v21    # "groupIndex":I
    .end local v22    # "groupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v25    # "i":I
    .end local v26    # "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_2

    .line 230
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 191
    :cond_3
    :try_start_1
    const-string v4, "date"

    .line 192
    invoke-static {v4}, Lcom/miui/gallery/search/SearchConstants;->getDefaultOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 213
    .restart local v9    # "order":Ljava/lang/String;
    .restart local v12    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .restart local v19    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v22    # "groupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .restart local v25    # "i":I
    :cond_4
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    goto :goto_2

    .line 224
    :cond_5
    new-instance v27, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Z)V

    .line 225
    .local v27, "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    if-eqz v20, :cond_6

    .line 230
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v12    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .end local v19    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v22    # "groupLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v25    # "i":I
    .end local v27    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    :cond_6
    :goto_3
    return-object v27

    .line 229
    :cond_7
    if-eqz v20, :cond_8

    .line 230
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_8
    const/16 v27, 0x0

    goto :goto_3
.end method

.method protected doSimpleQueryWithRankValue(Ljava/util/List;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/QueryInfo;Ljava/lang/String;)Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .locals 31
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .param p3, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p4, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v20, "rankValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v25, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v23, "serverIdToRankValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v24, "serverIdToTitleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .line 249
    .local v26, "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    const-string v5, "rankValue"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getSuggestionExtra(Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 250
    .local v18, "rankValue":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    const-string v18, "#"

    .line 253
    :cond_1
    const-string v5, "serverId"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getSuggestionExtra(Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 254
    .local v22, "serverId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 255
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 256
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 259
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface/range {v26 .. v26}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v28

    .line 263
    .local v28, "title":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 264
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    .end local v18    # "rankValue":Ljava/lang/String;
    .end local v22    # "serverId":Ljava/lang/String;
    .end local v26    # "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .end local v28    # "title":Ljava/lang/String;
    :cond_4
    const-string v4, "#"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    const-string v4, "DESC"

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 272
    const/4 v4, 0x0

    const-string v5, "#"

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 277
    :goto_1
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v19, "rankValueIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v14, 0x0

    .line 281
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->getQueryUri(Z)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$100()[Ljava/lang/String;

    move-result-object v6

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->appendNotInSecretSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 281
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 283
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 284
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_8

    .line 285
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 286
    const/16 v4, 0xc

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 287
    .restart local v22    # "serverId":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 288
    .restart local v18    # "rankValue":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 289
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 290
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 274
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "i":I
    .end local v18    # "rankValue":Ljava/lang/String;
    .end local v19    # "rankValueIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v22    # "serverId":Ljava/lang/String;
    :cond_7
    const-string v4, "#"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 298
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "rankValueIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_8
    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 300
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v15, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v13, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v29, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_9
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 307
    .local v11, "groupRankValue":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/SparseIntArray;

    .line 308
    .local v17, "indexes":Landroid/util/SparseIntArray;
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 309
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 310
    .local v6, "imageGroupCursor":Landroid/database/MatrixCursor;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_b

    .line 311
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 312
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const/16 v4, 0xc

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 314
    .restart local v28    # "title":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 315
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_a
    const-string/jumbo v4, "visible"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->toRow(Landroid/database/Cursor;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 318
    const-string v4, "ImageResultProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On add image "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0xc

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 320
    .end local v28    # "title":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 321
    invoke-static {}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$400()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    .line 320
    invoke-direct/range {v4 .. v13}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->toSection(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    move-result-object v21

    .line 322
    .local v21, "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 326
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 334
    .end local v6    # "imageGroupCursor":Landroid/database/MatrixCursor;
    .end local v11    # "groupRankValue":Ljava/lang/String;
    .end local v13    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v16    # "i":I
    .end local v17    # "indexes":Landroid/util/SparseIntArray;
    .end local v21    # "section":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    .end local v29    # "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_c

    .line 335
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 329
    .restart local v13    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .restart local v29    # "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    :try_start_2
    new-instance v27, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15, v4}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Z)V

    .line 330
    .local v27, "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v4}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    if-eqz v14, :cond_e

    .line 335
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 339
    .end local v13    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    .end local v27    # "suggestionCursor":Lcom/miui/gallery/search/resultpage/ImageResultSuggestionCursor;
    .end local v29    # "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    :goto_5
    return-object v27

    .line 334
    :cond_f
    if-eqz v14, :cond_10

    .line 335
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_10
    const/16 v27, 0x0

    goto :goto_5
.end method

.method protected getSuggestionExtra(Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 562
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected supportExpand(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z
    .locals 2
    .param p1, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->access$500(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "date"

    .line 558
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    .locals 7
    .param p1, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v2

    .line 542
    .local v2, "imageSuggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    if-eqz v2, :cond_1

    .line 543
    invoke-virtual {v2}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 544
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "serverId"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "serverId":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;

    const-string v5, "serverId"

    invoke-direct {v1, v5, v3}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v1, "extras":Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 547
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    .local v0, "column":Ljava/lang/String;
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionExtras(Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;)V

    .line 553
    .end local v1    # "extras":Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;
    .end local v3    # "serverId":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v2
.end method
