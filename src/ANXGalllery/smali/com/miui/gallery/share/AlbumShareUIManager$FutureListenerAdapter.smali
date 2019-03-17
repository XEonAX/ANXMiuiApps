.class final Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FutureListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<TT;>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final mJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
            "<TK;*>;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field private mResult:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<TK;TT;>;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;, "Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<TK;TT;>;"
    .local p3, "jobManager":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mId:Ljava/lang/Object;

    .line 222
    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    .line 223
    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    .line 224
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;, "Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter<TK;TT;>;"
    .local p1, "result":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/share/AsyncResult<TT;>;>;"
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mResult:Lcom/miui/gallery/threadpool/Future;

    .line 229
    sget-object v0, Lcom/miui/gallery/share/AlbumShareUIManager;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 234
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;, "Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter<TK;TT;>;"
    iget-object v3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mId:Ljava/lang/Object;

    .line 235
    .local v3, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mResult:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v5}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v0

    .line 236
    .local v0, "cancelled":Z
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mResult:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v5}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/share/AsyncResult;

    .line 237
    .local v4, "resultData":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TT;>;"
    if-eqz v4, :cond_1

    iget v2, v4, Lcom/miui/gallery/share/AsyncResult;->mError:I

    .line 238
    .local v2, "err":I
    :goto_0
    if-eqz v4, :cond_2

    iget-object v1, v4, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    .line 240
    .local v1, "data":Ljava/lang/Object;, "TT;"
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mJobManager:Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v3, v5}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->remove(Ljava/lang/Object;Z)V

    .line 241
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    if-eqz v5, :cond_0

    .line 242
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$FutureListenerAdapter;->mListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-interface {v5, v3, v1, v2, v0}, Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;->onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 244
    :cond_0
    return-void

    .line 237
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    .end local v2    # "err":I
    :cond_1
    const/4 v2, -0x2

    goto :goto_0

    .line 238
    .restart local v2    # "err":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 240
    .restart local v1    # "data":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method
