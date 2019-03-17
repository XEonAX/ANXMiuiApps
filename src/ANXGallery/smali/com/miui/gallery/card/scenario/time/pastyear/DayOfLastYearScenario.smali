.class public abstract Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "DayOfLastYearScenario.java"


# instance fields
.field private final mMaxYear:I

.field private final mTags:[Ljava/lang/Integer;

.field private mYear:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Integer;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "maxYearCount"    # I
    .param p3, "tags"    # [Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 17
    iput v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mYear:I

    .line 23
    if-lez p2, :cond_0

    .end local p2    # "maxYearCount":I
    :goto_0
    iput p2, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mMaxYear:I

    .line 24
    iput-object p3, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mTags:[Ljava/lang/Integer;

    .line 25
    return-void

    .restart local p2    # "maxYearCount":I
    :cond_0
    move p2, v0

    .line 23
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
    .line 70
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 71
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 72
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mYear:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 8
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
    .line 52
    iget-object v1, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mTags:[Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 53
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getEventStartEndTime(Ljava/util/List;)[J

    move-result-object v7

    .line 54
    .local v7, "startEndTime":[J
    if-eqz v7, :cond_0

    array-length v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->setStartTime(J)V

    .line 56
    const/4 v0, 0x1

    aget-wide v0, v7, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->setEndTime(J)V

    .line 57
    invoke-super {p0}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->loadMediaItem()Ljava/util/List;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
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
    .line 29
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getRecordTargetTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 30
    .local v6, "recordTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 32
    .local v0, "currentTime":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mMaxYear:I

    if-gt v2, v7, :cond_2

    .line 33
    iput v2, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mYear:I

    .line 34
    iget v7, p0, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->mYear:I

    invoke-static {v7, v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearDateTime(IJ)J

    move-result-wide v4

    .line 35
    .local v4, "lastYearDateTime":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->setTargetTime(J)V

    .line 39
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->setStartTime(J)V

    .line 40
    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v4

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->setEndTime(J)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->loadMediaItem()Ljava/util/List;

    move-result-object v3

    .line 43
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/DayOfLastYearScenario;->getMinImageCount()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 44
    const/4 v7, 0x1

    .line 47
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "lastYearDateTime":J
    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method
