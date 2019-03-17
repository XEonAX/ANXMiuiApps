.class Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;
.super Ljava/lang/Object;
.source "SuggestionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;

.field final synthetic val$shortCutUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;->this$1:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;

    iput-object p2, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;->val$shortCutUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 225
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "from"

    aput-object v2, v1, v5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "from_suggestion"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;->this$1:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;->val$shortCutUri:Ljava/lang/String;

    .line 229
    invoke-interface {v1, v6, v4, v2, v0}, Lcom/miui/gallery/search/core/display/OnActionClickListener;->onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 231
    return-void
.end method
