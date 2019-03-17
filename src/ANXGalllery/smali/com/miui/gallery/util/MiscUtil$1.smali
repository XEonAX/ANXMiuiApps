.class final Lcom/miui/gallery/util/MiscUtil$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MiscUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MiscUtil;->setRecyclerViewScrollToBottomListener(Landroid/support/v7/widget/RecyclerView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scrollToBottomListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/gallery/util/MiscUtil$1;->val$scrollToBottomListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 289
    .local v2, "childCount":I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 290
    .local v3, "lastChild":Landroid/view/View;
    if-nez v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 294
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 295
    .local v1, "adapterCount":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 296
    .local v4, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_0

    .line 297
    iget-object v5, p0, Lcom/miui/gallery/util/MiscUtil$1;->val$scrollToBottomListener:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 294
    .end local v1    # "adapterCount":I
    .end local v4    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_1
.end method
