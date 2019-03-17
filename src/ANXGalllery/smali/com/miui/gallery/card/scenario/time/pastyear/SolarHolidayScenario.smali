.class public Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;
.super Lcom/miui/gallery/card/scenario/time/HolidayScenario;
.source "SolarHolidayScenario.java"


# instance fields
.field private final mHolidayConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/time/HolidayConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const v5, 0x7fffffff

    const/4 v4, 0x1

    .line 24
    const/16 v0, 0x66

    invoke-direct {p0, v0, v4, v6}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;-><init>(III)V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v5, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0xc9

    invoke-direct {v1, v2, v5, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0xca

    const/4 v3, 0x3

    invoke-direct {v1, v2, v5, v3}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0xcb

    invoke-direct {v1, v2, v5, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0xcc

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0xcd

    invoke-direct {v1, v2, v5, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method


# virtual methods
.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
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
    .line 74
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getHolidayFromRecord(Lcom/miui/gallery/card/scenario/Record;Z)I

    move-result v0

    .line 75
    .local v0, "holiday":I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getYearFromRecord(Lcom/miui/gallery/card/scenario/Record;)I

    move-result v1

    .line 76
    .local v1, "year":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 77
    invoke-static {v1, v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getHolidayNameForStory(II)Ljava/lang/String;

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getTargetTime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getHolidayFromTargetTime(JZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 12
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
    .line 39
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 40
    .local v6, "now":J
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 41
    .local v0, "calendar":Lmiui/date/Calendar;
    invoke-virtual {v0, v6, v7}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getRecordTargetTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 45
    .local v8, "recordTargetTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v10, 0x8

    if-gt v2, v10, :cond_3

    .line 46
    iput v2, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mYear:I

    .line 47
    invoke-static {v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getHoliday(Lmiui/date/Calendar;)I

    move-result v1

    .line 48
    .local v1, "holiday":I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_0

    .line 50
    const/4 v10, 0x0

    .line 69
    .end local v1    # "holiday":I
    :goto_1
    return v10

    .line 53
    .restart local v1    # "holiday":I
    :cond_0
    iget v10, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mYear:I

    invoke-static {v10, v6, v7}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearDateTime(IJ)J

    move-result-wide v4

    .line 55
    .local v4, "lastYearDateTime":J
    iget-object v10, p0, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->mHolidayConfig:Ljava/util/List;

    const/4 v11, 0x0

    invoke-virtual {p0, v4, v5, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getStartEndTime(JLjava/util/List;Z)[J

    move-result-object v9

    .line 57
    .local v9, "startEndTime":[J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    const/4 v10, 0x0

    aget-wide v10, v9, v10

    invoke-virtual {p0, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->setStartTime(J)V

    .line 61
    const/4 v10, 0x1

    aget-wide v10, v9, v10

    invoke-virtual {p0, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->setEndTime(J)V

    .line 62
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->setTargetTime(J)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->loadMediaItem()Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/SolarHolidayScenario;->getMinImageCount()I

    move-result v11

    if-lt v10, v11, :cond_1

    .line 66
    const/4 v10, 0x1

    goto :goto_1

    .line 69
    .end local v1    # "holiday":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "lastYearDateTime":J
    .end local v9    # "startEndTime":[J
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method
