.class Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;
.super Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
.source "SearchImageResultFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    .line 182
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;-><init>(Landroid/content/Context;)V

    .line 183
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addFooterView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addHeaderView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method protected getInfoItemView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 222
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p3, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
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
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->isLoading()Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeFooterView(Landroid/view/View;)Z

    .line 218
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeHeaderView(Landroid/view/View;)Z

    .line 208
    return-void
.end method

.method public requestRetry()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->doRetry()V

    .line 188
    return-void
.end method
