.class public Lmtopsdk/xstate/c;
.super Landroid/app/Service;
.source "XStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/xstate/c$a;
    }
.end annotation


# instance fields
.field private a:Lmtopsdk/xstate/a/a$a;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmtopsdk/xstate/c;->b:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 18
    iget-object v1, p0, Lmtopsdk/xstate/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lmtopsdk/xstate/c$a;

    invoke-direct {v0, p0}, Lmtopsdk/xstate/c$a;-><init>(Lmtopsdk/xstate/c;)V

    iput-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;

    invoke-virtual {v0}, Lmtopsdk/xstate/a/a$a;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "mtopsdk.XStateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onBind] XStateService  stub= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1
    iget-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;

    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :try_start_3
    const-string v2, "mtopsdk.XStateService"

    const-string v3, "[onBind]init() exception"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    :try_start_4
    const-string v2, "mtopsdk.XStateService"

    const-string v3, "[onBind]init() error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 39
    iget-object v1, p0, Lmtopsdk/xstate/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    :try_start_1
    iget-object v0, p0, Lmtopsdk/xstate/c;->a:Lmtopsdk/xstate/a/a$a;

    invoke-virtual {v0}, Lmtopsdk/xstate/a/a$a;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v2, "mtopsdk.XStateService"

    const-string v3, "[onDestroy]unInit() exception"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    :try_start_3
    const-string v2, "mtopsdk.XStateService"

    const-string v3, "[onDestroy]unInit() error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method
