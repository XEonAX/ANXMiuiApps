.class Lcom/miui/gallery/video/editor/NexVideoEditor$12;
.super Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;
.source "NexVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->addChange(Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field final synthetic val$change:Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

.field final synthetic val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/NexVideoEditor$Change;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->val$change:Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    iput-object p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->val$change:Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$Change;->applyChange()V

    .line 1098
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    .line 1102
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$12;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 1105
    :cond_1
    return-void
.end method
