.class Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->unZipDownloadFile(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

.field final synthetic val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iput p3, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnzipFileFailed()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->setDownloadState(I)V

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0574

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->notifyDateSetChanged(I)V

    .line 198
    return-void
.end method

.method public onUzipFileSuccess()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    .line 191
    return-void
.end method
