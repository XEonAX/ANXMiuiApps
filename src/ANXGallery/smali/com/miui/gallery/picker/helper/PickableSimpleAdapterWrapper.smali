.class public Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;
.super Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;
.source "PickableSimpleAdapterWrapper.java"


# instance fields
.field private mPicker:Lcom/miui/gallery/picker/helper/Picker;

.field private mPickerItemCheckedListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

.field private mWrapped:Landroid/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/helper/Picker;Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "picker"    # Lcom/miui/gallery/picker/helper/Picker;
    .param p2, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;-><init>(Landroid/widget/CursorAdapter;)V

    .line 18
    iput-object p1, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 19
    iput-object p2, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    .line 20
    new-instance v0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;-><init>(Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mPickerItemCheckedListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 25
    iget-object v3, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 26
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v3, v4, :cond_1

    .line 27
    instance-of v3, v2, Lcom/miui/gallery/ui/MicroThumbGridItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 28
    check-cast v3, Lcom/miui/gallery/ui/MicroThumbGridItem;

    invoke-virtual {v3, v5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSimilarMarkEnable(Z)V

    .line 37
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    iget-object v4, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mPickerItemCheckedListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    invoke-static {p1, v2, v3, v4}, Lcom/miui/gallery/picker/helper/PickerItemHolder;->bindView(ILandroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V

    .line 38
    return-object v2

    .line 30
    :cond_1
    instance-of v3, v2, Lcom/miui/gallery/ui/Checkable;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 31
    check-cast v0, Lcom/miui/gallery/ui/Checkable;

    .line 32
    .local v0, "checkable":Lcom/miui/gallery/ui/Checkable;
    invoke-interface {v0, v5}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 33
    iget-object v3, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 34
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 35
    iget-object v3, p0, Lcom/miui/gallery/picker/helper/PickableSimpleAdapterWrapper;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {v1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public bridge synthetic getViewTypeCount()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasStableIds()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnabled(I)Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method

.method public bridge synthetic registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public bridge synthetic swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
