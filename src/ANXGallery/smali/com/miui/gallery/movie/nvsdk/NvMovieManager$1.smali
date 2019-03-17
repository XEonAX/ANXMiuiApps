.class Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;
.super Ljava/lang/Object;
.source "NvMovieManager.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->export(Ljava/lang/String;Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileCompleted(Lcom/meicam/sdk/NvsTimeline;Z)V
    .locals 3
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "isCanceled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    if-eqz p2, :cond_1

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    invoke-interface {v0, v1, v2, v1}, Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;->onEncodeEnd(ZZI)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    invoke-interface {v0, v2, v1, v1}, Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;->onEncodeEnd(ZZI)V

    goto :goto_0
.end method
