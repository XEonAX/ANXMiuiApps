.class public Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;
.super Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;
.source "PickAlbumDetailFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AlbumItemCheckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
    .param p2, "picker"    # Lcom/miui/gallery/picker/helper/Picker;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    .line 149
    invoke-direct {p0, p2}, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;-><init>(Lcom/miui/gallery/picker/helper/Picker;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onItemChecked(Landroid/database/Cursor;Landroid/view/View;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "sha1":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->access$000(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V

    .line 166
    :goto_0
    instance-of v1, p2, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 167
    check-cast p2, Landroid/widget/Checkable;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1, v0}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 169
    :cond_0
    return-void

    .line 157
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->isFull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->access$100(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03c3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 164
    invoke-interface {v6}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 162
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
