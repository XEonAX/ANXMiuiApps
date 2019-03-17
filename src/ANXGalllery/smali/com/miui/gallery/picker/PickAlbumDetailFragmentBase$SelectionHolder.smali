.class Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;
.super Ljava/lang/Object;
.source "PickAlbumDetailFragmentBase.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectionHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/picker/helper/AdapterHolder;

.field private mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

.field private mSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/helper/AdapterHolder;)V
    .locals 1
    .param p1, "adapter"    # Lcom/miui/gallery/picker/helper/AdapterHolder;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    .line 198
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mAdapter:Lcom/miui/gallery/picker/helper/AdapterHolder;

    .line 199
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    invoke-interface {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;->onStateChanged()V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->updateState()V

    .line 204
    return v0
.end method

.method public copyFrom(Lcom/miui/gallery/picker/helper/Picker;)V
    .locals 5
    .param p1, "picker"    # Lcom/miui/gallery/picker/helper/Picker;

    .prologue
    .line 214
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mAdapter:Lcom/miui/gallery/picker/helper/AdapterHolder;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/AdapterHolder;->get()Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 216
    .local v0, "adapter":Landroid/widget/Adapter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 217
    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 218
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "sha1":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->updateState()V

    .line 224
    return-void
.end method

.method isAllSelected()Z
    .locals 3

    .prologue
    .line 243
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mAdapter:Lcom/miui/gallery/picker/helper/AdapterHolder;

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/AdapterHolder;->get()Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 244
    .local v0, "baseAdapter":Landroid/widget/BaseAdapter;
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 245
    .local v1, "selectionCount":I
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->updateState()V

    .line 210
    return v0
.end method

.method public setItemStateListener(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;)V
    .locals 0
    .param p1, "itemStateListener"    # Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    .line 228
    return-void
.end method
