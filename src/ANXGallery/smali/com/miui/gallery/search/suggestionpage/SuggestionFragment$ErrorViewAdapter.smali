.class Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;
.super Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
.source "SuggestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .line 293
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;-><init>(Landroid/content/Context;)V

    .line 294
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->addFooterView(Landroid/view/View;)V

    .line 324
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->addHeaderView(Landroid/view/View;)V

    .line 314
    return-void
.end method

.method public getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 334
    invoke-static {p2}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p3, v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmptyDataView()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$400(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->isEmptyDataView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->removeFooterView(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->removeHeaderView(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public requestRetry()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->doRetryIfNeeded()V

    .line 299
    return-void
.end method
