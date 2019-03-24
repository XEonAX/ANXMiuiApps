.class public Lmiui/widget/DateTimePicker$LunarFormatter;
.super Lmiui/widget/DateTimePicker$DayFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarFormatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .locals 2

    .line 497
    invoke-static {}, Lmiui/widget/DateTimePicker;->eA()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 498
    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 500
    invoke-static {}, Lmiui/widget/DateTimePicker;->eA()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 502
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 503
    const/4 p1, 0x5

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 504
    const/16 p1, 0x9

    invoke-virtual {v0, p1, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 505
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$string;->fmt_chinese_date:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
