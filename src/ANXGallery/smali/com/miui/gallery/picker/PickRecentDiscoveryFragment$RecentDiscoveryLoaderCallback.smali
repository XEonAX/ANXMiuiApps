.class Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;
.super Ljava/lang/Object;
.source "PickRecentDiscoveryFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentDiscoveryLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    iget-object v1, v1, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "loader":Landroid/content/CursorLoader;
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 133
    sget-object v1, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$100(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$200(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$300(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_1
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 140
    sget-object v1, Lcom/miui/gallery/util/AlbumsCursorHelper;->ALL_ALBUMS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "sortBy ASC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    .end local p2    # "o":Ljava/lang/Object;
    :goto_0
    return-void

    .line 151
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$400(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->copy2Pick()V

    goto :goto_0

    .line 155
    .restart local p2    # "o":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$400(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->setAllAlbums(Landroid/database/Cursor;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$400(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$400(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->setAllAlbums(Landroid/database/Cursor;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
