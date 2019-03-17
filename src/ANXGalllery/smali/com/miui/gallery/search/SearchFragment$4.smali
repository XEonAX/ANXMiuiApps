.class Lcom/miui/gallery/search/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelSearch(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->selectAll(Z)V

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->hideInputMethod()Z

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchFragment;->finish()V

    .line 316
    return-void
.end method

.method public onFocusChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 320
    return-void
.end method

.method public onQueryTextChanged(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newQueryText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$300(Lcom/miui/gallery/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0, v2}, Lcom/miui/gallery/search/SearchFragment;->access$400(Lcom/miui/gallery/search/SearchFragment;I)V

    .line 343
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->showInputMethod()Z

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/SearchFragment;->access$400(Lcom/miui/gallery/search/SearchFragment;I)V

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$200(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/SearchFragment;->access$300(Lcom/miui/gallery/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gallery/search/SearchFragmentBase;->setQueryText(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->clearFocus()V

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$300(Lcom/miui/gallery/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0, v2}, Lcom/miui/gallery/search/SearchFragment;->access$400(Lcom/miui/gallery/search/SearchFragment;I)V

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->showInputMethod()Z

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$500(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0c017d

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0, v3}, Lcom/miui/gallery/search/SearchFragment;->access$400(Lcom/miui/gallery/search/SearchFragment;I)V

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$200(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$200(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/SearchFragmentBase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/SearchFragment;->access$300(Lcom/miui/gallery/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/gallery/search/SearchFragmentBase;->setQueryText(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onStartVoiceAssistant(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$600(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    const/16 v1, 0x2b

    const/4 v2, 0x1

    .line 354
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/search/SearchFragment$4;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v4}, Lcom/miui/gallery/search/SearchFragment;->access$700(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/search/SearchConfig;->getVoiceAssistantSuggestion(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 353
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/IntentUtil;->startSpeechInput(Landroid/app/Activity;IZLjava/util/ArrayList;)Z

    .line 355
    const-string v0, "from_search"

    const-string/jumbo v1, "start_voice_assistant"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
