.class Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;
.super Ljava/lang/Object;
.source "BaseAlbumOperationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "albumName":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-static {v2, v0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->access$100(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v1, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$2;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;-><init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;Landroid/app/Activity;Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)V

    .line 122
    .local v1, "albumOperateTask":Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
