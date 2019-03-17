.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

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
    .line 368
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/miui/gallery/ui/Checkable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 389
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 372
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)I

    move-result v1

    sub-int/2addr p3, v1

    .line 373
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckState(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v6, 0x1

    .line 374
    .local v6, "checked":Z
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    move-result-object v1

    invoke-virtual {v1, p3, v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->setCheckState(IZ)V

    move-object v1, p2

    .line 375
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v1, v6}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 376
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 377
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/view/ActionMode;

    move-result-object v2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 379
    instance-of v1, p2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 380
    check-cast v1, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 381
    invoke-interface {v1}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 382
    .local v0, "backgroundView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;I)V

    .line 385
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    :cond_2
    if-eqz v6, :cond_0

    instance-of v1, p2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    move-result-object v1

    check-cast p2, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startPickingNumberAnimation(Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;)V

    goto :goto_0

    .line 373
    .end local v6    # "checked":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
