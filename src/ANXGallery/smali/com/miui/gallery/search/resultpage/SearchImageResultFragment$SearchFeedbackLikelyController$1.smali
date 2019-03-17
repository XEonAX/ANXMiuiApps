.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController$1;
.super Ljava/lang/Object;
.source "SearchImageResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;->showLikelyBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 243
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_LIKELY_RESULT_PAGE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    iget-object v4, v4, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v4, v4, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    .line 244
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "tagName"

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    iget-object v4, v4, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    iget-object v4, v4, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    .line 245
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 246
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 247
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "start_activity_for_result"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v2, "request_code"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v2, "from"

    const-string v3, "from_image_result"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController$1;->this$1:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    invoke-static {v2}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 251
    return-void
.end method
