.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p2, "x1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 509
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 511
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 514
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 519
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 520
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 521
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)V

    .line 526
    :cond_1
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 531
    return-void
.end method
