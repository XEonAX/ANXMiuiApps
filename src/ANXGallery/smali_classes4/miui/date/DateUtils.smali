.class public Lmiui/date/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FORMAT_12HOUR:I = 0x10

.field public static final FORMAT_24HOUR:I = 0x20

.field public static final FORMAT_ABBREV_ALL:I = 0x7000

.field public static final FORMAT_ABBREV_MONTH:I = 0x1000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x2000

.field public static final FORMAT_NO_AM_PM:I = 0x40

.field public static final FORMAT_NUMERIC_DATE:I = 0x8000

.field public static final FORMAT_SHOW_BRIEF_TIME:I = 0xc

.field public static final FORMAT_SHOW_DATE:I = 0x380

.field public static final FORMAT_SHOW_HOUR:I = 0x8

.field public static final FORMAT_SHOW_MILLISECOND:I = 0x1

.field public static final FORMAT_SHOW_MINUTE:I = 0x4

.field public static final FORMAT_SHOW_MONTH:I = 0x100

.field public static final FORMAT_SHOW_MONTH_DAY:I = 0x80

.field public static final FORMAT_SHOW_SECOND:I = 0x2

.field public static final FORMAT_SHOW_TIME:I = 0xf

.field public static final FORMAT_SHOW_TIME_ZONE:I = 0x800

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x400

.field public static final FORMAT_SHOW_YEAR:I = 0x200

.field private static final xL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 206
    new-instance v0, Lmiui/date/DateUtils$1;

    invoke-direct {v0}, Lmiui/date/DateUtils$1;-><init>()V

    .line 207
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/DateUtils;->xL:Lmiui/util/Pools$Pool;

    .line 206
    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static I(I)I
    .locals 5

    .line 505
    const v0, 0x8000

    and-int v1, p0, v0

    const/16 v2, 0x200

    const/16 v3, 0x100

    const/16 v4, 0x80

    if-ne v1, v0, :cond_6

    .line 506
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v2, :cond_2

    .line 507
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v3, :cond_1

    .line 508
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_0

    .line 509
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month_day:I

    goto/16 :goto_0

    .line 511
    :cond_0
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month:I

    goto/16 :goto_0

    .line 514
    :cond_1
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_year:I

    goto/16 :goto_0

    .line 517
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v3, :cond_4

    .line 518
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_3

    .line 519
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_month_day:I

    goto/16 :goto_0

    .line 521
    :cond_3
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_month:I

    goto/16 :goto_0

    .line 524
    :cond_4
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_5

    .line 525
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_day:I

    goto/16 :goto_0

    .line 527
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no any time date"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 531
    :cond_6
    and-int/lit16 v0, p0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 532
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v2, :cond_9

    .line 533
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v3, :cond_8

    .line 534
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_7

    .line 535
    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_year_month_day:I

    goto :goto_0

    .line 537
    :cond_7
    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_year_month:I

    goto :goto_0

    .line 540
    :cond_8
    sget p0, Lcom/miui/internal/R$string;->fmt_date_year:I

    goto :goto_0

    .line 543
    :cond_9
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v3, :cond_b

    .line 544
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_a

    .line 545
    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_month_day:I

    goto :goto_0

    .line 547
    :cond_a
    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_month:I

    goto :goto_0

    .line 550
    :cond_b
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_c

    .line 551
    sget p0, Lcom/miui/internal/R$string;->fmt_date_day:I

    goto :goto_0

    .line 553
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no any time date"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 558
    :cond_d
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v2, :cond_10

    .line 559
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v3, :cond_f

    .line 560
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_e

    .line 561
    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_year_month_day:I

    goto :goto_0

    .line 563
    :cond_e
    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_year_month:I

    goto :goto_0

    .line 566
    :cond_f
    sget p0, Lcom/miui/internal/R$string;->fmt_date_year:I

    goto :goto_0

    .line 569
    :cond_10
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v3, :cond_12

    .line 570
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_11

    .line 571
    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_month_day:I

    goto :goto_0

    .line 573
    :cond_11
    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_month:I

    goto :goto_0

    .line 576
    :cond_12
    and-int/2addr p0, v4

    if-ne p0, v4, :cond_13

    .line 577
    sget p0, Lcom/miui/internal/R$string;->fmt_date_day:I

    .line 584
    :goto_0
    return p0

    .line 579
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no any time date"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static J(I)I
    .locals 1

    .line 589
    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_short:I

    goto :goto_0

    .line 590
    :cond_0
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_long:I

    .line 589
    :goto_0
    return p0
