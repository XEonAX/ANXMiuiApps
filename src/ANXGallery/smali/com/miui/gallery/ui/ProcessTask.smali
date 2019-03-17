.class public Lcom/miui/gallery/ui/ProcessTask;
.super Landroid/os/AsyncTask;
.source "ProcessTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;,
        Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private mCompleteListener:Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private mProcessCallback:Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback",
            "<TParams;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<TParams;TResult;>;"
    .local p1, "processCallback":Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;, "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback<TParams;TResult;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/ProcessTask;-><init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback",
            "<TParams;TResult;>;",
            "Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<TParams;TResult;>;"
    .local p1, "processCallback":Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;, "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback<TParams;TResult;>;"
    .local p2, "completeListener":Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;, "Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener<TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null processCallback is not accepted!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/ui/ProcessTask;->mProcessCallback:Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;

    .line 26
    iput-object p2, p0, Lcom/miui/gallery/ui/ProcessTask;->mCompleteListener:Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<TParams;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProcessCallback:Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;->doProcess([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<TParams;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mCompleteListener:Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mCompleteListener:Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;->onCompleteProcess(Ljava/lang/Object;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProgressDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 55
    :cond_1
    return-void
.end method

.method public setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V
    .locals 0
    .param p1, "completeListener"    # Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<TParams;TResult;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/ProcessTask;->mCompleteListener:Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;

    .line 59
    return-void
.end method

.method public showProgress(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<TParams;TResult;>;"
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ProgressDialogFragment;->setIndeterminate(Z)V

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/ProgressDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ProgressDialogFragment;->setCancelable(Z)V

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/ui/ProcessTask;->mProgressDialog:Lcom/miui/gallery/ui/ProgressDialogFragment;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ProcessTask"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/ProgressDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
