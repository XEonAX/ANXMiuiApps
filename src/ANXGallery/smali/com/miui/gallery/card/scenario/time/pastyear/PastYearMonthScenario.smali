.class public Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "PastYearMonthScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x67

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 23
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 3
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
    .line 69
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 70
    .local v0, "startTime":J
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
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
    .line 56
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 58
    .local v2, "startTime":J
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonth(J)I

    move-result v0

    .line 60
    .local v0, "month":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "pastYearsMonths":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, v1

    if-le v4, v0, :cond_0

    .line 62
    aget-object v4, v1, v0

    .line 64
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
    .line 46
    sget-object v0, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_PARTY:[Ljava/lang/Integer;

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_FOODS:[Ljava/lang/Integer;

    .line 47
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_ACTIVITY:[Ljava/lang/Integer;

    sget-object v2, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_SPORTS:[Ljava/lang/Integer;

    .line 48
    invoke-static {v1, v2}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 50
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 18
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
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v12

    .line 28
    .local v12, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 29
    .local v4, "currentTime":J
    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getFirstDayOfMonthTime(J)J

    move-result-wide v6

    .line 31
    .local v6, "firstDayofMonth":J
    cmp-long v13, v4, v6

    if-lez v13, :cond_2

    sub-long v14, v4, v6

    const-wide/32 v16, 0xa4cb800

    cmp-long v13, v14, v16

    if-gez v13, :cond_2

    .line 32
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v13, v4, v5, v14}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearMonthTime(IJZ)J

    move-result-wide v10

    .line 33
    .local v10, "pastYearMonthStart":J
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v13, v4, v5, v14}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearMonthTime(IJZ)J

    move-result-wide v8

    .line 34
    .local v8, "pastYearMonthEnd":J
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-ltz v13, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-ltz v13, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 35
    :cond_0
    const/4 v13, 0x0

    .line 41
    .end local v8    # "pastYearMonthEnd":J
    .end local v10    # "pastYearMonthStart":J
    :goto_0
    return v13

    .line 37
    .restart local v8    # "pastYearMonthEnd":J
    .restart local v10    # "pastYearMonthStart":J
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->setStartTime(J)V

    .line 38
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/card/scenario/time/pastyear/PastYearMonthScenario;->setEndTime(J)V

    .line 39
    const/4 v13, 0x1

    goto :goto_0

    .line 41
    .end local v8    # "pastYearMonthEnd":J
    .end local v10    # "pastYearMonthStart":J
    :cond_2
    const/4 v13, 0x0

    goto :goto_0
.end method
