.class Lcom/miui/gallery/picker/PickPeoplePageFragment$1;
.super Ljava/lang/Object;
.source "PickPeoplePageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickPeoplePageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickPeoplePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickPeoplePageFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, -0x1

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->access$000(Lcom/miui/gallery/picker/PickPeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v4

    .line 54
    invoke-virtual {v4, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getPeopleIdOfItem(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "peopleId":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->access$000(Lcom/miui/gallery/picker/PickPeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v4

    .line 56
    invoke-virtual {v4, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getPeopleLocalIdOfItem(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "peopleLocalId":Ljava/lang/String;
    const-string v4, "server_id_of_album"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v4, "local_id_of_album"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v4, "album_name"

    check-cast p2, Lcom/miui/gallery/ui/PeoplePageGridItem;

    .line 62
    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/miui/gallery/ui/PeoplePageGridItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->access$100(Lcom/miui/gallery/picker/PickPeoplePageFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v4, "relationType"

    iget-object v6, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    .line 71
    invoke-static {v6}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->access$000(Lcom/miui/gallery/picker/PickPeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;

    move-result-object v6

    .line 72
    invoke-virtual {v6, p3}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getRelationTypeOfItem(I)I

    move-result v6

    .line 69
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/miui/gallery/picker/PickerActivity;

    .line 76
    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickerActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v3

    .line 77
    .local v3, "picker":Lcom/miui/gallery/picker/helper/Picker;
    const-string v6, "pick-upper-bound"

    .line 78
    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v4

    sget-object v7, Lcom/miui/gallery/picker/helper/Picker$Mode;->UNLIMITED:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v4, v7, :cond_1

    move v4, v5

    .line 77
    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v4, "pick-lower-bound"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iget-object v5, v5, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5}, Lcom/miui/gallery/picker/helper/Picker;->baseline()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v4, "picker_media_type"

    .line 82
    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ordinal()I

    move-result v5

    .line 81
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v4, "picker_result_set"

    .line 84
    invoke-static {v3}, Lcom/miui/gallery/picker/PickerActivity;->copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;

    move-result-object v5

    .line 83
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    const-string v4, "picker_result_type"

    .line 86
    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ordinal()I

    move-result v5

    .line 85
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v4, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;->this$0:Lcom/miui/gallery/picker/PickPeoplePageFragment;

    iget-object v4, v4, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v4

    goto :goto_1
.end method
