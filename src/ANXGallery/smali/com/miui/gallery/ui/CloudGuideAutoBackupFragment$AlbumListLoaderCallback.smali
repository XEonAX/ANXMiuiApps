.class Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;
.super Ljava/lang/Object;
.source "CloudGuideAutoBackupFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumListLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;-><init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 138
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "loader":Landroid/content/CursorLoader;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 140
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->access$200(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 143
    const-string v1, "immutable = 0 AND attributes & 16 = 0 AND _id < 2147383647"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "sortBy ASC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 149
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 150
    sget-object v1, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 151
    const-string v1, "count > 0"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->access$200(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->access$200(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 167
    return-void
.end method
