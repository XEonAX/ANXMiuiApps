.class public Lcom/miui/gallery/picker/helper/PickerItemHolder;
.super Ljava/lang/Object;
.source "PickerItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .param p3, "checkListener"    # Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mAdapter:Landroid/widget/ListAdapter;

    .line 20
    iput-object p3, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mCheckListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    .line 21
    instance-of v1, p2, Lcom/miui/gallery/adapter/CheckableAdapter;

    if-eqz v1, :cond_0

    .line 22
    check-cast p2, Lcom/miui/gallery/adapter/CheckableAdapter;

    .end local p2    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {p2, p1}, Lcom/miui/gallery/adapter/CheckableAdapter;->getCheckableView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v1, Lcom/miui/gallery/util/ScalableTouchDelegate;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/gallery/util/ScalableTouchDelegate;-><init>(FLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 28
    .end local v0    # "checkableView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static bindView(ILandroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V
    .locals 2
    .param p0, "position"    # I
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .param p3, "checkListener"    # Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    .prologue
    const v1, 0x7f120026

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/picker/helper/PickerItemHolder;

    .line 44
    .local v0, "checkedHolder":Lcom/miui/gallery/picker/helper/PickerItemHolder;
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/gallery/picker/helper/PickerItemHolder;

    .end local v0    # "checkedHolder":Lcom/miui/gallery/picker/helper/PickerItemHolder;
    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/picker/helper/PickerItemHolder;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V

    .line 46
    .restart local v0    # "checkedHolder":Lcom/miui/gallery/picker/helper/PickerItemHolder;
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/gallery/picker/helper/PickerItemHolder;->setPosition(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mCheckListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mPosition:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 38
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mCheckListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->onItemChecked(Landroid/database/Cursor;Landroid/view/View;)V

    .line 40
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/miui/gallery/picker/helper/PickerItemHolder;->mPosition:I

    .line 32
    return-void
.end method
