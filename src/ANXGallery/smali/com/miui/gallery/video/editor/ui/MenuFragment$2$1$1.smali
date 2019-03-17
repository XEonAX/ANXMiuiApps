.class Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->setDownloadState(I)V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    iget v1, v1, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->notifyDateSetChanged(I)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0528

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 177
    const-string v0, "MenuFragment"

    const-string/jumbo v1, "the download task fail."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method
