.class Lcom/taobao/ma/camera/AutoFocusManager$1;
.super Landroid/os/Handler;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/ma/camera/AutoFocusManager;


# direct methods
.method constructor <init>(Lcom/taobao/ma/camera/AutoFocusManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taobao/ma/camera/AutoFocusManager$1;->this$0:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taobao/ma/camera/AutoFocusManager$1;->this$0:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/taobao/ma/camera/AutoFocusManager;->access$000(Lcom/taobao/ma/camera/AutoFocusManager;)V

    .line 63
    return-void
.end method
