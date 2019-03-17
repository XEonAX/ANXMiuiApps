.class public Lcom/miui/gallery/projection/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;
    }
.end annotation


# static fields
.field private static sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;


# instance fields
.field private final mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

.field private mRemoteControlReceiver:Lcom/miui/gallery/projection/RemoteControlReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;-><init>(Lcom/miui/gallery/projection/RemoteController$1;)V

    sput-object v0, Lcom/miui/gallery/projection/RemoteController;->sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/miui/gallery/projection/RemoteControlReceiver;

    invoke-direct {v0}, Lcom/miui/gallery/projection/RemoteControlReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/projection/RemoteController;->mRemoteControlReceiver:Lcom/miui/gallery/projection/RemoteControlReceiver;

    .line 53
    iput-object p1, p0, Lcom/miui/gallery/projection/RemoteController;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/projection/RemoteController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/projection/RemoteController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->disableRemoteControlWhenOnPause(Landroid/content/Context;)V

    return-void
.end method

.method private disableRemoteControl(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/projection/RemoteController;->mRemoteControlReceiver:Lcom/miui/gallery/projection/RemoteControlReceiver;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/projection/RemoteControlReceiver;->setListener(Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/projection/RemoteController;->mRemoteControlReceiver:Lcom/miui/gallery/projection/RemoteControlReceiver;

    invoke-static {p1, v0}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control_pkg_name"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control_proc_name"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    return-void
.end method

.method private disableRemoteControlWhenOnPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isKeyGuardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->disableRemoteControl(Landroid/content/Context;)V

    .line 99
    :cond_0
    return-void
.end method

.method private enableRemoteControl(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/projection/RemoteController;->mRemoteControlReceiver:Lcom/miui/gallery/projection/RemoteControlReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "miui.intent.action.REMOTE_CONTROL"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control_pkg_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control_proc_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/projection/RemoteController;->mRemoteControlReceiver:Lcom/miui/gallery/projection/RemoteControlReceiver;

    iget-object v1, p0, Lcom/miui/gallery/projection/RemoteController;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/RemoteControlReceiver;->setListener(Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public disable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/projection/RemoteController;->sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->disableRemoteControl(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public disableDelay(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/miui/gallery/projection/RemoteController;->sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    invoke-virtual {v0, p1, p0}, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;->setParent(Landroid/content/Context;Lcom/miui/gallery/projection/RemoteController;)V

    .line 67
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/projection/RemoteController;->sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method

.method public enable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/projection/RemoteController;->sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->enableRemoteControl(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onConnectStateChange(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connected"    # Z

    .prologue
    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->enableRemoteControl(Landroid/content/Context;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->disableRemoteControl(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public release(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/projection/RemoteController;->sDisableRemoteControlRunnable:Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/RemoteController;->disableRemoteControl(Landroid/content/Context;)V

    .line 78
    return-void
.end method
