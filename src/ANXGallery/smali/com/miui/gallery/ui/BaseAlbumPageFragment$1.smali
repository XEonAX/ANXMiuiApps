.class Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;
.super Ljava/lang/Object;
.source "BaseAlbumPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doDelete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

.field final synthetic val$addDeleteCloudOption:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    iput-boolean p2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;->val$addDeleteCloudOption:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "deleteOptions":I
    iget-boolean v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;->val$addDeleteCloudOption:Z

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lmiui/app/AlertDialog;

    .line 340
    .local v0, "alertDialog":Lmiui/app/AlertDialog;
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 341
    const/4 v1, 0x1

    .line 345
    .end local v0    # "alertDialog":Lmiui/app/AlertDialog;
    :cond_0
    new-instance v2, Lcom/miui/gallery/ui/DeletionTask$Param;

    new-array v4, v9, [J

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 346
    invoke-virtual {v5}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v6

    aput-wide v6, v4, v8

    const/16 v5, 0x16

    invoke-direct {v2, v4, v1, v5}, Lcom/miui/gallery/ui/DeletionTask$Param;-><init>([JII)V

    .line 349
    .local v2, "param":Lcom/miui/gallery/ui/DeletionTask$Param;
    new-instance v3, Lcom/miui/gallery/ui/DeletionTask;

    invoke-direct {v3}, Lcom/miui/gallery/ui/DeletionTask;-><init>()V

    .line 350
    .local v3, "task":Lcom/miui/gallery/ui/DeletionTask;
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->access$000(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/DeletionTask;->setOnDeletionCompleteListener(Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V

    .line 351
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;->this$0:Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/DeletionTask;->showProgress(Landroid/app/Activity;)V

    .line 352
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v9, [Lcom/miui/gallery/ui/DeletionTask$Param;

    aput-object v2, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/DeletionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    return-void
.end method
