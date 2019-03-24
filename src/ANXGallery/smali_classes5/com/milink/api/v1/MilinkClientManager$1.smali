.class Lcom/milink/api/v1/MilinkClientManager$1;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/MilinkClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/MilinkClientManager;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/MilinkClientManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/milink/api/v1/MilinkClientManager;

    .line 92
    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 96
    invoke-static {}, Lcom/milink/api/v1/MilinkClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 99
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/milink/api/v1/MilinkClientManager$1$1;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/MilinkClientManager$1$1;-><init>(Lcom/milink/api/v1/MilinkClientManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {p2}, Lcom/milink/api/v1/aidl/IMcs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/milink/api/v1/MilinkClientManager;->access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$300(Lcom/milink/api/v1/MilinkClientManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceName(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    .line 112
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 113
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 121
    invoke-static {}, Lcom/milink/api/v1/MilinkClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 124
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/milink/api/v1/MilinkClientManager$1$2;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/MilinkClientManager$1$2;-><init>(Lcom/milink/api/v1/MilinkClientManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    .line 135
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 136
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/milink/api/v1/MilinkClientManager;->access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;

    .line 141
    return-void
.end method
