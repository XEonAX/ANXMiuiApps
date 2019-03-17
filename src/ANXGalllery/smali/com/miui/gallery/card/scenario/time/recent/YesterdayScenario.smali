.class public abstract Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "YesterdayScenario.java"


# instance fields
.field private final mTags:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I[Ljava/lang/Integer;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tags"    # [Ljava/lang/Integer;

    .prologue
    .line 19
    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 20
    iput-object p2, p0, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->mTags:[Ljava/lang/Integer;

    .line 21
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
    .line 53
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 54
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 55
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
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
    .line 40
    iget-object v1, p0, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->mTags:[Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 41
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->getEventStartEndTime(Ljava/util/List;)[J

    move-result-object v7

    .line 42
    .local v7, "startEndTime":[J
    if-eqz v7, :cond_0

    array-length v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->setStartTime(J)V

    .line 44
    const/4 v0, 0x1

    aget-wide v0, v7, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->setEndTime(J)V

    .line 45
    invoke-super {p0}, Lcom/miui/gallery/card/scenario/time/TimeScenario;->loadMediaItem()Ljava/util/List;

    move-result-object v0

    .line 47
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
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    const-wide/32 v8, 0x5265c00

    .line 25
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 26
    .local v0, "currentTime":J
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->getRecordTargetTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 28
    .local v4, "recordTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sub-long v6, v0, v8

    invoke-static {v6, v7}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v2

    .line 29
    .local v2, "dayStartTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const/4 v5, 0x0

    .line 35
    :goto_0
    return v5

    .line 32
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->setTargetTime(J)V

    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->setStartTime(J)V

    .line 34
    add-long v6, v2, v8

    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;->setEndTime(J)V

    .line 35
    const/4 v5, 0x1

    goto :goto_0
.end method
