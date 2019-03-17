.class public abstract Lcom/miui/gallery/card/scenario/time/HolidayScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "HolidayScenario.java"


# instance fields
.field protected mYear:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "flag"    # I
    .param p3, "flagDisableMask"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->mYear:I

    .line 20
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
    .line 122
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getRecordTargetTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 123
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getHolidayFromRecord(Lcom/miui/gallery/card/scenario/Record;Z)I
    .locals 3
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .param p2, "isChineseHolidy"    # Z

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getRecordTargetTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 95
    .local v0, "targetTime":J
    invoke-virtual {p0, v0, v1, p2}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getHolidayFromTargetTime(JZ)I

    move-result v2

    return v2
.end method

.method protected getHolidayFromTargetTime(JZ)I
    .locals 5
    .param p1, "targetTime"    # J
    .param p3, "isChineseHolidy"    # Z

    .prologue
    .line 99
    const/4 v1, -0x1

    .line 100
    .local v1, "holiday":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 101
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 102
    .local v0, "calendar":Lmiui/date/Calendar;
    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 103
    if-eqz p3, :cond_1

    invoke-static {v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHoliday(Lmiui/date/Calendar;)I

    move-result v1

    .line 105
    .end local v0    # "calendar":Lmiui/date/Calendar;
    :cond_0
    :goto_0
    return v1

    .line 103
    .restart local v0    # "calendar":Lmiui/date/Calendar;
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getHoliday(Lmiui/date/Calendar;)I

    move-result v1

    goto :goto_0
.end method

.method protected getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->mYear:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStartEndTime(JLjava/util/List;Z)[J
    .locals 21
    .param p1, "pastYearTime"    # J
    .param p4, "isChineseHoliday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/time/HolidayConfig;",
            ">;Z)[J"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "holidayConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/HolidayConfig;>;"
    const/4 v12, 0x2

    new-array v9, v12, [J

    .line 33
    .local v9, "result":[J
    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v14

    aput-wide v14, v9, v12

    .line 34
    const/4 v12, 0x1

    const/4 v13, 0x0

    aget-wide v14, v9, v13

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    aput-wide v14, v9, v12

    .line 35
    if-eqz p4, :cond_7

    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHoliday(J)I

    move-result v2

    .line 36
    .local v2, "holiday":I
    :goto_0
    const/4 v7, 0x1

    .line 37
    .local v7, "maxContinuousDay":I
    const v8, 0x7fffffff

    .line 38
    .local v8, "previousMaxDay":I
    invoke-static/range {p3 .. p3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 39
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/card/scenario/time/HolidayConfig;

    .line 40
    .local v3, "holidayConfig":Lcom/miui/gallery/card/scenario/time/HolidayConfig;
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;->getHoliday()I

    move-result v13

    if-ne v13, v2, :cond_0

    .line 41
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;->getMaxContinuousDay()I

    move-result v7

    .line 42
    invoke-virtual {v3}, Lcom/miui/gallery/card/scenario/time/HolidayConfig;->getPreviousMaxDay()I

    move-result v8

    .line 48
    .end local v3    # "holidayConfig":Lcom/miui/gallery/card/scenario/time/HolidayConfig;
    :cond_1
    const/4 v12, 0x1

    if-le v7, v12, :cond_d

    .line 49
    const/4 v5, 0x0

    .line 50
    .local v5, "leftOffSet":I
    const/4 v11, 0x0

    .line 51
    .local v11, "rightOffSet":I
    const/4 v4, 0x1

    .line 52
    .local v4, "leftCanMove":Z
    const/4 v10, 0x1

    .line 54
    .local v10, "rightCanMove":Z
    :cond_2
    :goto_1
    add-int v12, v5, v11

    add-int/lit8 v13, v7, -0x1

    if-ge v12, v13, :cond_c

    .line 55
    if-eqz v4, :cond_3

    if-eqz v10, :cond_3

    if-le v5, v11, :cond_4

    :cond_3
    if-eqz v4, :cond_8

    if-nez v10, :cond_8

    .line 57
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 58
    const/4 v12, 0x0

    aget-wide v12, v9, v12

    const-wide/32 v14, 0x5265c00

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    const/4 v14, 0x1

    aget-wide v14, v9, v14

    const-wide/32 v16, 0x5265c00

    int-to-long v0, v5

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getMediaIdsByStartEndTime(JJ)Ljava/util/List;

    move-result-object v6

    .line 60
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getMinImageCount()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 61
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 62
    const/4 v4, 0x0

    .line 64
    :cond_6
    if-lt v5, v8, :cond_2

    .line 65
    move v5, v8

    .line 66
    const/4 v4, 0x0

    goto :goto_1

    .line 35
    .end local v2    # "holiday":I
    .end local v4    # "leftCanMove":Z
    .end local v5    # "leftOffSet":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "maxContinuousDay":I
    .end local v8    # "previousMaxDay":I
    .end local v10    # "rightCanMove":Z
    .end local v11    # "rightOffSet":I
    :cond_7
    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getHoliday(J)I

    move-result v2

    goto :goto_0

    .line 68
    .restart local v2    # "holiday":I
    .restart local v4    # "leftCanMove":Z
    .restart local v5    # "leftOffSet":I
    .restart local v7    # "maxContinuousDay":I
    .restart local v8    # "previousMaxDay":I
    .restart local v10    # "rightCanMove":Z
    .restart local v11    # "rightOffSet":I
    :cond_8
    if-eqz v4, :cond_9

    if-eqz v10, :cond_9

    if-gt v5, v11, :cond_a

    :cond_9
    if-nez v4, :cond_c

    if-eqz v10, :cond_c

    .line 70
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 71
    const/4 v12, 0x0

    aget-wide v12, v9, v12

    const-wide/32 v14, 0x5265c00

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x1

    aget-wide v14, v9, v14

    const-wide/32 v16, 0x5265c00

    int-to-long v0, v11

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getMediaIdsByStartEndTime(JJ)Ljava/util/List;

    move-result-object v6

    .line 73
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->getMinImageCount()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 74
    :cond_b
    add-int/lit8 v11, v11, -0x1

    .line 75
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 82
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_c
    const/4 v12, 0x0

    aget-wide v14, v9, v12

    int-to-long v0, v5

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x5265c00

    mul-long v16, v16, v18

    sub-long v14, v14, v16

    aput-wide v14, v9, v12

    .line 83
    const/4 v12, 0x1

    aget-wide v14, v9, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x5265c00

    mul-long v16, v16, v18

    add-long v14, v14, v16

    aput-wide v14, v9, v12

    .line 85
    .end local v4    # "leftCanMove":Z
    .end local v5    # "leftOffSet":I
    .end local v10    # "rightCanMove":Z
    .end local v11    # "rightOffSet":I
    :cond_d
    return-object v9
.end method

.method protected getYearFromRecord(Lcom/miui/gallery/card/scenario/Record;)I
    .locals 5
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;

    .prologue
    .line 109
    const/4 v1, 0x1

    .line 110
    .local v1, "year":I
    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getPrimaryKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/miui/gallery/card/scenario/time/HolidayScenario;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get year of record error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
