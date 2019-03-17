.class Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$1;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "VideoNavFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$1;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$1;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->access$400(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    move-result-object v0

    .line 264
    .local v0, "fragment":Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$500(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V

    .line 267
    :cond_0
    return-void
.end method
