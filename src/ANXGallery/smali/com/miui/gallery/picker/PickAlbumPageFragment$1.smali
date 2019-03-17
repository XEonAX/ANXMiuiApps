.class Lcom/miui/gallery/picker/PickAlbumPageFragment$1;
.super Ljava/lang/Object;
.source "PickAlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickAlbumPageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    const/4 v7, 0x1

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p4, p5}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isFaceAlbum(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/miui/gallery/picker/PickPeopleActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isOtherShareAlbum(I)Z

    move-result v3

    .line 94
    .local v3, "isShareAlbum":Z
    const-string v4, "other_share_album"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isOwnerShareAlbum(I)Z

    move-result v1

    .line 96
    .local v1, "isOwnerShareAlbum":Z
    const-string v4, "owner_share_album"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isPanoAlbum(I)Z

    move-result v2

    .line 98
    .local v2, "isPanoAlbum":Z
    const-string v4, "pano_album"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v4, "album_id"

    invoke-virtual {v0, v4, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    const-string v4, "album_name"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getAlbumName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v5, "pick-upper-bound"

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 104
    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v4

    sget-object v6, Lcom/miui/gallery/picker/helper/Picker$Mode;->UNLIMITED:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v4, v6, :cond_2

    const/4 v4, -0x1

    .line 102
    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v4, "pick-lower-bound"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v4, "picker_media_type"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ordinal()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v4, "picker_result_set"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickerActivity;->copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    const-string v4, "picker_result_type"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ordinal()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-virtual {v4, v0, v7}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    return v7

    .line 85
    .end local v1    # "isOwnerShareAlbum":Z
    .end local v2    # "isPanoAlbum":Z
    .end local v3    # "isShareAlbum":Z
    :cond_0
    invoke-static {p4, p5}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->isRecentAlbum(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v4, "album_id"

    invoke-virtual {v0, v4, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    const-string v4, "album_name"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/adapter/AlbumAdapterBase;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/miui/gallery/adapter/AlbumAdapterBase;->getAlbumName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/miui/gallery/picker/PickAlbumDetailActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 104
    .restart local v1    # "isOwnerShareAlbum":Z
    .restart local v2    # "isPanoAlbum":Z
    .restart local v3    # "isShareAlbum":Z
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v4

    goto :goto_1
.end method
