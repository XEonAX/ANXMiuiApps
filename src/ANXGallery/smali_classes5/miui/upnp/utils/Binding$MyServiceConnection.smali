.class Lmiui/upnp/utils/Binding$MyServiceConnection;
.super Ljava/lang/Object;
.source "Binding.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/utils/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/utils/Binding;


# direct methods
.method private constructor <init>(Lmiui/upnp/utils/Binding;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/upnp/utils/Binding;Lmiui/upnp/utils/Binding$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/upnp/utils/Binding;
    .param p2, "x1"    # Lmiui/upnp/utils/Binding$1;

    .line 120
    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding$MyServiceConnection;-><init>(Lmiui/upnp/utils/Binding;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 124
    invoke-static {}, Lmiui/upnp/utils/Binding;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-virtual {v0, p1, p2}, Lmiui/upnp/utils/Binding;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 128
    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v0}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v0

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    sget-object v2, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    iput-object v2, v1, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    .line 131
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 134
    :cond_0
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 139
    invoke-static {}, Lmiui/upnp/utils/Binding;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-virtual {v0, p1}, Lmiui/upnp/utils/Binding;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 143
    iget-object v0, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v0}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v0

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    sget-object v2, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    iput-object v2, v1, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    .line 146
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lmiui/upnp/utils/Binding$MyServiceConnection;->this$0:Lmiui/upnp/utils/Binding;

    invoke-static {v1}, Lmiui/upnp/utils/Binding;->access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 149
    :cond_0
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
