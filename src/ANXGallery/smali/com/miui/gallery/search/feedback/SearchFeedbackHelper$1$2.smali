.class Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;
.super Ljava/lang/Object;
.source "SearchFeedbackHelper.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

.field final synthetic val$contribute:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iput-boolean p2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->val$contribute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteProcess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 269
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 270
    .end local p1    # "result":Ljava/lang/Object;
    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v2, v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v3, v3, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$tagName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v4, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$feedbackType:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    iget-boolean v5, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->val$contribute:Z

    invoke-static {v2, v3, v4, v0, v5}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->access$100(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;IZ)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v2, v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v2, v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$completeListener:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v2, v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$completeListener:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;

    invoke-interface {v2, v0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;->onComplete(I)V

    .line 275
    :cond_0
    return-void

    .line 269
    .end local v0    # "count":I
    .end local v1    # "text":Ljava/lang/String;
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
