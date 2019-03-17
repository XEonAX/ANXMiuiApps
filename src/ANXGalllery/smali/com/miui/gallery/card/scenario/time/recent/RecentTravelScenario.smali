.class public Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;
.super Lcom/miui/gallery/card/scenario/time/LocationScenario;
.source "RecentTravelScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x72

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/LocationScenario;-><init>(III)V

    .line 38
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c059c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Record;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v22

    .line 45
    .local v22, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v18

    .line 46
    .local v18, "now":J
    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v14

    .line 47
    .local v14, "endTime":J
    const-wide v4, 0x9a7ec800L

    sub-long v24, v14, v4

    .line 49
    .local v24, "startTime":J
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v8, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->TIME_SELECTION:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 51
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v9, v10

    const/4 v10, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "mixedDateTime DESC"

    new-instance v10, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;)V

    .line 49
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 60
    .local v20, "pastImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    const/4 v4, 0x0

    .line 107
    :goto_0
    return v4

    .line 64
    :cond_0
    const/4 v11, 0x0

    .line 65
    .local v11, "cityNow":Ljava/lang/String;
    const/4 v12, 0x0

    .line 66
    .local v12, "cityRecentImage":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/16 v21, 0x0

    .line 67
    .local v21, "recentCityImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 68
    .local v17, "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    if-nez v11, :cond_2

    .line 69
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    .line 70
    goto :goto_1

    .line 73
    :cond_2
    if-eqz v21, :cond_3

    .line 74
    iget-object v5, v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 75
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_3
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    move-object/from16 v12, v17

    .line 84
    iget-wide v6, v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    sub-long v6, v18, v6

    const-wide/32 v8, 0xf731400

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 85
    new-instance v21, Ljava/util/LinkedList;

    .end local v21    # "recentCityImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .restart local v21    # "recentCityImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 94
    .end local v17    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_5
    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 95
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 96
    .local v13, "first":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 97
    .local v16, "last":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    iget-wide v6, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x337f9800

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    iget-wide v4, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    .line 98
    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 100
    iget-object v4, v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->mTargetCity:Ljava/lang/String;

    .line 101
    iget-wide v4, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->setStartTime(J)V

    .line 102
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->setEndTime(J)V

    .line 103
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 107
    .end local v13    # "first":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v16    # "last":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
