.class Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;
.super Landroid/os/AsyncTask;
.source "BaseAlbumOperationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumOperateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlbumName:Ljava/lang/String;

.field private mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;Landroid/app/Activity;Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    .line 150
    iput-object p3, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .line 151
    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->activityAlive()Z

    move-result v0

    return v0
.end method

.method private activityAlive()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAlbumConflictDialog(JLjava/lang/String;)V
    .locals 3
    .param p1, "conflictAlbumId"    # J
    .param p3, "albumName"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask$1;-><init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 160
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mAlbumName:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->activityAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->execAlbumOperation(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    .line 165
    const-string v0, "BaseAlbumOperationDialogFragment"

    const-string v1, "activity dead, abort album task(%d)"

    aget-object v2, p1, v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    .line 172
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getResultId(Landroid/os/Bundle;)J

    move-result-wide v2

    .line 173
    .local v2, "resultId":J
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mOnAlbumOperationDoneListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mAlbumName:Ljava/lang/String;

    invoke-interface {v4, v2, v3, v5}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;->onOperationDone(JLjava/lang/String;)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->activityAlive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    .line 179
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->dismiss()V

    .line 180
    const-string v4, "BaseAlbumOperationDialogFragment"

    const-string v5, "activity dead, cancel toast"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    const-wide/16 v4, -0x67

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, -0x69

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    .line 186
    :cond_3
    const-string v4, "conflict_album_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 187
    .local v0, "conflictAlbumId":J
    cmp-long v4, v0, v10

    if-ltz v4, :cond_5

    .line 188
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mAlbumName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->showAlbumConflictDialog(JLjava/lang/String;)V

    .line 192
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->access$200(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V

    .line 198
    .end local v0    # "conflictAlbumId":J
    :cond_4
    :goto_2
    cmp-long v4, v2, v10

    if-lez v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->dismiss()V

    .line 200
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getOperationSucceededString()I

    move-result v4

    if-lez v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getOperationSucceededString()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 190
    .restart local v0    # "conflictAlbumId":J
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    const v6, 0x7f0c002f

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mAlbumName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 193
    .end local v0    # "conflictAlbumId":J
    :cond_6
    cmp-long v4, v2, v10

    if-gez v4, :cond_4

    .line 194
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->getOperationFailedString()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 195
    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->access$200(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$AlbumOperateTask;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    return-void
.end method
