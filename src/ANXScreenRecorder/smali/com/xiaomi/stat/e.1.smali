.class public Lcom/xiaomi/stat/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/Executor;

.field private f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/xiaomi/stat/J;

.field private i:I

.field private j:I

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/xiaomi/stat/e;->i:I

    .line 54
    iput v0, p0, Lcom/xiaomi/stat/e;->j:I

    .line 55
    iput v0, p0, Lcom/xiaomi/stat/e;->k:I

    .line 71
    iput-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    .line 72
    iput-object p4, p0, Lcom/xiaomi/stat/e;->b:Ljava/lang/String;

    .line 73
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 60
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/xiaomi/stat/e;->i:I

    .line 54
    iput v0, p0, Lcom/xiaomi/stat/e;->j:I

    .line 55
    iput v0, p0, Lcom/xiaomi/stat/e;->k:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/stat/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/xiaomi/stat/e;->j:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/xiaomi/stat/e;->l:J

    return-wide p1
.end method

.method private a(IIJJ)V
    .locals 9

    .prologue
    .line 756
    iget-object v8, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/xiaomi/stat/o;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/o;-><init>(Lcom/xiaomi/stat/e;IIJJ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/xiaomi/stat/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-eqz v0, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    .line 85
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->e()V

    .line 90
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/r;->a()V

    .line 92
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/f;

    invoke-direct {v1, p0, p5, p4}, Lcom/xiaomi/stat/f;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/xiaomi/stat/e;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/stat/MiStatParams;Z)V
    .locals 2

    .prologue
    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/stat/MiStatParams;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    :cond_0
    const-string v0, "set user profile failed: empty property !"

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/MiStatParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/z;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/stat/z;-><init>(Lcom/xiaomi/stat/e;ZLcom/xiaomi/stat/MiStatParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/stat/a/l;)V
    .locals 1

    .prologue
    .line 782
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/l;)V

    .line 784
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->d()V

    .line 785
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;IIJJ)V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/stat/e;->a(IIJJ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/a/l;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/t;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/stat/t;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Z)V
    .locals 7

    .prologue
    .line 325
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p3}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/MiStatParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :cond_3
    iget-object v6, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/xiaomi/stat/x;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/x;-><init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(JJ)Z
    .locals 7

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    .line 635
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 639
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 640
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 641
    invoke-virtual {v2, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 643
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 644
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;JJ)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/stat/e;->a(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/e;Z)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/e;->g(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/stat/e;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/xiaomi/stat/e;->k:I

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/stat/e;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/xiaomi/stat/e;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xiaomi/stat/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/stat/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/stat/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/xiaomi/stat/MiStatParams;)Z
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xiaomi/stat/MiStatParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p1}, Lcom/xiaomi/stat/MiStatParams;->getParamsNumber()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 777
    :goto_0
    return v0

    .line 778
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()J
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/xiaomi/stat/e;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->f()V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/stat/e;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->i:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/xiaomi/stat/q;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/q;-><init>(Lcom/xiaomi/stat/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 208
    return-void
.end method

.method static synthetic f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->p()I

    move-result v0

    .line 558
    invoke-static {}, Lcom/xiaomi/stat/d/c;->a()I

    move-result v1

    .line 559
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 561
    invoke-static {v1}, Lcom/xiaomi/stat/b;->e(I)V

    goto :goto_0

    .line 565
    :cond_2
    if-ge v0, v1, :cond_0

    .line 567
    iget-object v2, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/xiaomi/stat/j;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaomi/stat/j;-><init>(Lcom/xiaomi/stat/e;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/xiaomi/stat/e;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->i:I

    return v0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 601
    iget-object v1, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v1

    .line 602
    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 603
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 586
    iget-object v1, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v1

    .line 587
    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    :cond_2
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/xiaomi/stat/e;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->j:I

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/k;-><init>(Lcom/xiaomi/stat/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method

.method static synthetic i(Lcom/xiaomi/stat/e;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->h()V

    return-void
.end method

.method private i()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 734
    iget-object v2, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 740
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 742
    const-string v3, "android"

    const/16 v5, 0x40

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 744
    if-eqz v4, :cond_0

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    move v3, v1

    :goto_1
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    iget-object v2, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_4

    move v2, v1

    :goto_3
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_5

    :goto_4
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    move v3, v0

    .line 744
    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    .line 748
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic j(Lcom/xiaomi/stat/e;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->k:I

    return v0
.end method

.method static synthetic k(Lcom/xiaomi/stat/e;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/xiaomi/stat/e;->f:J

    return-wide v0
.end method

.method static synthetic l(Lcom/xiaomi/stat/e;)J
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic m(Lcom/xiaomi/stat/e;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->i:I

    return v0
.end method

.method static synthetic n(Lcom/xiaomi/stat/e;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/xiaomi/stat/e;->l:J

    return-wide v0
.end method

.method static synthetic o(Lcom/xiaomi/stat/e;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->j:I

    return v0
.end method

.method static synthetic p(Lcom/xiaomi/stat/e;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/e;->k:I

    return v0
.end method

.method static synthetic q(Lcom/xiaomi/stat/e;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/stat/b;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/stat/HttpEvent;)V
    .locals 2

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/m;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/m;-><init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/HttpEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;Z)V

    .line 436
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    .line 258
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 259
    iget-object v2, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 9

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 272
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/MiStatParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v6, v2, v0

    .line 287
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->d()J

    move-result-wide v4

    .line 289
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/w;

    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/stat/w;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Z)V

    .line 321
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 396
    return-void
.end method

.method a(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/y;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/stat/y;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/u;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/u;-><init>(Lcom/xiaomi/stat/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/stat/l;-><init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 531
    invoke-static {}, Lcom/xiaomi/stat/b;->j()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/stat/b;->b(I)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;Z)V

    .line 454
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 264
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 316
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 363
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Z)V

    .line 372
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/v;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/v;-><init>(Lcom/xiaomi/stat/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 697
    new-instance v0, Lcom/xiaomi/stat/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/n;-><init>(Lcom/xiaomi/stat/e;)V

    .line 703
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 705
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Lcom/xiaomi/stat/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 708
    const-wide/16 v2, 0x5

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 714
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 711
    :catch_1
    move-exception v0

    goto :goto_1

    .line 710
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 308
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 367
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 421
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 430
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/stat/b;->d(Z)V

    .line 380
    iget-object v0, p0, Lcom/xiaomi/stat/e;->h:Lcom/xiaomi/stat/J;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/xiaomi/stat/e;->h:Lcom/xiaomi/stat/J;

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/J;->a(Z)V

    goto :goto_0

    .line 383
    :cond_2
    if-eqz p1, :cond_0

    .line 384
    new-instance v0, Lcom/xiaomi/stat/J;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/J;-><init>(Lcom/xiaomi/stat/e;)V

    iput-object v0, p0, Lcom/xiaomi/stat/e;->h:Lcom/xiaomi/stat/J;

    .line 385
    iget-object v0, p0, Lcom/xiaomi/stat/e;->h:Lcom/xiaomi/stat/J;

    invoke-virtual {v0}, Lcom/xiaomi/stat/J;->a()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 359
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 439
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_1
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 448
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/MiStatParams;)V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/i;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/i;-><init>(Lcom/xiaomi/stat/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 550
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/h;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/h;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 788
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 812
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid plain text value for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/stat/p;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public e(Z)Z
    .locals 1

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-static {p1}, Lcom/xiaomi/stat/b;->f(Z)V

    .line 726
    const/4 v0, 0x1

    .line 728
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 773
    invoke-static {p1}, Lcom/xiaomi/stat/d/k;->a(Z)V

    .line 774
    return-void
.end method
