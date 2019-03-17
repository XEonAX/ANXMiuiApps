.class Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/ScrollableViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterViewWrapper"
.end annotation


# instance fields
.field private iAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    .line 579
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 583
    iget-object v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 584
    .local v2, "firstVisiblePosition":I
    if-lez v2, :cond_0

    .line 585
    const-string v6, "ScrollableViewDrawer"

    const-string v7, "canScrollDown true first visible %s"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    :goto_0
    return v5

    .line 590
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v4

    .line 591
    .local v4, "paddingTop":I
    iget-object v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    .line 592
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 593
    iget-object v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 594
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v4, :cond_1

    .line 595
    const-string v6, "ScrollableViewDrawer"

    const-string v7, "canScrollDown true %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 592
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 600
    .end local v0    # "c":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
