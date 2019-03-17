.class public Lcom/miui/gallery/util/assistant/HolidaysUtil;
.super Ljava/lang/Object;
.source "HolidaysUtil.java"


# static fields
.field private static final CHINESE_CALENDAR_HOLIDAYS:[[I

.field private static final HOLIDAYS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/assistant/HolidaysUtil;->CHINESE_CALENDAR_HOLIDAYS:[[I

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/assistant/HolidaysUtil;->HOLIDAYS:[[I

    return-void

    .line 57
    :array_0
    .array-data 4
        -0x1
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x65
        0x65
    .end array-data

    :array_2
    .array-data 4
        0x73
        0x66
    .end array-data

    :array_3
    .array-data 4
        0x1f9
        0x67
    .end array-data

    :array_4
    .array-data 4
        0x2c3
        0x68
    .end array-data

    :array_5
    .array-data 4
        0x32f
        0x69
    .end array-data

    .line 64
    :array_6
    .array-data 4
        0x65
        0xc8
    .end array-data

    :array_7
    .array-data 4
        0xd6
        0xc9
    .end array-data

    :array_8
    .array-data 4
        0x1f5
        0xca
    .end array-data

    :array_9
    .array-data 4
        0x259
        0xcb
    .end array-data

    :array_a
    .array-data 4
        0x3e9
        0xcc
    .end array-data

    :array_b
    .array-data 4
        0x4c9
        0xcd
    .end array-data
.end method

.method private static daysInChineseYear(Lmiui/date/Calendar;)I
    .locals 6
    .param p0, "cal"    # Lmiui/date/Calendar;

    .prologue
    const/4 v2, 0x2

    .line 138
    invoke-virtual {p0}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 139
    .local v0, "calendar":Lmiui/date/Calendar;
    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 140
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 141
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 142
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 143
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getChineseHoliday(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 129
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 130
    .local v0, "cal":Lmiui/date/Calendar;
    invoke-virtual {v0, p0, p1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 131
    invoke-static {v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHoliday(Lmiui/date/Calendar;)I

    move-result v1

    return v1
.end method

.method public static getChineseHoliday(Lmiui/date/Calendar;)I
    .locals 9
    .param p0, "cal"    # Lmiui/date/Calendar;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    add-int v1, v2, v4

    .line 110
    .local v1, "key":I
    sget-object v4, Lcom/miui/gallery/util/assistant/HolidaysUtil;->CHINESE_CALENDAR_HOLIDAYS:[[I

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 111
    .local v0, "holiday":[I
    aget v6, v0, v3

    packed-switch v6, :pswitch_data_0

    .line 118
    invoke-virtual {p0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v6

    if-nez v6, :cond_0

    aget v6, v0, v3

    if-ne v1, v6, :cond_0

    .line 119
    aget v2, v0, v8

    .line 124
    .end local v0    # "holiday":[I
    .end local v1    # "key":I
    :goto_1
    return v2

    .line 113
    .restart local v0    # "holiday":[I
    .restart local v1    # "key":I
    :pswitch_0
    invoke-static {p0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->daysInChineseYear(Lmiui/date/Calendar;)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 114
    aget v2, v0, v8

    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "holiday":[I
    .end local v1    # "key":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getChineseHolidayDatetimeOfPastYear(Lmiui/date/Calendar;I)J
    .locals 7
    .param p0, "cal"    # Lmiui/date/Calendar;
    .param p1, "years"    # I

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 151
    invoke-static {p0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getChineseHoliday(Lmiui/date/Calendar;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 152
    invoke-virtual {p0}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 153
    .local v0, "calendar":Lmiui/date/Calendar;
    invoke-virtual {p0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v0, v5, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 154
    invoke-static {v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->daysInChineseYear(Lmiui/date/Calendar;)I

    move-result v1

    .line 155
    .local v1, "daysInChineseYear":I
    invoke-virtual {p0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 157
    invoke-virtual {v0, v6, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 159
    :cond_0
    const/16 v2, 0x12

    invoke-virtual {v0, v2, v4}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 160
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v4}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 161
    const/16 v2, 0x15

    invoke-virtual {v0, v2, v4}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 162
    const/16 v2, 0x16

    invoke-virtual {v0, v2, v4}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 163
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 165
    .end local v0    # "calendar":Lmiui/date/Calendar;
    .end local v1    # "daysInChineseYear":I
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getChineseHolidayNameForStory(II)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I
    .param p1, "holiday"    # I

    .prologue
    .line 169
    add-int/lit8 v0, p1, -0x64

    .line 170
    .local v0, "index":I
    const/4 v3, 0x1

    if-le p0, v3, :cond_0

    .line 171
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "pastYearsChineseHolidays":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    if-le v3, v0, :cond_1

    .line 173
    aget-object v3, v2, v0

    .line 181
    .end local v2    # "pastYearsChineseHolidays":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 176
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "lastYearChineseHolidays":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    array-length v3, v1

    if-le v3, v0, :cond_1

    .line 178
    aget-object v3, v1, v0

    goto :goto_0

    .line 181
    .end local v1    # "lastYearChineseHolidays":[Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static getHoliday(J)I
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 96
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 97
    .local v0, "cal":Lmiui/date/Calendar;
    invoke-virtual {v0, p0, p1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 98
    invoke-static {v0}, Lcom/miui/gallery/util/assistant/HolidaysUtil;->getHoliday(Lmiui/date/Calendar;)I

    move-result v1

    return v1
.end method

.method public static getHoliday(Lmiui/date/Calendar;)I
    .locals 7
    .param p0, "cal"    # Lmiui/date/Calendar;

    .prologue
    const/4 v3, 0x0

    .line 80
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    add-int v1, v2, v4

    .line 81
    .local v1, "key":I
    sget-object v4, Lcom/miui/gallery/util/assistant/HolidaysUtil;->HOLIDAYS:[[I

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 82
    .local v0, "holiday":[I
    aget v6, v0, v3

    if-ne v6, v1, :cond_0

    .line 83
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 86
    .end local v0    # "holiday":[I
    :goto_1
    return v2

    .line 81
    .restart local v0    # "holiday":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "holiday":[I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getHolidayNameForStory(II)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I
    .param p1, "holiday"    # I

    .prologue
    .line 185
    add-int/lit16 v0, p1, -0xc8

    .line 186
    .local v0, "index":I
    const/4 v3, 0x1

    if-le p0, v3, :cond_0

    .line 187
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "pastYearsHolidays":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    if-le v3, v0, :cond_1

    .line 189
    aget-object v3, v2, v0

    .line 197
    .end local v2    # "pastYearsHolidays":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 192
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "lastYearHolidays":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    array-length v3, v1

    if-le v3, v0, :cond_1

    .line 194
    aget-object v3, v1, v0

    goto :goto_0

    .line 197
    .end local v1    # "lastYearHolidays":[Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method
