.class public Lcom/miui/gallery/ui/RecentDiscoveryFragment;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "RecentDiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/RecentDiscoveryFragment$RecentDiscoveryLoaderCallback;
    }
.end annotation


# instance fields
.field protected mAlbumId:J

.field protected mAlbumName:Ljava/lang/String;

.field private mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

.field protected mEmptyView:Landroid/view/View;

.field protected mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field protected mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field protected mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

.field private mOldestDateModified:J

.field private mRecentDiscoveryAdapter:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 63
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mOldestDateModified:J

    .line 314
    new-instance v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;-><init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mOldestDateModified:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/ui/RecentDiscoveryFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mOldestDateModified:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/RecentDiscoveryFragment;Landroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->doDelete(Landroid/view/ActionMode;)V

    return-void
.end method

.method private doDelete(Landroid/view/ActionMode;)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 526
    const/4 v9, 0x0

    .line 527
    .local v9, "ids":[J
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v9

    .line 528
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lez v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "RecentDiscoveryFragmentDeleteMediaDialogFragment"

    new-instance v3, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;-><init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;Landroid/view/ActionMode;)V

    iget-wide v4, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mAlbumName:Ljava/lang/String;

    .line 544
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getDupType()I

    move-result v7

    const/16 v8, 0x1d

    .line 529
    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0c0159

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private recordOldestOperatedPicture()V
    .locals 8

    .prologue
    .line 115
    iget-wide v4, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mOldestDateModified:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mOldestDateModified:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 118
    .local v0, "days":J
    const-string v3, "days_ago"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v3, "recent_album"

    const-string v4, "recent_album_oldest_operated_picture"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .end local v0    # "days":J
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private recordPageEnterSource()V
    .locals 5

    .prologue
    .line 72
    iget-object v3, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 73
    .local v0, "intentDataUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v3, "source"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "source":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "source"

    if-eqz v2, :cond_1

    .end local v2    # "source":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v3, "recent_album"

    const-string v4, "recent_album_enter_source"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 76
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "source":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "unknown"

    goto :goto_0
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 159
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbRecentColumnsLand:I

    .line 163
    .local v0, "columns":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 164
    return-void

    .line 161
    .end local v0    # "columns":I
    :cond_0
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget v0, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbRecentColumnsPortrait:I

    .restart local v0    # "columns":I
    goto :goto_0
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mRecentDiscoveryAdapter:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mRecentDiscoveryAdapter:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mRecentDiscoveryAdapter:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    return-object v0
.end method

.method protected getDupType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const/4 v0, 0x2

    .line 521
    :cond_0
    return v0
.end method

.method protected getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;-><init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)V

    return-object v0
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$RecentDiscoveryLoaderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$RecentDiscoveryLoaderCallback;-><init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method protected getLoaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Loader;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "album_recent"

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "dateModified DESC"

    return-object v0
.end method

.method protected getSupportOperationMask()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, -0x1

    return v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    .line 175
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    const/4 v2, 0x1

    .line 176
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 132
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 133
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 153
    .local v0, "firstVisibleItemPosition":I
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->recordPageEnterSource()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->recordOldestOperatedPicture()V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mRecentDiscoveryAdapter:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mRecentDiscoveryAdapter:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroy()V

    .line 112
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mAlbumName:Ljava/lang/String;

    .line 89
    const-wide/32 v2, 0x7ffffffc

    iput-wide v2, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mAlbumId:J

    .line 90
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 91
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mEmptyView:Landroid/view/View;

    .line 92
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setEmptyView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setChoiceMode(I)V

    .line 97
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 98
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHeadersIgnorePadding(Z)V

    .line 99
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->setEmptyViewVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 101
    return-object v0
.end method

.method protected setEmptyViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method
