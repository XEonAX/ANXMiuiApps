.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;
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
    name = "MyTemplateItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p2, "x1"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Landroid/support/v7/widget/RecyclerView;Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;IZ)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "holder"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .param p3, "position"    # I
    .param p4, "isChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 525
    if-nez p4, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v2

    .line 528
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/entity/TemplateResource;

    .line 529
    .local v0, "data":Lcom/miui/gallery/movie/entity/TemplateResource;
    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/TemplateResource;->getDownloadState()I

    move-result v1

    .line 530
    .local v1, "state":I
    const/16 v3, 0x11

    if-eq v1, v3, :cond_2

    if-nez v1, :cond_3

    .line 531
    :cond_2
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 532
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setSelectedItemPosition(I)V

    .line 533
    invoke-static {v0}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statItemChoose(Lcom/miui/gallery/movie/entity/MovieResource;)V

    .line 534
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/gallery/movie/entity/TemplateResource;->nameKey:Ljava/lang/String;

    iput-object v3, v2, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    .line 535
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/movie/core/MovieManager;->setTemplate(Lcom/miui/gallery/movie/entity/TemplateResource;)V

    .line 536
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1800(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    .line 537
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->showLoadingView()V

    .line 538
    const/4 v2, 0x1

    goto :goto_0

    .line 539
    :cond_3
    const/16 v3, 0x13

    if-eq v1, v3, :cond_4

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    .line 540
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v3, v0, p3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V

    goto :goto_0
.end method
