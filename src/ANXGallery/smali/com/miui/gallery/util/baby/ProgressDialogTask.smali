.class abstract Lcom/miui/gallery/util/baby/ProgressDialogTask;
.super Landroid/os/AsyncTask;
.source "CopyFaceAlbumItemsToBabyAlbumTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancelable:Z

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mMessageId:I

.field private mProgressMax:I

.field private mShowProgress:Z

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "progressMax"    # I
    .param p3, "titleId"    # I
    .param p4, "messageId"    # I
    .param p5, "cancelable"    # Z
    .param p6, "showProgress"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mProgressMax:I

    .line 55
    iput p3, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mTitleId:I

    .line 56
    iput p4, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mMessageId:I

    .line 57
    iput-boolean p5, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mCancelable:Z

    .line 58
    iput-boolean p6, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mShowProgress:Z

    .line 59
    return-void
.end method

.method public static showProgressDialog(Landroid/content/Context;IIIZ)Landroid/app/ProgressDialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "progressMax"    # I
    .param p4, "cancelable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 35
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-nez p1, :cond_2

    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    if-nez p2, :cond_3

    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    if-eqz p4, :cond_0

    .line 41
    const/4 v2, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 43
    :cond_0
    if-le p3, v4, :cond_1

    .line 44
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 45
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 48
    return-object v0

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected isDialogShowing()Z
    .locals 1

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->dismissDialog()V

    .line 105
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->dismissDialog()V

    .line 100
    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mShowProgress:Z

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mTitleId:I

    iget v3, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mMessageId:I

    iget v4, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mProgressMax:I

    iget-boolean v5, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mCancelable:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->showProgressDialog(Landroid/content/Context;IIIZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    .line 68
    iget-boolean v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 70
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 71
    new-instance v1, Lcom/miui/gallery/util/baby/ProgressDialogTask$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/baby/ProgressDialogTask$1;-><init>(Lcom/miui/gallery/util/baby/ProgressDialogTask;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/miui/gallery/util/baby/ProgressDialogTask$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/util/baby/ProgressDialogTask$2;-><init>(Lcom/miui/gallery/util/baby/ProgressDialogTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/util/baby/ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
