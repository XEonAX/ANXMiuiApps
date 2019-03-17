.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->getDefaultSplitActionBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setPadding(IIII)V

    goto :goto_0
.end method
