.class public Lcom/adobe/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPDateTime;


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private nanoSeconds:I

.field private second:I

.field private timeZone:Ljava/util/TimeZone;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 69
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 70
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 74
    .local v2, "zone":Ljava/util/TimeZone;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 76
    .local v1, "intCalendar":Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 81
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 82
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 83
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 84
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 85
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 86
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const v4, 0xf4240

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 87
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 88
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "dt"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, 0x2

    .line 278
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/XMPDateTime;

    .line 279
    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v0, v4, v2

    .line 280
    .local v0, "d":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 282
    rem-long v2, v0, v6

    long-to-int v2, v2

    .line 288
    .end local p1    # "dt":Ljava/lang/Object;
    :goto_0
    return v2

    .line 287
    .restart local p1    # "dt":Ljava/lang/Object;
    :cond_0
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    .end local p1    # "dt":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 288
    rem-long v2, v0, v6

    long-to-int v2, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 316
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 317
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 318
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 319
    const/4 v1, 0x1

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 320
    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 321
    const/4 v1, 0x5

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 322
    const/16 v1, 0xb

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 323
    const/16 v1, 0xc

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 324
    const/16 v1, 0xd

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 325
    const/16 v1, 0xe

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 326
    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return v0
.end method

.method public getISO8601String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    return v0
.end method

.method public getNanoSecond()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 2
    .param p1, "day"    # I

    .prologue
    const/16 v1, 0x1f

    const/4 v0, 0x1

    .line 186
    if-ge p1, v0, :cond_0

    .line 188
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    if-le p1, v1, :cond_1

    .line 192
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    .line 196
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 215
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 216
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 233
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 234
    return-void
.end method

.method public setMonth(I)V
    .locals 2
    .param p1, "month"    # I

    .prologue
    const/16 v1, 0xc

    const/4 v0, 0x1

    .line 157
    if-ge p1, v0, :cond_0

    .line 159
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    if-le p1, v1, :cond_1

    .line 163
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    .line 167
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0
.end method

.method public setNanoSecond(I)V
    .locals 0
    .param p1, "nanoSecond"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 270
    return-void
.end method

.method public setSecond(I)V
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 251
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 252
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 308
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getISO8601String()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
