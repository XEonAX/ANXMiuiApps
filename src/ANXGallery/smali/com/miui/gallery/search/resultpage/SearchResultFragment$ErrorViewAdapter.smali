.class public Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;
.super Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ErrorViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchResultFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    .line 236
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;-><init>(Landroid/content/Context;)V

    .line 237
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->addFooterView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->addHeaderView(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method protected getInfoItemView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 276
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p3, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->getInfoItemView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmptyDataView()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->isLoading()Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->removeFooterView(Landroid/view/View;)V

    .line 272
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->removeHeaderView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method public requestRetry()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->doRetry()V

    .line 242
    return-void
.end method
