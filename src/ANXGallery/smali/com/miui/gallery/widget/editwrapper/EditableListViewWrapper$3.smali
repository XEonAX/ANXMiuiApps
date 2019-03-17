.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

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

    const/4 v6, 0x0

    .line 351
    instance-of v1, p2, Lcom/miui/gallery/ui/Checkable;

    if-nez v1, :cond_0

    .line 370
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return v6

    .line 355
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v6, v7

    .line 356
    .local v6, "checked":Z
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v1

    invoke-virtual {v1, p3, v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->setCheckState(IZ)V

    move-object v1, p2

    .line 357
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v1, v6}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 358
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 359
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Landroid/view/ActionMode;

    move-result-object v2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 361
    instance-of v1, p2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 362
    check-cast v1, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 363
    invoke-interface {v1}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 364
    .local v0, "backgroundView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;I)V

    .line 367
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    :cond_2
    if-eqz v6, :cond_3

    instance-of v1, p2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;

    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    move-result-object v1

    check-cast p2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startPickingNumberAnimation(Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;)V

    :cond_3
    move v6, v7

    .line 370
    goto :goto_0
.end method
