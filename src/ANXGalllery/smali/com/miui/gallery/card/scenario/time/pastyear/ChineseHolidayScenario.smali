.class public Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;
.super Lcom/miui/gallery/card/scenario/time/HolidayScenario;
.source "ChineseHolidayScenario.java"


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
    const/16 v6, 0x65

    const/4 v5, 0x3

    const/4 v4, 0x1

    const v3, 0x7fffffff

    .line 24
    const/4 v0, 0x7

    invoke-direct {p0, v6, v4, v0}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;-><init>(III)V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    invoke-direct {v1, v6, v3, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0x66

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0x67

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0x68

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    const/16 v2, 0x69

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;-><init>(III)V

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
    .line 83
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getHolidayFromRecord(Lcom/miui/gallery/card/scenario/Record;Z)I

    move-result v0

    .line 84
    .local v0, "holiday":I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getYearFromRecord(Lcom/miui/gallery/card/scenario/Record;)I

    move-result v1

    .line 85
    .local v1, "year":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 86
    invoke-static {v1, v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHolidayNameForStory(II)Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getTargetTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getHolidayFromTargetTime(JZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 14
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
    .line 38
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 39
    .local v4, "now":J
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 40
    .local v0, "calendar":Lmiui/date/Calendar;
    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 42
    invoke-virtual/range {p0 .. p2}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getRecordTargetTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 44
    .local v8, "recordTargetTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v10, 0x8

    if-gt v2, v10, :cond_3

    .line 45
    iput v2, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mYear:I

    .line 46
    iget v10, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mYear:I

    invoke-static {v0, v10}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHolidayDatetimeOfPastYear(Lmiui/date/Calendar;I)J

    move-result-wide v6

    .line 48
    .local v6, "pastYearTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gtz v10, :cond_0

    .line 49
    invoke-virtual {v0}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    .line 50
    .local v1, "calendarNextDay":Lmiui/date/Calendar;
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 51
    iget v10, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mYear:I

    invoke-static {v1, v10}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHolidayDatetimeOfPastYear(Lmiui/date/Calendar;I)J

    move-result-wide v6

    .line 54
    .end local v1    # "calendarNextDay":Lmiui/date/Calendar;
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gtz v10, :cond_2

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iget-object v10, p0, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->mHolidayConfig:Ljava/util/List;

    const/4 v11, 0x1

    invoke-virtual {p0, v6, v7, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getStartEndTime(JLjava/util/List;Z)[J

    move-result-object v9

    .line 60
    .local v9, "startEndTime":[J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 63
    const/4 v10, 0x0

    aget-wide v10, v9, v10

    invoke-virtual {p0, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->setStartTime(J)V

    .line 64
    const/4 v10, 0x1

    aget-wide v10, v9, v10

    invoke-virtual {p0, v10, v11}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->setEndTime(J)V

    .line 65
    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->setTargetTime(J)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->loadMediaItem()Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/pastyear/ChineseHolidayScenario;->getMinImageCount()I

    move-result v11

    if-lt v10, v11, :cond_1

    .line 69
    const/4 v10, 0x1

    .line 72
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "pastYearTime":J
    .end local v9    # "startEndTime":[J
    :goto_1
    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method
