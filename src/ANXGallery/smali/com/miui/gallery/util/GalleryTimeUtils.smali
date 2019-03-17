.class public Lcom/miui/gallery/util/GalleryTimeUtils;
.super Ljava/lang/Object;
.source "GalleryTimeUtils.java"


# static fields
.field private static sDefaultFormatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static sUTCFormatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sUTCFormatter:Ljava/lang/ThreadLocal;

    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sDefaultFormatter:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static createSimpleDateFormat(Z)Ljava/text/SimpleDateFormat;
    .locals 2
    .param p0, "isUTC"    # Z

    .prologue
    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "sd":Ljava/text/SimpleDateFormat;
    if-eqz p0, :cond_0

    .line 37
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "dateTimeString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    :goto_0
    return-object v2

    .line 57
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 59
    .local v1, "pos":Ljava/text/ParsePosition;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDefaultDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getDateTime(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateTimeString"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 46
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 49
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getDefaultDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sDefaultFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sDefaultFormatter:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->createSimpleDateFormat(Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sDefaultFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getGpsDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v3

    .line 78
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dateTimeString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 82
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 84
    .local v2, "pos":Ljava/text/ParsePosition;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/GalleryTimeUtils;->getUTCDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getGpsDateTime(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 67
    .local v0, "datetime":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 70
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getTakenDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)J
    .locals 7
    .param p0, "GPSDate"    # Ljava/lang/String;
    .param p1, "GPSTime"    # Ljava/lang/String;
    .param p2, "exifDateTime"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "modifyTime"    # J

    .prologue
    .line 92
    move-wide v2, p5

    .line 93
    .local v2, "time":J
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 94
    .local v0, "gpsDate":Ljava/util/Date;
    if-nez v0, :cond_2

    .line 97
    invoke-static {p2}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDateTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 98
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 99
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_1

    .line 100
    move-wide v2, p3

    .line 114
    :cond_0
    :goto_0
    return-wide v2

    .line 102
    :cond_1
    move-wide v2, p5

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p2}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 107
    .local v1, "localDate":Ljava/util/Date;
    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lcom/miui/gallery/util/GalleryDateUtils;->isSameDate(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getUTCDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sUTCFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sUTCFormatter:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->createSimpleDateFormat(Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 24
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/GalleryTimeUtils;->sUTCFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method
