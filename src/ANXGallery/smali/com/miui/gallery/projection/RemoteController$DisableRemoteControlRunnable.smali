.class Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisableRemoteControlRunnable"
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/projection/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/projection/RemoteController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/projection/RemoteController$1;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;->mParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/projection/RemoteController;

    .line 42
    .local v1, "parent":Lcom/miui/gallery/projection/RemoteController;
    iget-object v2, p0, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 43
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 44
    invoke-static {v1, v0}, Lcom/miui/gallery/projection/RemoteController;->access$100(Lcom/miui/gallery/projection/RemoteController;Landroid/content/Context;)V

    .line 49
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "parent":Lcom/miui/gallery/projection/RemoteController;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "parent":Lcom/miui/gallery/projection/RemoteController;
    :cond_1
    const-string v2, "RemoteController"

    const-string v3, "parent is null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParent(Landroid/content/Context;Lcom/miui/gallery/projection/RemoteController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/miui/gallery/projection/RemoteController;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;->mParentRef:Ljava/lang/ref/WeakReference;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/projection/RemoteController$DisableRemoteControlRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method
