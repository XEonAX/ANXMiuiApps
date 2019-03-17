.class Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;
.super Ljava/lang/Object;
.source "MovieStoryPickFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 131
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$700(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$800(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 142
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 146
    return-void
.end method
