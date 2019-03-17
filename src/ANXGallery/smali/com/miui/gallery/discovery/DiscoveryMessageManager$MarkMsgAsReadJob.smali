.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkMsgAsReadJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 372
    return-void
.end method

.method varargs constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Landroid/content/Context;[Lcom/miui/gallery/model/DiscoveryMessage;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "messages"    # [Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 376
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 377
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->mMessages:Ljava/util/List;

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 387
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 389
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->getMessages()Ljava/util/List;

    move-result-object v2

    .line 391
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/model/DiscoveryMessage;

    .line 393
    .local v1, "message":Lcom/miui/gallery/model/DiscoveryMessage;
    iget-object v4, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    invoke-virtual {v4, v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->markAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)V

    goto :goto_0

    .line 398
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "message":Lcom/miui/gallery/model/DiscoveryMessage;
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
