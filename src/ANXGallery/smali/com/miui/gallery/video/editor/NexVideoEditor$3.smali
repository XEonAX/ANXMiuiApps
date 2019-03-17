.class Lcom/miui/gallery/video/editor/NexVideoEditor$3;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->loadThumbnail(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field final synthetic val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetVideoThumbnailCompleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/VideoThumbnail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "thumbnails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/VideoThumbnail;>;"
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$000(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->notifyThumbnailChanged()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getDisplayView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->setDisplayView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$3;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 255
    :cond_1
    return-void
.end method
