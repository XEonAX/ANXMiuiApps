.class Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;
.super Ljava/lang/Object;
.source "BaseSuggestionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->bindActionClickListener(Landroid/view/View;ILcom/miui/gallery/search/core/suggestion/SuggestionCursor;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

.field final synthetic val$actionType:I

.field final synthetic val$childIndex:I

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$suggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;ILandroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    .prologue
    .line 129
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->this$0:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    iput-object p2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$from:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$suggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    iput p4, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$childIndex:I

    iput-object p5, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$view:Landroid/view/View;

    iput p6, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$actionType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$from:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$from:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$suggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    iget v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$childIndex:I

    invoke-interface {v1, v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 139
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->this$0:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->getActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$view:Landroid/view/View;

    iget v3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$actionType:I

    iget-object v4, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;->val$suggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/miui/gallery/search/core/display/OnActionClickListener;->onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 140
    return-void
.end method