.end method

.method private static K(I)I
    .locals 3

    .line 608
    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-ne v0, v1, :cond_7

    .line 609
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_3

    .line 610
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_1

    .line 611
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_0

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date_time_timezone:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date_time:I

    goto :goto_0

    .line 613
    :cond_1
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_2

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date_timezone:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date:I

    goto :goto_0

    .line 616
    :cond_3
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_5

    .line 617
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_4

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_time_timezone:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_time:I

    goto :goto_0

    .line 619
    :cond_5
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_6

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_timezone:I

    goto :goto_0

    :cond_6
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday:I

    goto :goto_0

    .line 623
    :cond_7
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_b

    .line 624
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_9

    .line 625
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_8

    sget p0, Lcom/miui/internal/R$string;->fmt_date_time_timezone:I

    goto :goto_0

    :cond_8
    sget p0, Lcom/miui/internal/R$string;->fmt_date_time:I

    goto :goto_0

    .line 627
    :cond_9
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_a

    sget p0, Lcom/miui/internal/R$string;->fmt_date_timezone:I

    goto :goto_0

    :cond_a
    sget p0, Lcom/miui/internal/R$string;->fmt_date:I

    goto :goto_0

    .line 630
    :cond_b
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_d

    .line 631
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_c

    sget p0, Lcom/miui/internal/R$string;->fmt_time_timezone:I

    goto :goto_0

    :cond_c
    sget p0, Lcom/miui/internal/R$string;->fmt_time:I

    goto :goto_0

    .line 633
    :cond_d
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_e

    sget p0, Lcom/miui/internal/R$string;->fmt_timezone:I

    goto :goto_0

    :cond_e
    sget p0, Lcom/miui/internal/R$string;->empty:I

    .line 637
    :goto_0
    return p0
.end method

.method private static a(Lmiui/date/Calendar;I)I
    .locals 4

    .line 405
    and-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x4000

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 406
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_2

    .line 408
    and-int/lit8 p1, p1, -0x2

    .line 409
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_2

    .line 411
    and-int/lit8 p1, p1, -0x3

    .line 412
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_2

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_2

    .line 413
    and-int/lit8 p1, p1, -0x5

    .line 420
    :cond_2
    and-int/lit8 p0, p1, 0x8

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-ne p0, v0, :cond_e

    .line 421
    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_a

    .line 422
    and-int/lit8 p0, p1, 0x40

    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 423
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_5

    .line 424
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_4

    .line 425
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_3

    .line 426
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis:I

    goto/16 :goto_0

    .line 428
    :cond_3
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second:I

    goto/16 :goto_0

    .line 431
    :cond_4
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    goto/16 :goto_0

    .line 434
    :cond_5
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour:I

    goto/16 :goto_0

    .line 437
    :cond_6
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_9

    .line 438
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_8

    .line 439
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_7

    .line 440
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    goto :goto_0

    .line 442
    :cond_7
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_pm:I

    goto :goto_0

    .line 445
    :cond_8
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_pm:I

    goto :goto_0

    .line 448
    :cond_9
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    goto :goto_0

    .line 452
    :cond_a
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_d

    .line 453
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_c

    .line 454
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_b

    .line 455
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second_millis:I

    goto :goto_0

    .line 457
    :cond_b
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second:I

    goto :goto_0

    .line 460
    :cond_c
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute:I

    goto :goto_0

    .line 463
    :cond_d
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour:I

    goto :goto_0

    .line 467
    :cond_e
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_11

    .line 468
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_10

    .line 469
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_f

    .line 470
    sget p0, Lcom/miui/internal/R$string;->fmt_time_minute_second_millis:I

    goto :goto_0

    .line 472
    :cond_f
    sget p0, Lcom/miui/internal/R$string;->fmt_time_minute_second:I

    goto :goto_0

    .line 475
    :cond_10
    sget p0, Lcom/miui/internal/R$string;->fmt_time_minute:I

    goto :goto_0

    .line 478
    :cond_11
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_13

    .line 479
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_12

    .line 480
    sget p0, Lcom/miui/internal/R$string;->fmt_time_second_millis:I

    goto :goto_0

    .line 482
    :cond_12
    sget p0, Lcom/miui/internal/R$string;->fmt_time_second:I

    goto :goto_0

    .line 485
    :cond_13
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_14

    .line 486
    sget p0, Lcom/miui/internal/R$string;->fmt_time_millis:I

    .line 494
    :goto_0
    return p0

    .line 488
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no any time date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatDateTime(JI)Ljava/lang/String;
    .locals 2

    .line 251
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 252
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 254
    return-object p0
