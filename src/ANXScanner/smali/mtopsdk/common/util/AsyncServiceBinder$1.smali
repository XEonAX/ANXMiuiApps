.class Lmtopsdk/common/util/AsyncServiceBinder$1;
.super Ljava/lang/Object;
.source "AsyncServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lmtopsdk/common/util/AsyncServiceBinder;


# direct methods
.method constructor <init>(Lmtopsdk/common/util/AsyncServiceBinder;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->access$000(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 39
    :try_start_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "mtopsdk.AsyncServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[onServiceConnected] Service connected called. interfaceName ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v4}, Lmtopsdk/common/util/AsyncServiceBinder;->access$100(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v1}, Lmtopsdk/common/util/AsyncServiceBinder;->access$200(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 45
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Stub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 48
    iget-object v6, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    iput-object v0, v6, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_2
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    const-string v0, "mtopsdk.AsyncServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[onServiceConnected] Service bind failed. interfaceName="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v3}, Lmtopsdk/common/util/AsyncServiceBinder;->access$100(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    iget-object v0, v0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->afterAsyncBind()V

    .line 60
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-static {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->access$000(Lmtopsdk/common/util/AsyncServiceBinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder$1;->this$0:Lmtopsdk/common/util/AsyncServiceBinder;

    const/4 v2, 0x0

    iput-object v2, v0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
