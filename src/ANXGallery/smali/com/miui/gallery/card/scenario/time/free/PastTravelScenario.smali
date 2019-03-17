.class public Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;
.super Lcom/miui/gallery/card/scenario/time/LocationScenario;
.source "PastTravelScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 31
    const/16 v0, 0xc9

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/gallery/card/scenario/time/LocationScenario;-><init>(III)V

    .line 32
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
    .line 84
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

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
    .line 79
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
    .line 36
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v16

    .line 38
    .local v16, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->ALL_IMAGE_SELECTION:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mixedDateTime ASC"

    new-instance v10, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;)V

    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 48
    .local v11, "allImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    const/16 v17, 0x0

    .line 51
    .local v17, "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v12, 0x0

    .line 53
    .local v12, "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    .line 54
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 55
    .local v15, "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    if-nez v17, :cond_1

    .line 56
    move-object/from16 v17, v15

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 57
    :cond_1
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    iget-object v5, v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    add-int/lit8 v4, v13, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    check-cast v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 59
    .restart local v12    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    iget-wide v6, v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getMediaIdsByStartEndTime(JJ)Ljava/util/List;

    move-result-object v14

    .line 60
    .local v14, "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v4, v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x337f9800

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-eqz v14, :cond_2

    .line 61
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getMinImageCount()I

    move-result v5

    if-le v4, v5, :cond_2

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    .line 62
    invoke-static {v4, v5}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->mTargetCity:Ljava/lang/String;

    .line 64
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->setStartTime(J)V

    .line 65
    iget-wide v4, v12, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->setEndTime(J)V

    .line 66
    const/4 v4, 0x1

    .line 74
    .end local v12    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v13    # "i":I
    .end local v14    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v17    # "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :goto_2
    return v4

    .line 68
    .restart local v12    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .restart local v13    # "i":I
    .restart local v14    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .restart local v17    # "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_2
    move-object/from16 v17, v15

    goto :goto_1

    .line 74
    .end local v12    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v13    # "i":I
    .end local v14    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v17    # "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method
