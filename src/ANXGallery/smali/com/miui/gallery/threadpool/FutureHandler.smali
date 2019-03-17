.class public abstract Lcom/miui/gallery/threadpool/FutureHandler;
.super Ljava/lang/Object;
.source "FutureHandler.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    .local p0, "this":Lcom/miui/gallery/threadpool/FutureHandler;, "Lcom/miui/gallery/threadpool/FutureHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/threadpool/FutureHandler;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public final onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/threadpool/FutureHandler;, "Lcom/miui/gallery/threadpool/FutureHandler<TT;>;"
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/threadpool/FutureHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/threadpool/FutureHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/threadpool/FutureHandler$1;-><init>(Lcom/miui/gallery/threadpool/FutureHandler;Lcom/miui/gallery/threadpool/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method public abstract onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<TT;>;)V"
        }
    .end annotation
.end method
