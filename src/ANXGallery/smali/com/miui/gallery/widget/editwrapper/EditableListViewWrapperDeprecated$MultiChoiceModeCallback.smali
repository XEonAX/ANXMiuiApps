.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeCallback"
.end annotation


# instance fields
.field private mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p2, "x1"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    return-object v0
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

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

    .line 1057
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    :goto_0
    return v1

    .line 1060
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 1068
    goto :goto_0

    .line 1062
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1065
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isAllItemsChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAllItemsCheckState(Z)V

    goto :goto_0

    .line 1060
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

    .line 1030
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1047
    .end local p1    # "mode":Landroid/view/ActionMode;
    :goto_0
    return v0

    .line 1034
    .restart local p1    # "mode":Landroid/view/ActionMode;
    :cond_0
    sget v0, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 1035
    instance-of v0, p1, Lmiui/view/EditActionMode;

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 1037
    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lmiui/view/EditActionMode;

    const v4, 0x1020019

    const/4 v5, 0x3

    .line 1036
    invoke-static {v3, v0, v4, v5}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V

    .line 1040
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 1041
    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lmiui/view/EditActionMode;

    .end local p1    # "mode":Landroid/view/ActionMode;
    const v3, 0x102001a

    .line 1040
    invoke-static {v0, p1, v3, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 1046
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1602(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Z)Z

    move v0, v2

    .line 1047
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1074
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1702(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;

    .line 1075
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1002(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1076
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1802(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Z)Z

    .line 1077
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 1078
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 1079
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1602(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Z)Z

    .line 1080
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->mWrapped:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .line 1022
    return-void
.end method
