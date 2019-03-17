.class public Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;
.super Ljava/lang/Object;
.source "PickerItemCheckedListener.java"


# instance fields
.field private mPicker:Lcom/miui/gallery/picker/helper/Picker;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/helper/Picker;)V
    .locals 0
    .param p1, "picker"    # Lcom/miui/gallery/picker/helper/Picker;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 15
    return-void
.end method


# virtual methods
.method public onItemChecked(Landroid/database/Cursor;Landroid/view/View;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "sha1":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->remove(Ljava/lang/String;)Z

    .line 28
    :goto_0
    instance-of v1, p2, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 29
    check-cast p2, Landroid/widget/Checkable;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 31
    :cond_0
    return-void

    .line 21
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->isFull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03c3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v6}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
