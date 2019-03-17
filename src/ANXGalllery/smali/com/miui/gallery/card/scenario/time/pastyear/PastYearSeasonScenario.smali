.class public Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "PastYearSeasonScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x68

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 23
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 4
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
    .line 70
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 71
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getMonthPeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 6
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
    .line 58
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 60
    .local v2, "startTime":J
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeason(J)I

    move-result v0

    .line 61
    .local v0, "season":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "seasons":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, v1

    if-le v4, v0, :cond_0

    .line 63
    aget-object v4, v1, v0

    .line 65
    :goto_0
    return-object v4

    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_PARTY:[Ljava/lang/Integer;

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_FOODS:[Ljava/lang/Integer;

    .line 49
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_ACTIVITY:[Ljava/lang/Integer;

    sget-object v2, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_SPORTS:[Ljava/lang/Integer;

    .line 50
    invoke-static {v1, v2}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 52
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 20
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
    .line 27
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v14

    .line 29
    .local v14, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 30
    .local v4, "currentTime":J
    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeasonStartTime(J)J

    move-result-wide v6

    .line 32
    .local v6, "firstDayofSeason":J
    cmp-long v15, v4, v6

    if-lez v15, :cond_2

    sub-long v16, v4, v6

    const-wide/32 v18, 0xa4cb800

    cmp-long v15, v16, v18

    if-gez v15, :cond_2

    .line 33
    const/4 v15, 0x1

    invoke-static {v15, v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearDateTime(IJ)J

    move-result-wide v8

    .line 34
    .local v8, "lastYearSameTime":J
    invoke-static {v8, v9}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeasonStartTime(J)J

    move-result-wide v12

    .line 35
    .local v12, "pastYearSeasonStart":J
    invoke-static {v8, v9}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeasonEndTime(J)J

    move-result-wide v10

    .line 36
    .local v10, "pastYearSeasonEnd":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v15, v10, v16

    if-ltz v15, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 37
    :cond_0
    const/4 v15, 0x0

    .line 43
    .end local v8    # "lastYearSameTime":J
    .end local v10    # "pastYearSeasonEnd":J
    .end local v12    # "pastYearSeasonStart":J
    :goto_0
    return v15

    .line 39
    .restart local v8    # "lastYearSameTime":J
    .restart local v10    # "pastYearSeasonEnd":J
    .restart local v12    # "pastYearSeasonStart":J
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->setStartTime(J)V

    .line 40
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearSeasonScenario;->setEndTime(J)V

    .line 41
    const/4 v15, 0x1

    goto :goto_0

    .line 43
    .end local v8    # "lastYearSameTime":J
    .end local v10    # "pastYearSeasonEnd":J
    .end local v12    # "pastYearSeasonStart":J
    :cond_2
    const/4 v15, 0x0

    goto :goto_0
.end method
