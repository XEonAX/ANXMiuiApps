.class Lcom/miui/gallery/model/BaseDataSet$1;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/BaseDataSet;->delete(Landroid/app/Activity;ILcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/model/BaseDataSet;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$item:Lcom/miui/gallery/model/BaseDataItem;

.field final synthetic val$listener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/BaseDataSet;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataSet$1;->this$0:Lcom/miui/gallery/model/BaseDataSet;

    iput-object p2, p0, Lcom/miui/gallery/model/BaseDataSet$1;->val$item:Lcom/miui/gallery/model/BaseDataItem;

    iput-object p3, p0, Lcom/miui/gallery/model/BaseDataSet$1;->val$listener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    iput-object p4, p0, Lcom/miui/gallery/model/BaseDataSet$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/miui/gallery/ui/ProcessTask;

    new-instance v1, Lcom/miui/gallery/model/BaseDataSet$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/model/BaseDataSet$1$1;-><init>(Lcom/miui/gallery/model/BaseDataSet$1;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/ProcessTask;-><init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;)V

    .line 204
    .local v0, "deletionTask":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<Ljava/lang/Void;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/miui/gallery/model/BaseDataSet$1$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/model/BaseDataSet$1$2;-><init>(Lcom/miui/gallery/model/BaseDataSet$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ProcessTask;->setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataSet$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/model/BaseDataSet$1;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0c0157

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/ProcessTask;->showProgress(Landroid/app/Activity;Ljava/lang/String;)V

    .line 213
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/ProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method
