.class Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;
.super Ljava/lang/Object;
.source "NvMovieManager.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;


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
    .line 322
    iput-object p1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileFailed(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 2
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1, v1}, Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;->onEncodeEnd(ZZI)V

    .line 339
    :cond_0
    return-void
.end method

.method public onCompileFinished(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 332
    return-void
.end method

.method public onCompileProgress(Lcom/meicam/sdk/NvsTimeline;I)V
    .locals 1
    .param p1, "nvsTimeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "i"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;->this$0:Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-static {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;->onEncodeProgress(I)V

    .line 328
    :cond_0
    return-void
.end method
