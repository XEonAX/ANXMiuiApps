.class public abstract Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "TagMonthlyScenario.java"


# instance fields
.field private final mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mTags:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I[Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "tags"    # [Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x4

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 30
    iput-object p2, p0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mTags:[Ljava/lang/Integer;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mSelectedImages:Ljava/util/List;

    .line 32
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
    .line 95
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 96
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 97
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v2

    .line 99
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getFirstImageTimeOfTags([Ljava/lang/Integer;)J
    .locals 12
    .param p1, "tags"    # [Ljava/lang/Integer;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 67
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 68
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "joinedTags":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultFlag & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sceneTagA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (%s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sceneTagB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (%s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sceneTagC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (%s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "selection":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "limit":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v9

    aput-object v7, v2, v10

    aput-object v7, v2, v11

    .line 77
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "imageDatetime asc"

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 81
    .local v6, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageDateTime()J

    move-result-wide v2

    .line 84
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 1
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
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mSelectedImages:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 22
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
    .line 36
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v13

    .line 37
    .local v13, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v16, 0x0

    .line 38
    .local v16, "searchStartTime":J
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 39
    .local v14, "recordTime":Ljava/lang/Long;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v5, v20, v16

    if-lez v5, :cond_0

    .line 40
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_0

    .line 44
    .end local v14    # "recordTime":Ljava/lang/Long;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mSelectedImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 45
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 47
    .local v10, "currentTime":J
    move-wide/from16 v18, v16

    .line 48
    .local v18, "startTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-gtz v4, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mTags:[Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->getFirstImageTimeOfTags([Ljava/lang/Integer;)J

    move-result-wide v18

    .line 51
    :cond_2
    :goto_1
    const-wide v4, 0x134fd9000L

    sub-long v4, v10, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_4

    .line 52
    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/card/scenario/DateUtils;->getFirstDayOfMonthTime(J)J

    move-result-wide v6

    .line 53
    .local v6, "start":J
    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastDayEndOfMonthTime(J)J

    move-result-wide v8

    .line 54
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mTags:[Ljava/lang/Integer;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v12

    .line 55
    .local v12, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->getMinImageCount()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->mSelectedImages:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->setStartTime(J)V

    .line 58
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/card/scenario/time/free/TagMonthlyScenario;->setEndTime(J)V

    .line 59
    const/4 v4, 0x1

    .line 63
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v12    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    :goto_2
    return v4

    .line 61
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v12    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    :cond_3
    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/card/scenario/DateUtils;->getNextMonthTime(J)J

    move-result-wide v18

    .line 62
    goto :goto_1

    .line 63
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v12    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method
