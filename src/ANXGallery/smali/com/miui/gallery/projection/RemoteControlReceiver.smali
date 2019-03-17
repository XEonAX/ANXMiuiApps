.class public Lcom/miui/gallery/projection/RemoteControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v2, "RemoteControlReceiver"

    const-string v3, "onReceive broadcast"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v2, "miui.intent.action.REMOTE_CONTROL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 30
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v1, :cond_0

    .line 31
    const/16 v2, 0x19

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 32
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteControlReceiver;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteControlReceiver;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;->onRemoteControl(Z)V

    .line 42
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    const/16 v2, 0x18

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 36
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteControlReceiver;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteControlReceiver;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;->onRemoteControl(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/gallery/projection/RemoteControlReceiver;->mListener:Lcom/miui/gallery/projection/RemoteControlReceiver$RemoteControlListener;

    .line 21
    return-void
.end method
