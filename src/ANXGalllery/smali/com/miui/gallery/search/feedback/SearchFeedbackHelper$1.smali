.class final Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;
.super Ljava/lang/Object;
.source "SearchFeedbackHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportInDialog(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$completeListener:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;

.field final synthetic val$feedbackType:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

.field final synthetic val$imageServerIds:Ljava/util/ArrayList;

.field final synthetic val$tagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Landroid/app/Activity;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$tagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$imageServerIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$feedbackType:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    iput-object p4, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$completeListener:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    check-cast p1, Lmiui/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    .line 258
    .local v0, "contribute":Z
    new-instance v1, Lcom/miui/gallery/ui/ProcessTask;

    new-instance v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$1;-><init>(Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;Z)V

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/ProcessTask;-><init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;)V

    .line 266
    .local v1, "feedbackTask":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<Ljava/lang/Void;Ljava/lang/Integer;>;"
    new-instance v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;-><init>(Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/ProcessTask;->setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    .line 277
    iget-object v2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    const v4, 0x7f0c0314

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/ProcessTask;->showProgress(Landroid/app/Activity;Ljava/lang/String;)V

    .line 278
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/ProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    return-void
.end method
