.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeCallback"
.end annotation


# instance fields
.field private mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p2, "x1"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$1;

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    return-object v0
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1027
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    :goto_0
    return v1

    .line 1030
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 1038
    goto :goto_0

    .line 1032
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1035
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->setAllItemsCheckState(Z)V

    goto :goto_0

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1000
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1017
    .end local p1    # "mode":Landroid/view/ActionMode;
    :goto_0
    return v0

    .line 1004
    .restart local p1    # "mode":Landroid/view/ActionMode;
    :cond_0
    sget v0, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 1005
    instance-of v0, p1, Lmiui/view/EditActionMode;

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .line 1007
    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lmiui/view/EditActionMode;

    const v4, 0x1020019

    const/4 v5, 0x3

    .line 1006
    invoke-static {v3, v0, v4, v5}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V

    .line 1010
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .line 1011
    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lmiui/view/EditActionMode;

    .end local p1    # "mode":Landroid/view/ActionMode;
    const v3, 0x102001a

    .line 1010
    invoke-static {v0, p1, v3, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1016
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1502(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Z)Z

    move v0, v2

    .line 1017
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1044
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1602(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;

    .line 1045
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$902(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1046
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1702(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Z)Z

    .line 1047
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1048
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 1049
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1502(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Z)Z

    .line 1050
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .line 992
    return-void
.end method
