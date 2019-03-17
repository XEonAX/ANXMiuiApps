.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;
.super Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;
.source "VideoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor;

    .line 289
    .local v0, "editor":Lcom/miui/gallery/video/editor/NexVideoEditor;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->checkIDRSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const-string/jumbo v1, "video_editor"

    const-string v2, "idr_warning"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoStartTime()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 294
    .end local v0    # "editor":Lcom/miui/gallery/video/editor/NexVideoEditor;
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;->onCompleted()V

    .line 295
    return-void
.end method
