.class public Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "LastWeekendScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x6e

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 22
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
    .line 51
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 52
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v2

    .line 55
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 2
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
    .line 46
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c05bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    const/4 v9, 0x7

    const/4 v7, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, v7}, Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 28
    .local v1, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 29
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 30
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 32
    .local v6, "weekDay":I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    .line 33
    invoke-static {v9, v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastWeekDayTime(IJ)J

    move-result-wide v4

    .line 34
    .local v4, "lastSaturdayTime":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 41
    .end local v4    # "lastSaturdayTime":J
    :cond_0
    :goto_0
    return v7

    .line 37
    .restart local v4    # "lastSaturdayTime":J
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;->setStartTime(J)V

    .line 38
    const-wide/32 v8, 0xa4cb800

    add-long/2addr v8, v4

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/card/scenario/time/recent/LastWeekendScenario;->setEndTime(J)V

    .line 39
    const/4 v7, 0x1

    goto :goto_0
.end method
