.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;
.super Ljava/lang/Object;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAddToAlbum:Landroid/view/MenuItem;

.field private mCreativity:Landroid/view/MenuItem;

.field private mDelete:Landroid/view/MenuItem;

.field private mMode:Landroid/view/ActionMode;

.field private mRemoveSecret:Landroid/view/MenuItem;

.field private mSend:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private isMenuItemVisible(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 769
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMenuState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 733
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemCount()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 734
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mRemoveSecret:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mRemoveSecret:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 747
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mSend:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 766
    :cond_4
    :goto_0
    return-void

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 751
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 753
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 754
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 756
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 757
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 759
    :cond_8
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mRemoveSecret:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 760
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mRemoveSecret:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 762
    :cond_9
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 763
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mSend:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 677
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 725
    :goto_0
    return v2

    .line 679
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$1;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;)V

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    .line 685
    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVirtualAlbum()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-static {v4}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$500(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v5

    .line 679
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZ[J)V

    :goto_2
    move v2, v6

    .line 725
    goto :goto_0

    :cond_0
    move v3, v2

    .line 685
    goto :goto_1

    .line 688
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$600(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Landroid/view/ActionMode;)V

    goto :goto_2

    .line 691
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$2;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;Landroid/view/ActionMode;)V

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 708
    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItems()Ljava/util/List;

    move-result-object v2

    .line 691
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doProduceCreation(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/List;)V

    goto :goto_2

    .line 711
    :sswitch_3
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8$3;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;Landroid/view/ActionMode;)V

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 717
    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v2

    .line 711
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->removeFromSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    goto :goto_2

    .line 720
    :sswitch_4
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$700(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 677
    :sswitch_data_0
    .sparse-switch
        0x7f12026b -> :sswitch_1
        0x7f120301 -> :sswitch_2
        0x7f120302 -> :sswitch_4
        0x7f120304 -> :sswitch_0
        0x7f120315 -> :sswitch_3
    .end sparse-switch
.end method

.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->updateMenuState()V

    .line 636
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 645
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mMode:Landroid/view/ActionMode;

    .line 646
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isSecretAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v3, 0x7f13000a

    invoke-virtual {v1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 648
    const v1, 0x7f120315

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mRemoveSecret:Landroid/view/MenuItem;

    .line 656
    :goto_0
    const v1, 0x7f12026b

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    .line 657
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 658
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->isVideoAlbum()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    :cond_1
    const v1, 0x7f120302

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mSend:Landroid/view/MenuItem;

    .line 664
    const-string v1, "album_detail"

    const-string v3, "action_mode_create"

    invoke-static {v1, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onEnterActionMode()V

    .line 667
    return v2

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f13000e

    .line 652
    .local v0, "menuResId":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 653
    const v1, 0x7f120304

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mAddToAlbum:Landroid/view/MenuItem;

    .line 654
    const v1, 0x7f120301

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->mCreativity:Landroid/view/MenuItem;

    goto :goto_0

    .line 650
    .end local v0    # "menuResId":I
    :cond_3
    const v0, 0x7f130005

    goto :goto_2

    .line 658
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 730
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$8;->updateMenuState()V

    .line 641
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method
