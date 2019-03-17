.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;
.super Ljava/lang/Object;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->AutoTrimAction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAutoTrimEnable(Z)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->setVideoSaving(Z)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0, v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$802(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Z)Z

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6$1;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;)V

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .line 209
    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 186
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->startAutoTrim(Lcom/miui/gallery/video/editor/VideoEditor;Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;Landroid/app/FragmentManager;)V

    .line 210
    return-void
.end method
