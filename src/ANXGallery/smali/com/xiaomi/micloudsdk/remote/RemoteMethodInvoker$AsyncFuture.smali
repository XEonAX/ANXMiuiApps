.class Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
.super Ljava/util/concurrent/FutureTask;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;, "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture<TV;>;"
    new-instance v0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture$1;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 74
    return-void
.end method


# virtual methods
.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;, "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;->set(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
