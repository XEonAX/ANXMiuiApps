.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;
.super Ljava/lang/Object;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "outPutPath"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    const-string v1, "VideoEditorFragment"

    const-string/jumbo v2, "the video editor is null with auto trim. "

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAutoTrimEnable(Z)V

    .line 194
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->setVideoSaving(Z)V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    const-string v1, "VideoEditorFragment"

    const-string v2, "AutoTrimAction is success."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_autotrim_success"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p2}, Lcom/miui/gallery/video/editor/util/TempFileCollector;->add(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {v2, v3, v5}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V

    invoke-virtual {v1, p2, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->load(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "errormsg"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_autotrim_failed"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c052c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 205
    const-string v1, "VideoEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoTrimAction is fail, and video encode error  msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$1000(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;->this$1:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    iget-object v4, v4, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->load(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    goto/16 :goto_0
.end method
