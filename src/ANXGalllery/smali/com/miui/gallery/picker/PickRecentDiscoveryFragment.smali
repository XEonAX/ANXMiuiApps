.class public Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;
.super Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
.source "PickRecentDiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;,
        Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

.field private mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

.field private mLoaderCallback:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "recent"

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v0, v1, :cond_0

    .line 92
    const-string v0, "serverType=?"

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectionArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v0, v1, :cond_0

    .line 99
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v0, v1, :cond_1

    .line 101
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "dateModified DESC"

    return-object v0
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 83
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbRecentColumnsLand:I

    .line 87
    .local v0, "columns":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 88
    return-void

    .line 85
    .end local v0    # "columns":I
    :cond_0
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbRecentColumnsPortrait:I

    .restart local v0    # "columns":I
    goto :goto_0
.end method


# virtual methods
.method protected bindCheckState(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 189
    iget-object v3, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v3, v4, :cond_1

    .line 190
    instance-of v3, p1, Lcom/miui/gallery/ui/MicroThumbGridItem;

    if-eqz v3, :cond_0

    .line 191
    check-cast p1, Lcom/miui/gallery/ui/MicroThumbGridItem;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSimilarMarkEnable(Z)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/miui/gallery/ui/Checkable;

    .line 197
    .local v0, "checkable":Lcom/miui/gallery/ui/Checkable;
    invoke-interface {v0, v5}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 198
    invoke-static {p2}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "sha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3, v2}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 200
    .local v1, "checked":Z
    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "picker_recent_album"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    .line 114
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    .line 115
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_processing_items"

    .line 116
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mLoaderCallback:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mLoaderCallback:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mLoaderCallback:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$RecentDiscoveryLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 70
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 77
    .local v0, "firstVisibleItemPosition":I
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;-><init>(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->setShareAlbums(Landroid/database/Cursor;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 209
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onDestroy()V

    .line 210
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHeadersIgnorePadding(Z)V

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAdapter:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->intialSelections()V

    .line 61
    return-object v0
.end method
