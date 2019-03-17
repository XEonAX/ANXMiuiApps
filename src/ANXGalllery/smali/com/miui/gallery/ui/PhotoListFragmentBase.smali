.class public abstract Lcom/miui/gallery/ui/PhotoListFragmentBase;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "PhotoListFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;
    }
.end annotation


# instance fields
.field protected mAlbumDetailGridView:Landroid/widget/GridView;

.field protected mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

.field protected mAlbumId:J

.field protected mAlbumName:Ljava/lang/String;

.field protected mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumId:J

    .line 140
    return-void
.end method


# virtual methods
.method protected configLoader(Landroid/content/CursorLoader;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getProjection()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getCurrentSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected abstract getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
.end method

.method protected getCurrentSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "alias_sort_time DESC "

    return-object v0
.end method

.method protected getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;-><init>(Lcom/miui/gallery/ui/PhotoListFragmentBase;)V

    return-object v0
.end method

.method protected abstract getLayoutSource()I
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method protected getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoListFragmentBase$PhotoListLoaderCallback;-><init>(Lcom/miui/gallery/ui/PhotoListFragmentBase;Lcom/miui/gallery/ui/PhotoListFragmentBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSelection()Ljava/lang/String;
.end method

.method protected abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method protected getSupportOperationMask()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method protected getViewAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected mayDoAdditionalWork(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "o"    # Landroid/database/Cursor;

    .prologue
    .line 175
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 102
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 120
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 126
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getViewAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    .line 181
    .local v0, "adapter":Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroy()V

    .line 185
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getLayoutSource()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumDetailGridView:Landroid/widget/GridView;

    .line 55
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mEmptyView:Landroid/view/View;

    .line 56
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->setEmptyViewVisibility(I)V

    .line 57
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStart()V

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->updateGalleryCloudSyncableState()V

    .line 70
    return-void
.end method

.method protected setEmptyViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method
