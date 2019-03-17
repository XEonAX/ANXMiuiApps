.class Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;
.super Ljava/lang/Object;
.source "PickAlbumDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDetailLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Lcom/miui/gallery/picker/PickAlbumDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    sget-object v2, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$100(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 92
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$200(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader$SortBy;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$300(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$300(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$600(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$200(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader$SortBy;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$500(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/SortByHeader;->updateCurrentSortView(Lcom/miui/gallery/widget/SortByHeader$SortBy;I)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->copy2Pick()V

    .line 106
    return-void

    .line 101
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$400(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$400(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 110
    return-void
.end method
