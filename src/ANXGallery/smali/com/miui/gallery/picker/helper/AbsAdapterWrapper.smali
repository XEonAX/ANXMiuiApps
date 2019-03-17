.class abstract Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "AbsAdapterWrapper.java"


# instance fields
.field private mWrapped:Landroid/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/CursorAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    .line 13
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 43
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 28
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/picker/helper/AbsAdapterWrapper;->mWrapped:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 33
    return-void
.end method
