.class public Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;
.super Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;
.source "PickableBaseTimeLineAdapterWrapper.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# instance fields
.field private mBaseAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/helper/Picker;Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "picker"    # Lcom/miui/gallery/picker/helper/Picker;
    .param p2, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;-><init>(Lcom/miui/gallery/picker/helper/Picker;Landroid/widget/CursorAdapter;)V

    .line 17
    instance-of v0, p2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v0, :cond_0

    .line 18
    check-cast p2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .end local p2    # "adapter":Landroid/widget/CursorAdapter;
    iput-object p2, p0, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->mBaseAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 22
    return-void

    .line 20
    .restart local p2    # "adapter":Landroid/widget/CursorAdapter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must be a StickyGridHeadersBaseAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->mBaseAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v0

    return v0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->mBaseAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->mBaseAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->mBaseAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    return v0
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
