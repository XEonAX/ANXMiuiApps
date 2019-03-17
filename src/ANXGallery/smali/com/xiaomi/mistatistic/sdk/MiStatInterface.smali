.class public abstract Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# static fields
.field private static sABTestInitialized:Z

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    .line 51
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return-void
.end method

.method private static checkCategory(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 772
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->b:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    .line 774
    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Lcom/xiaomi/mistatistic/sdk/controller/t$a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Category does not meet the specification."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkInitialized()Z
    .locals 2

    .prologue
    .line 758
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-nez v0, :cond_0

    .line 759
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The SDK has NOT been initialized, you should invoke initialize() first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    return v0
.end method

.method private static checkKey(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 784
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    :goto_0
    return v0

    .line 787
    :cond_0
    const-string v1, "mistat_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    .line 788
    invoke-static {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Lcom/xiaomi/mistatistic/sdk/controller/t$a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Key does not meet the specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 794
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkValue(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 798
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/t$a;->c:Lcom/xiaomi/mistatistic/sdk/controller/t$a;

    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Lcom/xiaomi/mistatistic/sdk/controller/t$a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Value does not meet the specification."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x0

    .line 803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 82
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-ne v0, v7, :cond_1

    .line 87
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Do NOT initialize the SDK again."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    if-nez p0, :cond_2

    .line 92
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string v1, "Initializing sdk fails: context is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    :cond_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string v1, "Initializing sdk fails: appID or appKey is empty."

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initializing SDK: %s, %s, %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v7

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    if-nez v0, :cond_5

    move-object v0, p0

    .line 107
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p3, "mistats_default"

    :cond_6
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    .line 111
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    .line 112
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Lcom/xiaomi/mistatistic/sdk/controller/e;

    .line 114
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()V

    .line 115
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b()V

    .line 118
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v1

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;

    invoke-direct {v4, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;-><init>(Z)V

    invoke-virtual {v1, v4}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_7

    .line 130
    check-cast v0, Landroid/app/Application;

    .line 131
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/b;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 134
    :cond_7
    sput-boolean v7, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    .line 135
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The initialization consumes "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isABTestInitialized()Z
    .locals 1

    .prologue
    .line 754
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return v0
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 430
    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    .line 443
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recordCalculateEvent: The amount of params is over 15"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    const-string v2, "default_category"

    .line 450
    :goto_1
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/b;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 451
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 452
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    goto :goto_0

    :cond_3
    move-object v2, p0

    goto :goto_1
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    .line 416
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recordCountEvent: The amount of params is over 15"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    const-string p0, "default_category"

    .line 423
    :cond_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 424
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 425
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    goto :goto_0
.end method

.method public static final recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    const-string p0, "default_category"

    .line 467
    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 468
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 469
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    goto :goto_0
.end method

.method public static final recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string v1, "recordPageEnd: pageName is empty or can\'t get pageName from context."

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string v1, "recordPageStart: pageName is empty or can\'t get pageName from context"

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 324
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 473
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    const-string p0, "default_category"

    .line 484
    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 486
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    goto :goto_0
.end method

.method public static final setUploadNetwork(I)V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    and-int/lit8 v0, p0, -0x20

    if-eqz v0, :cond_2

    .line 256
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setNetworkType: networkType is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(I)V

    goto :goto_0
.end method

.method public static final setUploadPolicy(IJ)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x7800

    const-wide/16 v4, 0xc00

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 217
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    if-eqz p0, :cond_2

    if-eq p0, v6, :cond_2

    .line 225
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setUploadPolicy: Policy(%d) is invalid."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    if-nez p0, :cond_4

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    const-wide/32 v0, 0x15f90

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 229
    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setUploadPolicy: value(interval of UPLOAD_POLICY_INTERVAL) should be set between %d and %d."

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/32 v4, 0x15f90

    .line 230
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const-wide/32 v4, 0x5265c00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 229
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_4
    if-ne p0, v6, :cond_6

    cmp-long v0, p1, v8

    if-gtz v0, :cond_5

    cmp-long v0, p1, v4

    if-gez v0, :cond_6

    .line 234
    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setUploadPolicy: value(size of UPLOAD_POLICY_BATCH) should be set between %d and %d."

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 234
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_6
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(IJ)V

    goto/16 :goto_0
.end method
