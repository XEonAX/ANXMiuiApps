.class Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;
.super Ljava/lang/Object;
.source "SearchSuggestionViewFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;

.field final synthetic val$childPosition:I

.field final synthetic val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

.field final synthetic val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;Lcom/miui/gallery/search/core/suggestion/Suggestion;Lcom/miui/gallery/search/core/display/OnActionClickListener;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->this$0:Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;

    iput-object p2, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;

    iput-object p3, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    iput p4, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    const-string v1, "from_suggestion"

    .line 137
    .local v1, "from":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;

    check-cast v3, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-interface {v3}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_GUIDE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v3, v4, :cond_0

    .line 138
    const-string v1, "from_guide"

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$suggestion:Lcom/miui/gallery/search/core/suggestion/Suggestion;

    check-cast v2, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 141
    .local v2, "section":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    const/4 v3, 0x0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "from"

    aput-object v5, v4, v7

    const-string v5, "sectionType"

    aput-object v5, v4, v8

    new-array v5, v6, [Ljava/lang/String;

    aput-object v1, v5, v7

    .line 143
    invoke-interface {v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTypeString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 141
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    iget-object v4, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->this$0:Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;

    iget v5, p0, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory$1;->val$childPosition:I

    .line 145
    invoke-static {v4, v2, v5}, Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;->access$000(Lcom/miui/gallery/search/suggestionpage/SearchSuggestionViewFactory;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v4

    .line 144
    invoke-interface {v3, p1, v7, v4, v0}, Lcom/miui/gallery/search/core/display/OnActionClickListener;->onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 146
    return-void
.end method
