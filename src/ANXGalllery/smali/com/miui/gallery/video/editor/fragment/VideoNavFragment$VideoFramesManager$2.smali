.class Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$2;
.super Ljava/lang/Object;
.source "VideoNavFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$2;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager$2;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->access$400(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;)Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    move-result-object v0

    .line 274
    .local v0, "fragment":Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {v0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$700(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getVideoFrameRate(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$602(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;I)I

    .line 277
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
