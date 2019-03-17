.class Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;
.super Ljava/lang/Object;
.source "BaseAlbumOperationDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->showAlbumConflictDialog(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$conflictAlbumId:J


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    iput-object p2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->val$albumName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->val$conflictAlbumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    invoke-static {v0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->access$300(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    iget-object v2, v2, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    const v3, 0x7f0c002f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->val$albumName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 218
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    iget-object v3, v3, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    const v4, 0x7f0c00ca

    .line 219
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;->this$1:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    iget-object v4, v4, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    const v5, 0x7f0c002e

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1$1;-><init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;)V

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    goto :goto_0
.end method
