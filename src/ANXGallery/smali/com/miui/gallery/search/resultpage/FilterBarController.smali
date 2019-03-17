.class public Lcom/miui/gallery/search/resultpage/FilterBarController;
.super Ljava/lang/Object;
.source "FilterBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

.field private mContainer:Landroid/view/View;

.field private mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

.field private mFrom:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/widget/TwoStageDrawer;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawer"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    .line 31
    iput-object p3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mFrom:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/FilterBarController;)Lcom/miui/gallery/widget/TwoStageDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/FilterBarController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/resultpage/FilterBarController;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/FilterBarController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    return-object v0
.end method


# virtual methods
.method public getFilterDataCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterBarVisible()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFilterBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/FilterBarController;->isFilterBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    new-instance v1, Lcom/miui/gallery/search/resultpage/FilterBarController$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/FilterBarController$1;-><init>(Lcom/miui/gallery/search/resultpage/FilterBarController;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/FilterBarController;->isFilterBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    new-instance v1, Lcom/miui/gallery/search/resultpage/FilterBarController$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/FilterBarController$2;-><init>(Lcom/miui/gallery/search/resultpage/FilterBarController;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public swapCursor(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 8
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "cursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    const/4 v7, 0x0

    .line 35
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    if-nez v3, :cond_0

    .line 61
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    if-nez v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    const v4, 0x7f120274

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    .line 42
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mContainer:Landroid/view/View;

    const v4, 0x7f120277

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "filterBar":Landroid/view/View;
    const v3, 0x7f12016b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 44
    new-instance v3, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mActivity:Landroid/app/Activity;

    .line 45
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/search/core/context/SearchContext;->getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mFrom:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    .line 46
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 47
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3, v7, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 49
    .local v1, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 50
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/search/resultpage/FilterBarController$PaddingDecoration;-><init>(Lcom/miui/gallery/search/resultpage/FilterBarController;I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    .end local v0    # "filterBar":Landroid/view/View;
    .end local v1    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 55
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "filter_style"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 56
    .local v2, "style":I
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v3, 0x7f0b01ab

    :goto_1
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    .end local v2    # "style":I
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/FilterBarController;->mAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    goto/16 :goto_0

    .line 56
    .restart local v2    # "style":I
    :cond_3
    const v3, 0x7f0b01ac

    goto :goto_1
.end method
