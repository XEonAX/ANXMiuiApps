.class Lcom/alibaba/mtl/appmonitor/a;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/a$a;
    }
.end annotation


# static fields
.field private static j:Z

.field private static l:Z


# instance fields
.field private b:Landroid/app/Application;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->j:Z

    .line 27
    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a;->b:Landroid/app/Application;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a;->k:Z

    .line 49
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-static {p0}, Lcom/alibaba/mtl/log/d/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "BackgroundTrigger"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "[checkRuningProcess]:"

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 125
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 129
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 7
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 31
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->j:Z

    if-nez v0, :cond_1

    .line 32
    const-string v0, "BackgroundTrigger"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "init BackgroundTrigger"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    .line 34
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a;-><init>(Landroid/app/Application;)V

    .line 35
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    if-eqz v1, :cond_2

    .line 37
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 42
    :cond_0
    :goto_0
    sput-boolean v6, Lcom/alibaba/mtl/appmonitor/a;->j:Z

    .line 44
    :cond_1
    return-void

    .line 38
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 40
    new-instance v1, Lcom/alibaba/mtl/appmonitor/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v0}, Lcom/alibaba/mtl/appmonitor/a$a;-><init>(Lcom/alibaba/mtl/appmonitor/a;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    const-string v1, "BackgroundTrigger"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[bg check]"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/mtl/log/d/b;->b(Landroid/content/Context;)Z

    move-result v1

    .line 55
    iget-boolean v2, p0, Lcom/alibaba/mtl/appmonitor/a;->k:Z

    if-eq v2, v1, :cond_1

    .line 56
    iput-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/a;->k:Z

    .line 57
    if-eqz v1, :cond_3

    .line 58
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/d/j;->j()V

    .line 59
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 60
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->c()I

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/a;->l()V

    .line 71
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 74
    :cond_2
    return-void

    .line 64
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 65
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->d()I

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 67
    :cond_4
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->triggerUpload()V

    .line 68
    invoke-static {}, Lcom/alibaba/mtl/log/a;->k()V

    goto :goto_1
.end method
