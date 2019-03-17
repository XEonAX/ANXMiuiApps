.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->initHeaderView()V
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
    .line 220
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->isPlayEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;)V

    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1102(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method
