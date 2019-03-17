.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 461
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 463
    :cond_0
    return-void
.end method