.end method

.method public static formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 287
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 288
    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 290
    return-object p0
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;
    .locals 1

    .line 323
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 5

    .line 357
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 359
    and-int/lit8 v1, p3, 0x10

    if-nez v1, :cond_1

    and-int/lit8 v1, p3, 0x20

    if-nez v1, :cond_1

    .line 360
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr p3, v1

    .line 363
    :cond_1
    invoke-static {p3}, Lmiui/date/DateUtils;->K(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 367
    sget-object v3, Lmiui/date/DateUtils;->xL:Lmiui/util/Pools$Pool;

    invoke-interface {v3}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/date/Calendar;

    .line 368
    invoke-virtual {v3, p4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 369
    invoke-virtual {v3, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 371
    const/4 p1, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_1
    if-ge p1, p2, :cond_5

    .line 372
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 373
    const/16 v4, 0x44

    if-eq p4, v4, :cond_4

    const/16 v4, 0x54

    if-eq p4, v4, :cond_3

    const/16 v4, 0x57

    if-eq p4, v4, :cond_2

    .line 384
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 375
    :cond_2
    invoke-static {p3}, Lmiui/date/DateUtils;->J(I)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    goto :goto_2

    .line 381
    :cond_3
    invoke-static {v3, p3}, Lmiui/date/DateUtils;->a(Lmiui/date/Calendar;I)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    goto :goto_2

    .line 378
    :cond_4
    invoke-static {p3}, Lmiui/date/DateUtils;->I(I)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    nop

    .line 371
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 388
    :cond_5
    invoke-virtual {v3, p0, v2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v2}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 390
    sget-object p1, Lmiui/date/DateUtils;->xL:Lmiui/util/Pools$Pool;

    invoke-interface {p1, v3}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 391
    return-object p0
.end method

.method public static formatRelativeTime(JZ)Ljava/lang/String;
    .locals 2

    .line 647
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 648
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 649
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 650
    return-object p0
.end method

.method public static formatRelativeTime(JZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 661
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 662
    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 663
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 664
    return-object p0
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZ)Ljava/lang/StringBuilder;
    .locals 1

    .line 675
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 687
    move-object/from16 v4, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 688
    cmp-long v7, v5, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ltz v7, :cond_0

    .line 689
    move v7, v9

    goto :goto_0

    .line 688
    :cond_0
    nop

    .line 689
    move v7, v8

    :goto_0
    sub-long v10, v5, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    .line 691
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v12

    .line 692
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 694
    nop

    .line 696
    const-wide/16 v14, 0x3c

    cmp-long v14, v10, v14

    if-gtz v14, :cond_8

    if-nez p3, :cond_8

    .line 698
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1e

    if-eqz v7, :cond_4

    .line 699
    if-nez v14, :cond_1

    .line 701
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_a_hour_ago:I

    goto :goto_1

    .line 702
    :cond_1
    cmp-long v3, v10, v3

    if-nez v3, :cond_2

    .line 704
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_half_hour_ago:I

    goto :goto_1

    .line 705
    :cond_2
    cmp-long v1, v10, v1

    if-nez v1, :cond_3

    .line 707
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_less_than_one_minute_ago:I

    goto :goto_1

    .line 709
    :cond_3
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_num_minutes_ago:I

    goto :goto_1

    .line 712
    :cond_4
    if-nez v14, :cond_5

    .line 714
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_a_hour:I

    goto :goto_1

    .line 715
    :cond_5
    cmp-long v3, v10, v3

    if-nez v3, :cond_6

    .line 717
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_half_hour:I

    goto :goto_1

    .line 718
    :cond_6
    cmp-long v1, v10, v1

    if-nez v1, :cond_7

    .line 720
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_less_than_one_minute:I

    goto :goto_1

    .line 722
    :cond_7
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_num_minutes:I

    .line 725
    :goto_1
    long-to-int v2, v10

    invoke-virtual {v12, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 726
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    goto/16 :goto_8

    .line 728
    :cond_8
    sget-object v10, Lmiui/date/DateUtils;->xL:Lmiui/util/Pools$Pool;

    invoke-interface {v10}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/date/Calendar;

    .line 729
    invoke-virtual {v10, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 730
    invoke-virtual {v10, v5, v6}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 731
    invoke-virtual {v10, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    .line 732
    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    .line 733
    const/16 v14, 0xe

    invoke-virtual {v10, v14}, Lmiui/date/Calendar;->get(I)I

    move-result v15

    .line 734
    invoke-virtual {v10, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 735
    invoke-virtual {v10, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    if-ne v5, v8, :cond_9

    .line 736
    move v5, v9

    goto :goto_2

    .line 735
    :cond_9
    nop

    .line 736
    const/4 v5, 0x0

    :goto_2
    const/16 v8, 0x300c

    if-eqz v5, :cond_a

    invoke-virtual {v10, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v11, v9, :cond_a

    .line 737
    nop

    .line 738
    invoke-static {v0, v1, v2, v8, v4}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 739
    :cond_a
    if-eqz v5, :cond_c

    invoke-virtual {v10, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    sub-int v9, v11, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v13, 0x2

    if-ge v9, v13, :cond_c

    .line 740
    if-eqz v7, :cond_b

    sget v3, Lcom/miui/internal/R$string;->yesterday:I

    goto :goto_3

    :cond_b
    sget v3, Lcom/miui/internal/R$string;->tomorrow:I

    :goto_3
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    nop

    .line 743
    invoke-static {v0, v1, v2, v8, v4}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 744
    :cond_c
    if-eqz v5, :cond_e

    invoke-virtual {v10, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v8, 0x7

    if-ge v6, v8, :cond_e

    invoke-virtual {v10, v14}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    if-le v15, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    :goto_4
    if-ne v7, v6, :cond_e

    .line 745
    const/16 v3, 0x340c

    .line 746
    invoke-static {v0, v1, v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 747
    :cond_e
    if-eqz v5, :cond_10

    .line 748
    if-eqz p3, :cond_f

    const/16 v3, 0x18c

    goto :goto_5

    :cond_f
    const/16 v3, 0x180

    :goto_5
    const/16 v5, 0x3000

    or-int/2addr v3, v5

    .line 749
    invoke-static {v0, v1, v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 751
    :cond_10
    if-eqz p3, :cond_11

    const/16 v3, 0x38c

    goto :goto_6

    :cond_11
    const/16 v3, 0x380

    :goto_6
    const/16 v5, 0x3000

    or-int/2addr v3, v5

    .line 752
    invoke-static {v0, v1, v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    .line 754
    :goto_7
    sget-object v1, Lmiui/date/DateUtils;->xL:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v10}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 756
    :goto_8
    return-object v0
.end method
