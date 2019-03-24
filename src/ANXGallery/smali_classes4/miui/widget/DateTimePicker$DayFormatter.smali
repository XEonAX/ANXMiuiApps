.class public Lmiui/widget/DateTimePicker$DayFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayFormatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .locals 2

    .line 471
    invoke-static {}, Lmiui/widget/DateTimePicker;->eA()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 472
    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 474
    invoke-static {}, Lmiui/widget/DateTimePicker;->eA()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 476
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 477
    const/4 p1, 0x5

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 478
    const/16 p1, 0x9

    invoke-virtual {v0, p1, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 479
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/16 p3, 0x1180

    invoke-static {p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const/16 v0, 0x2400

    invoke-static {p2, p3, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p2

    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 487
    :cond_1
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/16 p3, 0x3580

    invoke-static {p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
