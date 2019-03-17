.class public Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseSuggestionViewHolder.java"


# instance fields
.field protected mClickView:Landroid/view/View;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mSubTitle:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field protected mViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    const v0, 0x7f12014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mClickView:Landroid/view/View;

    .line 20
    const v0, 0x7f1200d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 21
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mTitle:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f12014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 23
    return-void
.end method


# virtual methods
.method public getClickView()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mClickView:Landroid/view/View;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mViewType:Ljava/lang/String;

    return-object v0
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->mViewType:Ljava/lang/String;

    .line 31
    return-void
.end method
