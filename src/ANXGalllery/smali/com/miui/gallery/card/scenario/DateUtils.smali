.class public Lcom/miui/gallery/card/scenario/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public static getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDateFormat(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 330
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 331
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDatePeriodGraceful(JJ)Ljava/lang/String;
    .locals 12
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    const v11, 0x7f0c0590

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->isSameDay(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v6

    .line 224
    :goto_0
    return-object v6

    .line 185
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-lez v8, :cond_8

    cmp-long v8, p2, p0

    if-lez v8, :cond_8

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 187
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "language":Ljava/lang/String;
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->isSameYear(JJ)Z

    move-result v2

    .line 189
    .local v2, "isSameYear":Z
    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->isSameMonth(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v6

    .line 192
    .local v1, "isSameMonth":Z
    :goto_1
    new-instance v8, Ljava/util/Locale;

    const-string/jumbo v9, "zh"

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 193
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "startTimeStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 195
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getDayLocale(J)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "endTimeStr":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v7

    aput-object v0, v9, v6

    invoke-virtual {v8, v11, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v1    # "isSameMonth":Z
    .end local v5    # "startTimeStr":Ljava/lang/String;
    :cond_1
    move v1, v7

    .line 189
    goto :goto_1

    .line 196
    .restart local v1    # "isSameMonth":Z
    .restart local v5    # "startTimeStr":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 197
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonthDayLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_2

    .line 199
    .end local v0    # "endTimeStr":Ljava/lang/String;
    :cond_3
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_2

    .line 201
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v5    # "startTimeStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/util/Locale;

    const-string v9, "en"

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 202
    if-eqz v1, :cond_5

    .line 204
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonthDayLocale(J)Ljava/lang/String;

    move-result-object v5

    .line 207
    .restart local v5    # "startTimeStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getDayLocale(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearLocale(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_2

    .line 208
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v5    # "startTimeStr":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 209
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonthDayLocale(J)Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5    # "startTimeStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_2

    .line 212
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v5    # "startTimeStr":Ljava/lang/String;
    :cond_6
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v5

    .line 213
    .restart local v5    # "startTimeStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_2

    .line 217
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v5    # "startTimeStr":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    .line 218
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthDayLocale(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .line 217
    invoke-virtual {v8, v11, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 224
    .end local v1    # "isSameMonth":Z
    .end local v2    # "isSameYear":Z
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_8
    const-string v6, ""

    goto/16 :goto_0
.end method

.method public static getDateTime(J)J
    .locals 4
    .param p0, "time"    # J

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 143
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 144
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDayLocale(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 305
    const/16 v0, 0x80

    .line 306
    .local v0, "flag":I
    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEndDayOfYearTime(J)J
    .locals 6
    .param p0, "time"    # J

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 404
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 405
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 406
    const/4 v1, 0x5

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 407
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 408
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 409
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 410
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 411
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getFirstDayOfMonthTime(J)J
    .locals 4
    .param p0, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getFirstDayOfYearTime(J)J
    .locals 4
    .param p0, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 387
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 388
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 393
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getLastDayEndOfMonthTime(J)J
    .locals 8
    .param p0, "time"    # J

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 120
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 121
    .local v1, "month":I
    if-ne v1, v7, :cond_0

    .line 122
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 123
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 124
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 130
    :goto_0
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 134
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 126
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static getLastNYearDateTime(IJ)J
    .locals 7
    .param p0, "year"    # I
    .param p1, "time"    # J

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    if-ge p0, v4, :cond_0

    const/4 p0, 0x1

    .line 155
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 158
    .local v1, "day":I
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 161
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 164
    const-wide/16 v2, -0x1

    .line 166
    :goto_0
    return-wide v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static getLastNYearMonthTime(IIZ)J
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "isStart"    # Z

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 355
    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 356
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 357
    :cond_1
    if-le p1, v8, :cond_2

    const/16 p1, 0xb

    .line 359
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 360
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 363
    if-eqz p2, :cond_3

    .line 364
    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 365
    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 377
    :goto_0
    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 378
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 379
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 380
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 382
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 368
    :cond_3
    if-ne p1, v8, :cond_4

    .line 369
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 370
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 371
    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 373
    :cond_4
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 374
    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static getLastNYearMonthTime(IJZ)J
    .locals 7
    .param p0, "year"    # I
    .param p1, "time"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 343
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 344
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 345
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 347
    .local v2, "month":I
    :try_start_0
    invoke-static {p0, v2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearMonthTime(IIZ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 351
    :goto_0
    return-wide v4

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DateUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastNYearMonthTime fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public static getLastWeekDayTime(IJ)J
    .locals 7
    .param p0, "weekDay"    # I
    .param p1, "time"    # J

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, "calendar":Ljava/util/Calendar;
    const-wide/32 v2, 0x240c8400

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    if-le p0, v5, :cond_1

    .line 73
    :cond_0
    const/4 p0, 0x7

    .line 76
    :cond_1
    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->set(II)V

    .line 77
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getMonth(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 415
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 416
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 417
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getMonthDayLocale(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 313
    const/16 v0, 0x180

    .line 314
    .local v0, "flag":I
    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMonthLocale(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 297
    const/16 v0, 0x100

    .line 298
    .local v0, "flag":I
    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMonthPeriodGraceful(JJ)Ljava/lang/String;
    .locals 12
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    const v11, 0x7f0c0590

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 239
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->isSameMonth(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v5

    .line 273
    :goto_0
    return-object v5

    .line 242
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_5

    cmp-long v5, p2, p0

    if-lez v5, :cond_5

    .line 243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 244
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "language":Ljava/lang/String;
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->isSameYear(JJ)Z

    move-result v1

    .line 248
    .local v1, "isSameYear":Z
    new-instance v5, Ljava/util/Locale;

    const-string/jumbo v6, "zh"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 249
    if-eqz v1, :cond_1

    .line 250
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "startTimeStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonthLocale(J)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "endTimeStr":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 253
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v4    # "startTimeStr":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v4

    .line 254
    .restart local v4    # "startTimeStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_1

    .line 256
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v4    # "startTimeStr":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    if-eqz v1, :cond_3

    .line 258
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonthLocale(J)Ljava/lang/String;

    move-result-object v4

    .line 259
    .restart local v4    # "startTimeStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_1

    .line 261
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v4    # "startTimeStr":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v4

    .line 262
    .restart local v4    # "startTimeStr":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "endTimeStr":Ljava/lang/String;
    goto :goto_1

    .line 266
    .end local v0    # "endTimeStr":Ljava/lang/String;
    .end local v4    # "startTimeStr":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    .line 267
    invoke-static {p0, p1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2, p3}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 266
    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 273
    .end local v1    # "isSameYear":Z
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_5
    const-string v5, ""

    goto/16 :goto_0
.end method

.method public static getNextMonthTime(J)J
    .locals 6
    .param p0, "time"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 88
    .local v1, "month":I
    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    .line 89
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 91
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 92
    .local v2, "year":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static getSeason(J)I
    .locals 4
    .param p0, "time"    # J

    .prologue
    const/4 v2, 0x2

    .line 528
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 529
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 530
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 531
    .local v1, "month":I
    packed-switch v1, :pswitch_data_0

    .line 548
    const/4 v2, 0x3

    :goto_0
    :pswitch_0
    return v2

    .line 535
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    .line 539
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSeasonEndTime(J)J
    .locals 10
    .param p0, "time"    # J

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 477
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 478
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 480
    .local v1, "month":I
    packed-switch v1, :pswitch_data_0

    .line 502
    const/4 v2, 0x1

    .line 507
    .local v2, "seasonEnd":I
    :goto_0
    if-ne v2, v8, :cond_0

    .line 508
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 509
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 510
    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 516
    :goto_1
    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 517
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 518
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 519
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 520
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 484
    .end local v2    # "seasonEnd":I
    :pswitch_0
    const/4 v2, 0x4

    .line 485
    .restart local v2    # "seasonEnd":I
    goto :goto_0

    .line 489
    .end local v2    # "seasonEnd":I
    :pswitch_1
    const/4 v2, 0x7

    .line 490
    .restart local v2    # "seasonEnd":I
    goto :goto_0

    .line 495
    .end local v2    # "seasonEnd":I
    :pswitch_2
    const/16 v2, 0xa

    .line 496
    .restart local v2    # "seasonEnd":I
    goto :goto_0

    .line 512
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 513
    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getSeasonStartTime(J)J
    .locals 6
    .param p0, "time"    # J

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 428
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 429
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 431
    .local v1, "month":I
    packed-switch v1, :pswitch_data_0

    .line 453
    const/16 v2, 0xb

    .line 458
    .local v2, "seasonStart":I
    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 460
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 461
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 462
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 463
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 464
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 466
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 435
    .end local v2    # "seasonStart":I
    :pswitch_0
    const/4 v2, 0x2

    .line 436
    .restart local v2    # "seasonStart":I
    goto :goto_0

    .line 440
    .end local v2    # "seasonStart":I
    :pswitch_1
    const/4 v2, 0x5

    .line 441
    .restart local v2    # "seasonStart":I
    goto :goto_0

    .line 446
    .end local v2    # "seasonStart":I
    :pswitch_2
    const/16 v2, 0x8

    .line 447
    .restart local v2    # "seasonStart":I
    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getYearLocale(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 321
    const/16 v0, 0x200

    .line 322
    .local v0, "flag":I
    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getYearMonthDayLocale(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 281
    const/16 v0, 0x380

    .line 282
    .local v0, "flag":I
    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getYearMonthLocale(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 289
    const/16 v0, 0x300

    .line 290
    .local v0, "flag":I
    invoke-static {p0, p1, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSameDay(JJ)Z
    .locals 8
    .param p0, "leftTime"    # J
    .param p2, "rightTime"    # J

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 554
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 555
    .local v0, "calendarA":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 556
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 557
    .local v1, "calendarB":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 558
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 559
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 560
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 561
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSameMonth(JJ)Z
    .locals 6
    .param p0, "leftTime"    # J
    .param p2, "rightTime"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 565
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 566
    .local v0, "calendarA":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 567
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 568
    .local v1, "calendarB":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 569
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 570
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSameYear(JJ)Z
    .locals 6
    .param p0, "leftTime"    # J
    .param p2, "rightTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 575
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 576
    .local v0, "calendarA":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 577
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 578
    .local v1, "calendarB":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 579
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static withinTime(JJJ)Z
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J
    .param p4, "withIn"    # J

    .prologue
    .line 583
    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
