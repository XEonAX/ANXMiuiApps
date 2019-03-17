.class public Lcom/xiaomi/mistatistic/sdk/controller/b;
.super Ljava/lang/Object;
.source "ActivityLifecycleMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static a:Ljava/lang/Integer;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Ljava/lang/Object;

    .line 28
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->c:Z

    .line 29
    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->d:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->c:Z

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "ALM"

    const-string v2, "The App enters foreground from the background."

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/b$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/b;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->c:Z

    .line 55
    :cond_0
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->d:I

    if-gez v0, :cond_2

    .line 56
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->d:I

    .line 60
    :goto_1
    monitor-exit v1

    .line 64
    :goto_2
    return-void

    .line 45
    :cond_1
    const-string v0, "ALM"

    const-string v2, "The App enters foreground for the first time."

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "ALM"

    const-string v2, "onActivityStarted exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 58
    :cond_2
    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "ALM"

    const-string v2, "Activity is changing configuration."

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/b;->d:I

    .line 94
    :cond_0
    :goto_0
    monitor-exit v1

    .line 99
    :goto_1
    return-void

    .line 83
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;

    .line 84
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "ALM"

    const-string v2, "The App enters background."

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/b$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/b;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "ALM"

    const-string v2, "onActivityStopped exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
