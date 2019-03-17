.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;
.super Ljava/lang/Object;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p2, "x1"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Landroid/support/v7/widget/RecyclerView;Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;IZ)Z
    .locals 7
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "holder"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .param p3, "position"    # I
    .param p4, "isChanged"    # Z

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 619
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->isAddItem(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 620
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v3, :cond_2

    .line 621
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$2100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    .line 623
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$2102(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z

    .line 625
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "card_id"

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$2200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 627
    const-string v3, "pick_sha1"

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getStoryMovieSha1()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 628
    const-string v3, "pick-upper-bound"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v3, "pick-lower-bound"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    move v1, v2

    .line 648
    :goto_1
    return v1

    .line 632
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getListSize()I

    move-result v1

    if-lt v1, v6, :cond_3

    .line 633
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0c02b4

    invoke-static {v1, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 635
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v1, "pick-upper-bound"

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x14

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 642
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz p4, :cond_1

    .line 643
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 644
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->seekToIndex(I)V

    .line 645
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->setDeleteVisible(Z)V

    goto :goto_1
.end method
