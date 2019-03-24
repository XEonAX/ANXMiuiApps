.class Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapterWrapper"
.end annotation


# instance fields
.field final synthetic tX:Lcom/miui/internal/widget/EditableListViewDelegate;

.field private tY:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 536
    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    .line 537
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 627
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 578
    iget-object p3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p3, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p3

    .line 579
    if-eqz p3, :cond_5

    .line 580
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result p1

    .line 582
    const/4 v1, 0x3

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tX:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    nop

    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 584
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 585
    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 587
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 588
    invoke-virtual {p3}, Landroid/widget/CheckBox;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 589
    :cond_3
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 590
    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 592
    :cond_4
    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 594
    :cond_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 547
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->tY:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 552
    return-void
.end method
