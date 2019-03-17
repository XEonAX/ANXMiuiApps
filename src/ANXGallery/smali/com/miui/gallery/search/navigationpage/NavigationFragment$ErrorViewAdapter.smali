.class Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;
.super Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
.source "NavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/navigationpage/NavigationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .line 209
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;-><init>(Landroid/content/Context;)V

    .line 210
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$300(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->addFooterView(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$300(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->addHeaderView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public getInfoView(Landroid/view/View;ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "status"    # I
    .param p3, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 251
    invoke-static {p2}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p3, v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 253
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
    .line 219
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$300(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$400(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->isEmptyDataView()Z

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
    .line 245
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$300(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->removeFooterView(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->access$300(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->removeHeaderView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method public requestRetry()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->doRetry()V

    .line 215
    return-void
.end method
