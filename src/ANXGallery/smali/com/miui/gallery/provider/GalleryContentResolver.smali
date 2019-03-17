.class public abstract Lcom/miui/gallery/provider/GalleryContentResolver;
.super Ljava/lang/Object;
.source "GalleryContentResolver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;
    }
.end annotation


# instance fields
.field private mDelayNums:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mHandler:Landroid/os/Handler;

    .line 28
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mDelayNums:Landroid/util/SparseArray;

    .line 29
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;

    .line 70
    .local v0, "params":Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;
    iget-object v1, v0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->observer:Landroid/database/ContentObserver;

    iget-boolean v3, v0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->sync:Z

    iget v4, v0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->syncReason:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mDelayNums:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    const-string v1, "GalleryContentResolver"

    const-string v2, "delay notify %s %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->uri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return v5
.end method

.method protected abstract matchUri(Landroid/net/Uri;)Ljava/lang/Object;
.end method

.method public final notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/GalleryContentResolver;->notifyInternal(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 33
    return-void
.end method

.method public final notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z
    .param p4, "syncReason"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/GalleryContentResolver;->notifyInternal(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 37
    return-void
.end method

.method public final notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/GalleryContentResolver;->notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 41
    return-void
.end method

.method public final notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z
    .param p4, "syncReason"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/GalleryContentResolver;->matchUri(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 45
    .local v3, "what":I
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    new-instance v2, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;-><init>(Lcom/miui/gallery/provider/GalleryContentResolver;Lcom/miui/gallery/provider/GalleryContentResolver$1;)V

    .line 47
    .local v2, "params":Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;
    iput-object p1, v2, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->uri:Landroid/net/Uri;

    .line 48
    iput-object p2, v2, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->observer:Landroid/database/ContentObserver;

    .line 49
    iput-boolean p3, v2, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->sync:Z

    .line 50
    iput p4, v2, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->syncReason:I

    .line 51
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 52
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mDelayNums:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 54
    const/16 v4, 0x64

    if-le v0, v4, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 56
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mDelayNums:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryContentResolver;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected abstract notifyInternal(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
.end method
