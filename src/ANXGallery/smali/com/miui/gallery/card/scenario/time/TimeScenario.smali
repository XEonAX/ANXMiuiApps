.class public abstract Lcom/miui/gallery/card/scenario/time/TimeScenario;
.super Lcom/miui/gallery/card/scenario/Scenario;
.source "TimeScenario.java"


# static fields
.field protected static final NON_CAMERA_SELECTION:Ljava/lang/String;

.field protected static final TIME_SELECTION:Ljava/lang/String;


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private mTargetTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
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

    const-string v1, " > %s AND "

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

    sput-object v0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->TIME_SELECTION:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->NON_CAMERA_BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->NON_CAMERA_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flag"    # I
    .param p3, "flagDisableMask"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/Scenario;-><init>(III)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;
    .locals 14
    .param p1, "tags"    # [Ljava/lang/Integer;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 146
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "joinedTags":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/ImageFeature;->SCENE_TAG_SELECTION:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    .line 148
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 150
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "imageDatetime asc"

    const/4 v5, 0x0

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 152
    .local v9, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0, v9}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 155
    .local v8, "allImageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/gallery/card/scenario/time/TimeScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/miui/gallery/card/scenario/time/TimeScenario;->NON_CAMERA_SELECTION:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ","

    .line 156
    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/gallery/card/scenario/time/TimeScenario$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/card/scenario/time/TimeScenario$2;-><init>(Lcom/miui/gallery/card/scenario/time/TimeScenario;)V

    .line 155
    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 164
    .local v13, "nonCameraImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v13}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 167
    .local v11, "item":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v11}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    .end local v8    # "allImageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v11    # "item":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v13    # "nonCameraImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-object v9
.end method

.method protected getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;
    .locals 8
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 124
    .local v2, "startTime":J
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getRecordEndTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    sub-long v0, v4, v6

    .line 125
    .local v0, "endTime":J
    invoke-static {v2, v3, v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getDatePeriodGraceful(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getEndTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mEndTime:J

    return-wide v0
.end method

.method protected getEventStartEndTime(Ljava/util/List;)[J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x3

    if-lt v7, v10, :cond_0

    .line 189
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageDateTime()J

    move-result-wide v8

    .line 190
    .local v8, "startTime":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageDateTime()J

    move-result-wide v4

    .line 191
    .local v4, "endTime":J
    invoke-static {v8, v9}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v2

    .line 192
    .local v2, "dayStartTime":J
    const-wide/32 v10, 0x5265c00

    add-long v0, v2, v10

    .line 193
    .local v0, "dayEndTime":J
    const/4 v7, 0x2

    new-array v6, v7, [J

    .line 194
    .local v6, "result":[J
    const/4 v7, 0x0

    const-wide/32 v10, 0xa4cb80

    sub-long v10, v8, v10

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    aput-wide v10, v6, v7

    .line 195
    const/4 v7, 0x1

    const-wide/32 v10, 0xa4cb80

    add-long/2addr v10, v4

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    aput-wide v10, v6, v7

    .line 198
    .end local v0    # "dayEndTime":J
    .end local v2    # "dayStartTime":J
    .end local v4    # "endTime":J
    .end local v6    # "result":[J
    .end local v8    # "startTime":J
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 180
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    :cond_0
    return-object v1
.end method

.method protected getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIdsByStartEndTime(JJ)Ljava/util/List;
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/card/scenario/time/TimeScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v5, Lcom/miui/gallery/card/scenario/time/TimeScenario;->TIME_SELECTION:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/card/scenario/time/TimeScenario$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/card/scenario/time/TimeScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/TimeScenario;)V

    move-object v5, v4

    .line 78
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected getMonthPeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;
    .locals 8
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 130
    .local v2, "startTime":J
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getRecordEndTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    sub-long v0, v4, v6

    .line 131
    .local v0, "endTime":J
    invoke-static {v2, v3, v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonthPeriodGraceful(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getPeopleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRecordEndTime(Lcom/miui/gallery/card/scenario/Record;)J
    .locals 2
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getEndTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J
    .locals 2
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getStartTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .param p3, "convertDateStart"    # Z
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
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/scenario/Record;

    .line 205
    .local v1, "record":Lcom/miui/gallery/card/scenario/Record;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v1    # "record":Lcom/miui/gallery/card/scenario/Record;
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 211
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getRecordStartTime()J

    move-result-wide v2

    .line 212
    .local v2, "cardRecordStartTime":J
    if-eqz p3, :cond_2

    .line 213
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v2

    .line 215
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 216
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    .end local v2    # "cardRecordStartTime":J
    :cond_3
    return-object v4
.end method

.method protected getRecordTargetTime(Lcom/miui/gallery/card/scenario/Record;)J
    .locals 2
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getTargetTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getRecordTargetTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
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
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v4, "recordTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/scenario/Record;

    .line 228
    .local v1, "record":Lcom/miui/gallery/card/scenario/Record;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getRecordTargetTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v1    # "record":Lcom/miui/gallery/card/scenario/Record;
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 234
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getRecordTargetTime()J

    move-result-wide v2

    .line 235
    .local v2, "cardRecordTargetTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    .end local v2    # "cardRecordTargetTime":J
    :cond_2
    return-object v4
.end method

.method protected getSecondary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStartTime()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mStartTime:J

    return-wide v0
.end method

.method protected getTargetTime()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mTargetTime:J

    return-wide v0
.end method

.method protected getTertiaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 4
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
    .line 74
    iget-wide v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mStartTime:J

    iget-wide v2, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mEndTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->getMediaIdsByStartEndTime(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onFillScenarioRule(Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;)V
    .locals 1
    .param p1, "rule"    # Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mPriority:I

    .line 52
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getMinImageCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mMinImageCount:I

    .line 53
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getMaxImageCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mMaxImageCount:I

    .line 54
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getMinSelectedImageCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mMinSelectedImageCount:I

    .line 55
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getMaxSelectedImageCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mMaxSelectedImageCount:I

    .line 56
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy$ScenarioRule;->getTriggerInterval()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mTriggerInterval:I

    .line 58
    :cond_0
    return-void
.end method

.method protected setEndTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mEndTime:J

    .line 66
    return-void
.end method

.method protected setStartTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mStartTime:J

    .line 62
    return-void
.end method

.method public setTargetTime(J)V
    .locals 1
    .param p1, "targetTime"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/miui/gallery/card/scenario/time/TimeScenario;->mTargetTime:J

    .line 70
    return-void
.end method
