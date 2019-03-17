.class public Lcom/xiaomi/mistatistic/sdk/controller/h;
.super Ljava/lang/Object;
.source "EventDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/h$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static volatile c:Lcom/xiaomi/mistatistic/sdk/controller/k;


# instance fields
.field private d:Z

.field private e:Lcom/xiaomi/mistatistic/sdk/a;

.field private f:Z

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    .line 36
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    .line 38
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/h$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/h;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/h;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    return-object p1
.end method

.method private static a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 9

    .prologue
    .line 510
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 511
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 512
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 515
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 516
    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 517
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 518
    iput-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    .line 519
    iput-object v6, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    .line 520
    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    .line 521
    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 522
    iput-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    .line 523
    iput-object v7, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    .line 524
    iput v8, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mAnonymous:I

    .line 525
    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/h;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    return p1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-nez v0, :cond_1

    .line 75
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "DAO"

    const-string/jumbo v3, "unbind service before bind it again!"

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "DAO"

    const-string v2, "ensureServiceBinded exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static g()Lcom/xiaomi/mistatistic/sdk/controller/k;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-nez v0, :cond_0

    .line 750
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h$a;->a()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    .line 752
    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 448
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()V

    .line 451
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 452
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v0, :cond_2

    .line 453
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 463
    :goto_0
    return v0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/mistatistic/sdk/a;->a(I)I

    move-result v0

    .line 456
    const-string v2, "DAO"

    const-string v3, "process getEventCount, result is: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string v2, "DAO"

    const-string v3, "getEventCount"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 461
    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()V

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v0, :cond_2

    .line 95
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move-object v0, v1

    .line 105
    :goto_0
    return-object v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 98
    const-string v2, "DAO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process query, result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v2, "DAO"

    const-string v3, "queryCustomEvent exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    goto :goto_0
.end method

