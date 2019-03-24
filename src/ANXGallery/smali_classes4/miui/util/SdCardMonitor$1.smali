.class Lmiui/util/SdCardMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/SdCardMonitor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JV:Lmiui/util/SdCardMonitor;


# direct methods
.method constructor <init>(Lmiui/util/SdCardMonitor;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmiui/util/SdCardMonitor$1;->JV:Lmiui/util/SdCardMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 48
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result p1

    .line 49
    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->JV:Lmiui/util/SdCardMonitor;

    invoke-static {p2}, Lmiui/util/SdCardMonitor;->a(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->JV:Lmiui/util/SdCardMonitor;

    invoke-static {p2}, Lmiui/util/SdCardMonitor;->a(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, p1, :cond_1

    .line 50
    :cond_0
    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->JV:Lmiui/util/SdCardMonitor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/util/SdCardMonitor;->a(Lmiui/util/SdCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 51
    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->JV:Lmiui/util/SdCardMonitor;

    invoke-static {p2, p1}, Lmiui/util/SdCardMonitor;->a(Lmiui/util/SdCardMonitor;Z)V

    .line 53
    :cond_1
    return-void
.end method
