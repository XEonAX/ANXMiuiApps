.class Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;
.super Landroid/os/AsyncTask;
.source "SearchFeedbackTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SearchFeedbackTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedbackInfoQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/SearchFeedbackTaskController;Lcom/miui/gallery/ui/SearchFeedbackTaskController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController;
    .param p2, "x1"    # Lcom/miui/gallery/ui/SearchFeedbackTaskController$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;-><init>(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->getFeedbackTaskInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v6, :cond_1

    :cond_0
    move-object v0, v5

    .line 109
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v6, "need_handle_image_num"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 102
    .local v3, "taskNum":I
    const-string v6, "finish_image_num"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, "finishNum":I
    iget-object v6, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-static {v6, v3, v2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->access$100(Lcom/miui/gallery/ui/SearchFeedbackTaskController;II)I

    move-result v4

    .line 104
    .local v4, "taskStatus":I
    const-string/jumbo v6, "task_status"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "finishNum":I
    .end local v3    # "taskNum":I
    .end local v4    # "taskStatus":I
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SearchFeedbackTaskController"

    const-string v7, "getFeedbackTaskInfo failed"

    invoke-static {v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 109
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 114
    const-string v2, "SearchFeedbackTaskController"

    const-string v3, "On get bundle %s, resumed %s"

    iget-object v4, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-static {v4}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->access$200(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-static {v2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->access$200(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 116
    const-string v2, "need_handle_image_num"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, "taskNum":I
    const-string v2, "finish_image_num"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "finishNum":I
    iget-object v2, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    const-string/jumbo v3, "task_status"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->access$302(Lcom/miui/gallery/ui/SearchFeedbackTaskController;I)I

    .line 119
    iget-object v2, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-static {v2, v1, v0}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->access$400(Lcom/miui/gallery/ui/SearchFeedbackTaskController;II)V

    .line 123
    .end local v0    # "finishNum":I
    .end local v1    # "taskNum":I
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->this$0:Lcom/miui/gallery/ui/SearchFeedbackTaskController;

    invoke-static {v2}, Lcom/miui/gallery/ui/SearchFeedbackTaskController;->access$500(Lcom/miui/gallery/ui/SearchFeedbackTaskController;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SearchFeedbackTaskController$FeedbackInfoQueryTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