.method public a(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_4

    .line 218
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()V

    .line 220
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v0, :cond_2

    .line 222
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :goto_0
    return-object v0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(J)Ljava/util/List;

    move-result-object v0

    .line 226
    const-string v2, "DAO"

    const-string v3, "process getAll, result size is : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "DAO"

    const-string v2, "getAllEventOrderByTimestampDescend exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 226
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 233
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(J)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 5

    .prologue
    .line 563
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    const-string/jumbo v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string/jumbo v2, "startTime"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 569
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 570
    const-string v2, "eventType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    const-string v1, "DAO"

    const-string v2, "deleteEventsByStartAndEndTS"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(JJI)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 3

    .prologue
    .line 140
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "StatEventPojo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "DAO"

    const-string v2, "insertNewEvent exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Z

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 179
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "newValue"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "DAO"

    const-string/jumbo v2, "updateEventByKeyAndCategory exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)I
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 468
    .line 469
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v11

    monitor-enter v11

    .line 472
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 473
    if-ne p1, v1, :cond_2

    .line 474
    const-string v1, "mistat_event"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 491
    :goto_0
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 498
    if-eqz v1, :cond_0

    .line 499
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_1

    .line 502
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    :cond_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :goto_1
    return v0

    .line 477
    :cond_2
    if-ne p1, v2, :cond_9

    .line 478
    :try_start_3
    const-string v1, "mistat_event"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "category IN (?, ?, ?, ?, ?, ?, ?)"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mistat_basic"

    .line 481
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mistat_pt"

    .line 482
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mistat_pv"

    .line 483
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "mistat_session"

    .line 484
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "mistat_pa"

    .line 485
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "mistat_session_extra"

    .line 486
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "mistat_monitor"

    .line 487
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 478
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 498
    :cond_3
    if-eqz v1, :cond_4

    .line 499
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_5

    .line 502
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 505
    :cond_5
    :goto_2
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v9

    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 496
    :goto_3
    :try_start_5
    const-string v2, "DAO"

    const-string v3, "Error while getting count from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 498
    if-eqz v1, :cond_6

    .line 499
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_6
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_5

    .line 502
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_2

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 498
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v10, :cond_7

    .line 499
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_7
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_8

    .line 502
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 504
    :cond_8
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 498
    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_4

    .line 495
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_9
    move-object v1, v10

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 110
    .line 113
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v9

    monitor-enter v9

    .line 115
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string v3, "category=? AND key=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 129
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 135
    :cond_2
    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    return-object v8

    .line 125
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 126
    :goto_1
    :try_start_3
    const-string v2, "DAO"

    const-string v3, "queryCustomEvent exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    if-eqz v1, :cond_3

    .line 129
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 128
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v8, :cond_4

    .line 129
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_5

    .line 132
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 134
    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 238
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 239
    const/4 v1, 0x0

    .line 241
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v11

    monitor-enter v11

    .line 243
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 244
    if-nez v0, :cond_2

    .line 282
    if-eqz v10, :cond_0

    .line 283
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v9

    .line 290
    :goto_0
    return-object v0

    .line 248
    :cond_2
    :try_start_2
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string/jumbo v3, "ts < ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 251
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ts DESC"

    const/16 v8, 0x1f4

    .line 255
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 256
    if-eqz v8, :cond_b

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 257
    const-string/jumbo v1, "ts"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 259
    const-string/jumbo v3, "ts<? AND ts>=? AND anonymous=?"

    .line 260
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 261
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 262
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x2

    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 263
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v4, v2

    .line 265
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ts DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    move-object v1, v8

    .line 273
    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    :cond_3
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 276
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v0

    if-nez v0, :cond_3

    .line 282
    :cond_4
    if-eqz v1, :cond_5

    .line 283
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_5
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_6

    .line 286
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 289
    :cond_6
    :goto_3
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    .line 290
    goto/16 :goto_0

    .line 263
    :cond_7
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 280
    :goto_4
    :try_start_7
    const-string v2, "DAO"

    const-string v3, "Error while reading data from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 282
    if-eqz v1, :cond_8

    .line 283
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_8
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_6

    .line 286
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_3

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    .line 282
    :catchall_1
    move-exception v0

    move-object v8, v10

    :goto_5
    if-eqz v8, :cond_9

    .line 283
    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_9
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_a

    .line 286
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 288
    :cond_a
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 282
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_5

    .line 279
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_b
    move-object v1, v8

    goto :goto_2
.end method

.method public b(JJI)V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 581
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v1

    monitor-enter v1

    .line 584
    :try_start_0
    const-string v0, "DAO"

    const-string v2, "deleteEventsByStartAndEndTS, start:%d, end:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 586
    if-ne p5, v6, :cond_3

    .line 587
    const-string v3, "mistat_event"

    const-string/jumbo v4, "ts<=? AND ts>=? AND anonymous=?"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 590
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v6

    .line 587
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    :cond_0
    :goto_1
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 611
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 614
    :cond_1
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    return-void

    .line 590
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_3
    if-ne p5, v7, :cond_0

    .line 593
    const-string v3, "mistat_event"

    const-string/jumbo v4, "ts<=? AND ts>=? AND category IN (?, ?, ?, ?, ?, ?, ?) AND anonymous=?"

    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 597
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const-string v6, "mistat_basic"

    .line 598
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const-string v6, "mistat_pt"

    .line 599
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const-string v6, "mistat_pv"

    .line 600
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    const-string v6, "mistat_session"

    .line 601
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x6

    const-string v6, "mistat_pa"

    .line 602
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x7

    const-string v6, "mistat_session_extra"

    .line 603
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x8

    const-string v6, "mistat_monitor"

    .line 604
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v6, 0x9

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 605
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v5, v6

    .line 593
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 607
    :catch_0
    move-exception v0

    .line 608
    :try_start_3
    const-string v2, "DAO"

    const-string v3, "Error while deleting event by ts from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 610
    :try_start_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 611
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto/16 :goto_2

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 605
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    goto :goto_3

    .line 610
    :catchall_1
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v2, :cond_5

    .line 611
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 613
    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 7

    .prologue
    .line 155
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    const-string v0, "category"

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "key"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "ts"

    iget-wide v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string/jumbo v2, "type"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "value"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "extra"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "anonymous"

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mAnonymous:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v2

    monitor-enter v2

    .line 166
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    const-string v3, "mistat_event"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 175
    :cond_0
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    return-void

    .line 157
    :cond_1
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    goto :goto_2

    .line 161
    :cond_4
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    goto :goto_3

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_2
    const-string v1, "DAO"

    const-string v3, "Error to insert data into DB, key= %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_4

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 171
    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_5

    .line 172
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 174
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v1

    monitor-enter v1

    .line 201
    :try_start_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 203
    const-string v3, "mistat_event"

    const-string v4, "category=? AND key=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 213
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    :try_start_2
    const-string v2, "DAO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to update data from DB, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 209
    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v2, :cond_1

    .line 210
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 212
    :cond_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public c(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 294
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_4

    .line 295
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()V

    .line 297
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v0, :cond_2

    .line 299
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :goto_0
    return-object v0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->c(J)Ljava/util/List;

    move-result-object v0

    .line 303
    const-string v2, "DAO"

    const-string v3, "process getBasicEventsOrderByTsDescend, result size is : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "DAO"

    const-string v2, "getBasicEventsOrderByTsDescend exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 303
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 310
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(J)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 668
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_3

    .line 669
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()V

    .line 671
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v0, :cond_2

    .line 673
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 683
    :goto_0
    return v0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a;->a()Z

    move-result v0

    .line 676
    const-string v2, "DAO"

    const-string v3, "process hasMonitorEvent , result is: %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    const-string v2, "DAO"

    const-string v3, "hasMonitorEvent"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 681
    goto :goto_0

    .line 683
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public d(J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 315
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 316
    const/4 v1, 0x0

    .line 318
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v11

    monitor-enter v11

    .line 320
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    .line 349
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 350
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v9

    .line 353
    :goto_0
    return-object v0

    .line 324
    :cond_0
    :try_start_2
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string v3, "category IN (?, ?, ?, ?, ?, ?, ?) AND anonymous=?"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mistat_basic"

    .line 327
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mistat_pt"

    .line 328
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mistat_pv"

    .line 329
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "mistat_session"

    .line 330
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "mistat_pa"

    .line 331
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "mistat_session_extra"

    .line 332
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "mistat_monitor"

    .line 333
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x7

    iget-boolean v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->d:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 334
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ts DESC"

    const/16 v8, 0x1f4

    .line 338
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 324
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 340
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 343
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 349
    :cond_2
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 350
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 352
    :goto_2
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v9

    .line 353
    goto/16 :goto_0

    .line 334
    :cond_3
    const/4 v5, 0x0

    :try_start_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    goto :goto_1

    .line 346
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 347
    :goto_3
    :try_start_6
    const-string v2, "DAO"

    const-string v3, "Error while getBasicEventsOrderByTsDescendImpl"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 349
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 350
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_2

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 349
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 350
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 351
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 349
    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_4

    .line 346
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public d()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 688
    .line 690
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v11

    monitor-enter v11

    .line 692
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 693
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string v3, "category=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mistat_monitor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 699
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    if-eqz v1, :cond_0

    .line 706
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 709
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    :cond_1
    monitor-exit v11

    move v0, v8

    .line 713
    :goto_0
    return v0

    .line 705
    :cond_2
    if-eqz v1, :cond_3

    .line 706
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_4

    .line 709
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 712
    :cond_4
    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v9

    .line 713
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 703
    :goto_2
    :try_start_3
    const-string v2, "DAO"

    const-string v3, "hasMonitorEventImpl exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 705
    if-eqz v1, :cond_5

    .line 706
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_5
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_4

    .line 709
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_1

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 705
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 706
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_7

    .line 709
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 711
    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 705
    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 702
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public e(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 361
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 362
    const/4 v1, 0x0

    .line 364
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v11

    monitor-enter v11

    .line 366
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 367
    if-nez v0, :cond_2

    .line 398
    if-eqz v10, :cond_0

    .line 399
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v9

    .line 406
    :goto_0
    return-object v0

    .line 371
    :cond_2
    :try_start_2
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string/jumbo v3, "ts <= ? AND category = ? OR category = ? OR category = ? OR category = ? OR category = ? "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 379
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mistat_basic"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mistat_pa"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "mistat_session"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "mistat_pv"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "mistat_pt"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 371
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 389
    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    :cond_3
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 392
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_3

    .line 398
    :cond_4
    if-eqz v1, :cond_5

    .line 399
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_5
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_6

    .line 402
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 405
    :cond_6
    :goto_1
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v9

    .line 406
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 396
    :goto_2
    :try_start_5
    const-string v2, "DAO"

    const-string v3, "getExpiredEvents"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 398
    if-eqz v1, :cond_7

    .line 399
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_7
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_6

    .line 402
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 398
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v10, :cond_8

    .line 399
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_8
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_9

    .line 402
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 404
    :cond_9
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 398
    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 395
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public e()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 717
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v12

    monitor-enter v12

    .line 722
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 723
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string v3, "anonymous=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 726
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ts DESC"

    const/16 v8, 0x1f4

    .line 730
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 723
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 731
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_6

    move v0, v11

    .line 737
    :goto_0
    if-eqz v1, :cond_0

    .line 738
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_1

    .line 741
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 744
    :cond_1
    :goto_1
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 734
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 735
    :goto_2
    :try_start_3
    const-string v2, "DAO"

    const-string v3, "Error while isExistAnonymousData from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 737
    if-eqz v1, :cond_2

    .line 738
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_5

    .line 741
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    move v0, v10

    goto :goto_1

    .line 737
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_3

    .line 738
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_4

    .line 741
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 743
    :cond_4
    throw v0

    .line 745
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 737
    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_3

    .line 734
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_5
    move v0, v10

    goto :goto_1

    :cond_6
    move v0, v10

    goto :goto_0
.end method

.method public f(J)V
    .locals 3

    .prologue
    .line 410
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string/jumbo v1, "timeStamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 415
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string v1, "DAO"

    const-string v2, "deleteExpiredEvents"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g(J)V

    goto :goto_0
.end method

.method public g(J)V
    .locals 7

    .prologue
    .line 426
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v1

    monitor-enter v1

    .line 429
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 430
    const-string v2, "mistat_event"

    const-string/jumbo v3, "ts <= ? AND category <> ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 432
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mistat_monitor"

    aput-object v6, v4, v5

    .line 430
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 434
    if-lez v0, :cond_0

    .line 435
    const-string v2, "quality_monitor"

    const-string v3, "delete_old_events"

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 441
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 444
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    :try_start_2
    const-string v2, "DAO"

    const-string v3, "Error while deleting out-of-date data from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 441
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 440
    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v2, :cond_2

    .line 441
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 443
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public j(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 618
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_3

    .line 619
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f()V

    .line 621
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 622
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v0, :cond_2

    .line 623
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 633
    :goto_0
    return v0

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/h;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->b(J)Z

    move-result v0

    .line 626
    const-string v2, "DAO"

    const-string v3, "process queryPaEventByTs , result is: %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    const-string v2, "DAO"

    const-string v3, "queryPaEventByTs"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 631
    goto :goto_0

    .line 633
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->k(J)Z

    move-result v0

    goto :goto_0
.end method

.method public k(J)Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 638
    .line 640
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g()Lcom/xiaomi/mistatistic/sdk/controller/k;

    move-result-object v11

    monitor-enter v11

    .line 642
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 643
    const-string v1, "mistat_event"

    const/4 v2, 0x0

    const-string/jumbo v3, "ts=? AND category=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 646
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mistat_pa"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 643
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 650
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    if-eqz v1, :cond_0

    .line 657
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_1

    .line 660
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    :cond_1
    monitor-exit v11

    move v0, v8

    .line 664
    :goto_0
    return v0

    .line 656
    :cond_2
    if-eqz v1, :cond_3

    .line 657
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_4

    .line 660
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 663
    :cond_4
    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v9

    .line 664
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 654
    :goto_2
    :try_start_3
    const-string v2, "DAO"

    const-string v3, "queryPaEventByTsImpl exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 656
    if-eqz v1, :cond_5

    .line 657
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_5
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v0, :cond_4

    .line 660
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    goto :goto_1

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 656
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 657
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    if-eqz v1, :cond_7

    .line 660
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/h;->c:Lcom/xiaomi/mistatistic/sdk/controller/k;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->close()V

    .line 662
    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 656
    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 653
    :catch_1
    move-exception v0

    goto :goto_2
.end method
