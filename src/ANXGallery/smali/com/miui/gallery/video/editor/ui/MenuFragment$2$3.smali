.class Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->downloadResourceWithCheck(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
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
    .line 213
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iput p3, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 223
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;->val$position:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->downloadResource(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;IZ)V

    .line 218
    return-void
.end method
