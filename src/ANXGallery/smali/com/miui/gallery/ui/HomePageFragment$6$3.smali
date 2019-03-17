.class Lcom/miui/gallery/ui/HomePageFragment$6$3;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment$6;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/HomePageFragment$6;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment$6;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/HomePageFragment$6;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$6$3;->this$1:Lcom/miui/gallery/ui/HomePageFragment$6;

    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageFragment$6$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([J)V
    .locals 8
    .param p1, "result"    # [J

    .prologue
    .line 599
    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment$6$3;->this$1:Lcom/miui/gallery/ui/HomePageFragment$6;

    iget-object v6, v6, Lcom/miui/gallery/ui/HomePageFragment$6;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/HomePageFragment;->access$700(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItems()Ljava/util/List;

    move-result-object v5

    .line 600
    .local v5, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    const/4 v0, 0x0

    .line 601
    .local v0, "bestImageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 602
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getId()J

    move-result-wide v2

    .line 603
    .local v2, "id":J
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v3, v7}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 604
    add-int/lit8 v0, v0, 0x1

    .line 601
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v2    # "id":J
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v4, "map":Ljava/util/Map;
    const-string v6, "count"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v6, "best_image_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v6, "home"

    const-string v7, "produce"

    invoke-static {v6, v7, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 611
    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment$6$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    .line 612
    return-void
.end method
