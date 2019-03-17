.class public Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "PastWeekendScenario.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    }
.end annotation


# static fields
.field protected static final SELECTION:Ljava/lang/String;


# instance fields
.field protected final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->CAMERA_BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mixedDateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mixedDateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 45
    const/16 v0, 0x194

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISTINCT sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->PROJECTION:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getMediaItemsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getMediaItemsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;>;"
    if-eqz p1, :cond_1

    .line 135
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v0, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;-><init>(Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$1;)V

    .line 137
    .local v0, "item":Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;->mSha1:Ljava/lang/String;

    .line 138
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;->mDateTime:J

    .line 139
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    .end local v0    # "item":Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    :catchall_0
    move-exception v2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_1
    return-object v1
.end method

.method private getWeekendStart(Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;)J
    .locals 8
    .param p1, "mediaItem"    # Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 96
    if-eqz p1, :cond_1

    iget-wide v2, p1, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;->mDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v2, p1, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;->mDateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 100
    .local v1, "weekDay":I
    if-eq v1, v7, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 101
    :cond_0
    invoke-virtual {v0, v7, v7}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 109
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "weekDay":I
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
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
    .line 124
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 125
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
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
    .line 114
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "weekendTitles":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 117
    .local v0, "random":Ljava/util/Random;
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v2, v1, v2

    .line 119
    .end local v0    # "random":Ljava/util/Random;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
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
    .line 50
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v16

    .line 51
    .local v16, "now":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v18

    .line 52
    .local v18, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v20, 0x0

    .line 53
    .local v20, "searchTime":J
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 54
    .local v19, "recordTime":Ljava/lang/Long;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v20

    if-lez v5, :cond_0

    .line 55
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_0

    .line 60
    .end local v19    # "recordTime":Ljava/lang/Long;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v8, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->SELECTION:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 62
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v9, v10

    const/4 v10, 0x1

    const-wide v24, 0x39ef8b000L

    sub-long v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "mixedDateTime ASC"

    new-instance v10, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;)V

    .line 60
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 71
    .local v11, "allImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;>;"
    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    const-wide/16 v14, 0x0

    .line 73
    .local v14, "nextTraverseTime":J
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;

    .line 74
    .local v13, "mediaItem":Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    iget-wide v6, v13, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;->mDateTime:J

    cmp-long v5, v6, v14

    if-ltz v5, :cond_2

    .line 77
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getWeekendStart(Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;)J

    move-result-wide v22

    .line 78
    .local v22, "weekEndStartTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-lez v5, :cond_2

    .line 79
    const-wide/32 v6, 0xa4cb800

    add-long v6, v6, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getMediaIdsByStartEndTime(JJ)Ljava/util/List;

    move-result-object v12

    .line 80
    .local v12, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->getMinImageCount()I

    move-result v6

    if-le v5, v6, :cond_3

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->setStartTime(J)V

    .line 82
    const-wide/32 v4, 0xa4cb800

    add-long v4, v4, v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario;->setEndTime(J)V

    .line 83
    const/4 v4, 0x1

    .line 91
    .end local v12    # "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "mediaItem":Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    .end local v14    # "nextTraverseTime":J
    .end local v22    # "weekEndStartTime":J
    :goto_2
    return v4

    .line 86
    .restart local v12    # "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v13    # "mediaItem":Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    .restart local v14    # "nextTraverseTime":J
    .restart local v22    # "weekEndStartTime":J
    :cond_3
    const-wide/32 v6, 0x240c8400

    add-long v14, v22, v6

    goto :goto_1

    .line 91
    .end local v12    # "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "mediaItem":Lcom/miui/gallery/card/scenario/time/free/PastWeekendScenario$MediaItem;
    .end local v14    # "nextTraverseTime":J
    .end local v22    # "weekEndStartTime":J
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method
