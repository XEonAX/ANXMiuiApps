.class public Lcom/miui/gallery/ui/AlbumPageHeaderController;
.super Ljava/lang/Object;
.source "AlbumPageHeaderController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

.field private mAlbumCoverNum:I

.field private mFragment:Landroid/app/Fragment;

.field private mGridView:Landroid/widget/GridView;

.field private mLocationsAlbumCoverServerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchStatus:I

.field private mTagsAlbumCoverServerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskFuture:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mSearchStatus:I

    .line 59
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mGridView:Landroid/widget/GridView;

    .line 61
    new-instance v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAdapter:Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAdapter:Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAlbumCoverNum:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mLocationsAlbumCoverServerIds:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTagsAlbumCoverServerIds:Ljava/util/ArrayList;

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x4

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mLocationsAlbumCoverServerIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumPageHeaderController;Landroid/content/Context;J)Z
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->isAlbumCoverValid(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/LoaderManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTagsAlbumCoverServerIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private buildQueryLoaderByType(Lcom/miui/gallery/search/SearchConstants$SectionType;)Lcom/miui/gallery/search/core/query/QueryLoader;
    .locals 5
    .param p1, "type"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    const/4 v3, 0x1

    .line 83
    new-instance v0, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT_LIST:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>(Lcom/miui/gallery/search/SearchConstants$SearchType;)V

    .line 84
    .local v0, "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 85
    const-string v1, "pos"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 86
    const-string v1, "num"

    iget v2, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAlbumCoverNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 87
    const-string v1, "secureMode"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 88
    const-string/jumbo v1, "use_persistent_response"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 89
    new-instance v1, Lcom/miui/gallery/search/core/query/QueryLoader;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    .line 90
    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/search/resultpage/DataListResultProcessor;

    invoke-direct {v4}, Lcom/miui/gallery/search/resultpage/DataListResultProcessor;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V

    return-object v1
.end method

.method private getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method private isAlbumCoverValid(Landroid/content/Context;J)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 257
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    const-string v3, "serverId = ? AND ((localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))) AND ((localGroupId!=-1000))"

    new-array v4, v8, [Ljava/lang/String;

    .line 262
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageHeaderController$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController$2;-><init>(Lcom/miui/gallery/ui/AlbumPageHeaderController;)V

    move-object v0, p1

    .line 257
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 270
    .local v7, "result":Ljava/lang/Boolean;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method private parseAlbumCoverServerId(Ljava/lang/String;)J
    .locals 4
    .param p1, "cover"    # Ljava/lang/String;

    .prologue
    .line 174
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "serverId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 177
    :goto_0
    return-wide v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AlbumPageHeaderController"

    const-string v2, "Invalid album cover Uri: %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private restartSearchAlbumLoaderIfNeeded()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;-><init>(Lcom/miui/gallery/ui/AlbumPageHeaderController;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private updateSearchStatus(I)V
    .locals 3
    .param p1, "newStatus"    # I

    .prologue
    const/4 v2, 0x0

    .line 182
    iget v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mSearchStatus:I

    if-ne p1, v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mSearchStatus:I

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 187
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 189
    :cond_1
    iput p1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mSearchStatus:I

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "loader":Landroid/content/Loader;
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    .end local v0    # "loader":Landroid/content/Loader;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .restart local v0    # "loader":Landroid/content/Loader;
    move-object v1, v0

    .line 99
    check-cast v1, Landroid/content/CursorLoader;

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 102
    :pswitch_1
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_LOCATION_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->buildQueryLoaderByType(Lcom/miui/gallery/search/SearchConstants$SectionType;)Lcom/miui/gallery/search/core/query/QueryLoader;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_2
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_TAG_LIST:Lcom/miui/gallery/search/SearchConstants$SectionType;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->buildQueryLoaderByType(Lcom/miui/gallery/search/SearchConstants$SectionType;)Lcom/miui/gallery/search/core/query/QueryLoader;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v0, Lcom/miui/gallery/search/SearchStatusLoader;

    .end local v0    # "loader":Landroid/content/Loader;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/search/SearchStatusLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;)V

    .restart local v0    # "loader":Landroid/content/Loader;
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTaskFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 277
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 8
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 170
    .end local p2    # "data":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .line 120
    .local v1, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    if-eqz p2, :cond_1

    instance-of v4, p2, Landroid/database/Cursor;

    if-eqz v4, :cond_1

    move-object v3, p2

    .line 121
    check-cast v3, Landroid/database/Cursor;

    .line 123
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 124
    invoke-interface {v3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "face_album_cover"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAdapter:Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->setAlbumCover(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 130
    .end local v1    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    :pswitch_1
    const/4 v2, 0x0

    .line 131
    .local v2, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    instance-of v4, p2, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    if-eqz v4, :cond_3

    .line 132
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mLocationsAlbumCoverServerIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 133
    check-cast p2, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .restart local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    .line 137
    check-cast v4, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "cover":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mLocationsAlbumCoverServerIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->parseAlbumCoverServerId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 143
    .end local v0    # "cover":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAdapter:Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->setAlbumCover(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 147
    .end local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_2
    const/4 v2, 0x0

    .line 148
    .restart local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    instance-of v4, p2, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    if-eqz v4, :cond_4

    .line 149
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTagsAlbumCoverServerIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 150
    check-cast p2, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v3

    .line 154
    check-cast v4, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "cover":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mTagsAlbumCoverServerIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->parseAlbumCoverServerId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 160
    .end local v0    # "cover":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController;->mAdapter:Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->setAlbumCover(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 164
    .end local v2    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_3
    if-eqz p2, :cond_0

    instance-of v4, p2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 165
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->updateSearchStatus(I)V

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 194
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->restartSearchAlbumLoaderIfNeeded()V

    .line 281
    return-void
.end method
