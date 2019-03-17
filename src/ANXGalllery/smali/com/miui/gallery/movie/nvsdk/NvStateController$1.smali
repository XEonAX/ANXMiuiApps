.class Lcom/miui/gallery/movie/nvsdk/NvStateController$1;
.super Ljava/lang/Object;
.source "NvStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/nvsdk/NvStateController;->onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/nvsdk/NvStateController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/nvsdk/NvStateController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/nvsdk/NvStateController;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController$1;->this$0:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvStateController$1;->this$0:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-static {v1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->access$000(Lcom/miui/gallery/movie/nvsdk/NvStateController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;

    .line 131
    .local v0, "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    invoke-interface {v0}, Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;->onPlaybackEOF()V

    goto :goto_0

    .line 133
    .end local v0    # "listener":Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;
    :cond_0
    return-void
.end method
