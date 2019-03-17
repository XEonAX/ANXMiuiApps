.class public Lcom/miui/gallery/ui/AlbumLocalPageFragment;
.super Lcom/miui/gallery/ui/BaseAlbumPageFragment;
.source "AlbumLocalPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;

.field private mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

.field private mPendingLoadExtraInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mPendingLoadExtraInfo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/ui/AlbumLocalPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mPendingLoadExtraInfo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->startToLoadExtraInfo()V

    return-void
.end method

.method private recordViewAlbum(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumLocalPath(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "localPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "album_path"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "album_attribute"

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAttributes(I)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "album_image_count"

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getAlbumCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "album"

    const-string/jumbo v3, "view_other_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private startToLoadAlbums()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    const-string v0, "AlbumLocalPageFragment"

    const-string/jumbo v1, "startToLoadAlbums"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 168
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mPendingLoadExtraInfo:Z

    .line 169
    return-void
.end method

.method private startToLoadExtraInfo()V
    .locals 4

    .prologue
    .line 172
    const-string v0, "AlbumLocalPageFragment"

    const-string/jumbo v1, "startToLoadExtraInfo"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 174
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "album_local"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->startToLoadAlbums()V

    .line 163
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 45
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->setHasOptionsMenu(Z)V

    .line 46
    const v3, 0x7f04001e

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f12009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .line 48
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getRecycler()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 49
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 50
    new-instance v3, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/adapter/AlbumPageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    .line 51
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f020265

    const v5, 0x7f0201af

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;-><init>(Landroid/content/Context;IILcom/miui/gallery/widget/DividerTypeProvider;)V

    .line 53
    .local v0, "decoration":Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 54
    .local v1, "itemDividerPaddingStart":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->setItemDividerPadding(Landroid/graphics/Rect;)V

    .line 55
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 56
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3, v8}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 57
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 59
    new-instance v3, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-direct {v3, p0, v8}, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;Lcom/miui/gallery/ui/AlbumLocalPageFragment$1;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;

    .line 60
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0331

    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-object v2
.end method

.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p3}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->recordViewAlbum(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onStart()V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->updateGalleryCloudSyncableState()V

    .line 68
    return-void
.end method
