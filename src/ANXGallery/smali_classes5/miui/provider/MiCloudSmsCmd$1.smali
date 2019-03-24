.class Lmiui/provider/MiCloudSmsCmd$1;
.super Landroid/content/BroadcastReceiver;
.source "MiCloudSmsCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/MiCloudSmsCmd;->transferToFindDevice(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$address:Ljava/lang/String;

    iput-object p2, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$body:Ljava/lang/String;

    iput-object p3, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lmiui/provider/MiCloudSmsCmd$1;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$address:Ljava/lang/String;

    iget-object v1, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$body:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lmiui/provider/MiCloudSmsCmd;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    iget-object v0, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 116
    nop

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
