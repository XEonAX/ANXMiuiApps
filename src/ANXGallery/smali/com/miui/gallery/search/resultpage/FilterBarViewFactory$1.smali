.class Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;
.super Ljava/lang/Object;
.source "FilterBarViewFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;

.field final synthetic val$childPosition:I

.field final synthetic val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

.field final synthetic val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;Lcom/miui/gallery/search/core/display/OnActionClickListener;Lcom/miui/gallery/search/core/suggestion/Suggestion;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->this$0:Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;

    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    iput-object p3, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;

    iput p4, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "from_image_result_filter"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->this$0:Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;

    check-cast v1, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    iget v4, p0, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory$1;->val$childPosition:I

    .line 89
    invoke-static {v3, v1, v4}, Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;->access$000(Lcom/miui/gallery/search/resultpage/FilterBarViewFactory;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v1

    .line 88
    invoke-interface {v2, p1, v5, v1, v0}, Lcom/miui/gallery/search/core/display/OnActionClickListener;->onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method
