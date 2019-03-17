.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->removeItemByIds(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

.field final synthetic val$sha1s:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iput-object p2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->val$sha1s:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 641
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v2, v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->stopActionMode()V

    .line 642
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->val$sha1s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    .local v1, "sha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v3, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    .end local v1    # "sha1":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v2, v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v5, v5, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 648
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "count"

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->val$sha1s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v2, "scenarioId"

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v3, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v2, "assistant"

    const-string v3, "assistant_card_remove_photos"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 652
    return-void
.end method
