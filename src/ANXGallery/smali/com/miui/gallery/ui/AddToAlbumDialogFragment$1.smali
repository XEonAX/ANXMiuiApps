.class Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToAlbumDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "loader":Landroid/content/CursorLoader;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$000(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 153
    sget-object v1, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$100(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 155
    const-string v1, "classification ASC, sortBy ASC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-object v0

    .line 158
    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 159
    sget-object v1, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 160
    const-string v1, "count > 0"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 168
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 169
    .local v0, "placeHolder":Landroid/database/MatrixCursor;
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$200(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$300(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$400(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->access$600(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 174
    .local v1, "sortedCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    move-result-object v3

    if-eqz v1, :cond_1

    new-instance v2, Landroid/database/MergeCursor;

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v2

    .end local v0    # "placeHolder":Landroid/database/MatrixCursor;
    :cond_1
    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 182
    .end local v1    # "sortedCursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
