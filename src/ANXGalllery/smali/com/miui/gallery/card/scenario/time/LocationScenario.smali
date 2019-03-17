.class public abstract Lcom/miui/gallery/card/scenario/time/LocationScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "LocationScenario.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    }
.end annotation


# static fields
.field protected static final ALL_IMAGE_SELECTION:Ljava/lang/String;

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mTargetCity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->CAMERA_BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/card/scenario/time/LocationScenario;->ALL_IMAGE_SELECTION:Ljava/lang/String;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISTINCT sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/card/scenario/time/LocationScenario;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flag"    # I
    .param p3, "flagDisableMask"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 38
    return-void
.end method

.method public static getCityNameFromLoaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 104
    :cond_0
    const-string v1, ""

    .line 119
    :goto_0
    return-object v1

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/data/LocationManager;->segmentLocation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "segments":[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 109
    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    aget-object v1, v0, v5

    goto :goto_0

    .line 111
    :cond_2
    aget-object v1, v0, v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    aget-object v1, v0, v6

    goto :goto_0

    .line 113
    :cond_3
    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    aget-object v1, v0, v4

    goto :goto_0

    .line 115
    :cond_4
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 116
    aget-object v1, v0, v3

    goto :goto_0

    .line 119
    :cond_5
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMediaItemsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "shouldHasCityInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    if-eqz p0, :cond_3

    .line 74
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    new-instance v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    invoke-direct {v0}, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;-><init>()V

    .line 76
    .local v0, "item":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mSha1:Ljava/lang/String;

    .line 77
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mLocation:Ljava/lang/String;

    .line 78
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    .line 79
    iget-object v2, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/card/scenario/time/LocationScenario;->getCityNameFromLoaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    .line 80
    if-eqz p1, :cond_1

    iget-object v2, v0, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "item":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :catchall_0
    move-exception v2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_3
    return-object v1
.end method


# virtual methods
.method public findRecords()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Record;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 42
    iput-object v3, p0, Lcom/miui/gallery/card/scenario/time/LocationScenario;->mTargetCity:Ljava/lang/String;

    .line 44
    new-array v6, v10, [Ljava/lang/Integer;

    const/16 v1, 0x72

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    const/16 v1, 0xc9

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    .line 47
    .local v6, "ids":[Ljava/lang/Integer;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 48
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v1, "%s IN (%s) AND %s > %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "scenarioId"

    aput-object v7, v5, v8

    const-string v7, ","

    .line 49
    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    const-string/jumbo v7, "time"

    aput-object v7, v5, v10

    const/4 v7, 0x3

    .line 50
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x39ef8b000L

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 48
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "selection":Ljava/lang/String;
    const-string/jumbo v4, "time ASC"

    .line 52
    .local v4, "order":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/scenario/Record;

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;
    .locals 5
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/LocationScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 125
    .local v2, "startTime":J
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/LocationScenario;->getRecordEndTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 126
    .local v0, "endTime":J
    invoke-static {v2, v3, v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getDatePeriodGraceful(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/LocationScenario;->mTargetCity:Ljava/lang/String;

    return-object v0
.end method

.method protected getPeopleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
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
    .line 57
    invoke-super {p0}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->loadMediaItem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
