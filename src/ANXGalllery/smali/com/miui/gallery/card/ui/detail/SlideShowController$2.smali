.class Lcom/miui/gallery/card/ui/detail/SlideShowController$2;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/SlideShowController;->loadNextBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$2;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;

    .line 129
    .local v0, "item":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$2;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$200(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    .end local v0    # "item":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    :cond_0
    return-void
.end method
