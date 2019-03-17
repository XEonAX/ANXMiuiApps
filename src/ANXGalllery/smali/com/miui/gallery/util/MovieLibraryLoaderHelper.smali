.class public Lcom/miui/gallery/util/MovieLibraryLoaderHelper;
.super Ljava/lang/Object;
.source "MovieLibraryLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;,
        Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;


# instance fields
.field private mDownloadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDownloading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->sInstance:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mDownloadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->refreshDownloadResult(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper;
    .param p1, "x1"    # Lcom/miui/gallery/assistant/library/Library;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->startDownload(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->sInstance:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    return-object v0
.end method

.method private getLoaderState(Lcom/miui/gallery/assistant/library/Library;)I
    .locals 2
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mIsDownloading:Z

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private onDownloading()V
    .locals 3

    .prologue
    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mIsDownloading:Z

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mDownloadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .line 117
    .local v0, "downloadStateListener":Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;
    invoke-interface {v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;->onDownloading()V

    goto :goto_0

    .line 119
    .end local v0    # "downloadStateListener":Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;
    :cond_0
    return-void
.end method

.method private refreshDownloadResult(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "resultCode"    # I

    .prologue
    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mIsDownloading:Z

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mDownloadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .line 170
    .local v0, "downloadStateListener":Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;->onFinish(ZI)V

    goto :goto_0

    .line 172
    .end local v0    # "downloadStateListener":Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    const v1, 0x7f0c0391

    :goto_1
    invoke-static {v2, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 173
    return-void

    .line 172
    :cond_1
    const v1, 0x7f0c05a2

    goto :goto_1
.end method

.method private startDownload(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V
    .locals 3
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;
    .param p2, "allowedOverMetered"    # Z
    .param p3, "downloadStartListener"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .prologue
    .line 151
    if-eqz p3, :cond_0

    .line 152
    invoke-interface {p3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;->onDownloading()V

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    new-instance v0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;-><init>(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$2;-><init>(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->downloadLibrary(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private startDownloadWithCheck(Landroid/app/Activity;Lcom/miui/gallery/assistant/library/Library;Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "library"    # Lcom/miui/gallery/assistant/library/Library;
    .param p3, "downloadStartListener"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02c6

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 124
    const-string v0, "MovieLibraryLoaderHelper"

    const-string v1, "download sdk no network"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->refreshDownloadResult(ZI)V

    .line 148
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v5, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$1;

    invoke-direct {v5, p0, p2, p3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$1;-><init>(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;Lcom/miui/gallery/assistant/library/Library;Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    .line 139
    .local v5, "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c02c4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    goto :goto_0

    .line 146
    .end local v5    # "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    :cond_1
    invoke-direct {p0, p2, v2, p3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->startDownload(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addDownloadStateListener(Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mDownloadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public checkAbleOrDownload(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->checkAbleOrDownload(Landroid/app/Activity;Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)Z

    move-result v0

    return v0
.end method

.method public checkAbleOrDownload(Landroid/app/Activity;Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "downloadStartListener"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .prologue
    .line 66
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v1

    const-wide/16 v2, 0x3f3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrary(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v0

    .line 67
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getLoaderState(Lcom/miui/gallery/assistant/library/Library;)I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 72
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->onDownloading()V

    .line 71
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->startDownloadWithCheck(Landroid/app/Activity;Lcom/miui/gallery/assistant/library/Library;Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLibraryPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v3

    const-wide/16 v4, 0x3f3

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrary(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v0

    .line 102
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-eq v3, v4, :cond_2

    .line 104
    :cond_0
    const-string v3, "MovieLibraryLoaderHelper"

    const-string v4, "library path is null"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    :goto_0
    return-object v2

    .line 107
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->getLibraryItems()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "libraryItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/assistant/library/LibraryItem;->getDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getLoaderState()I
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v1

    const-wide/16 v2, 0x3f3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrary(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v0

    .line 39
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getLoaderState(Lcom/miui/gallery/assistant/library/Library;)I

    move-result v1

    return v1
.end method

.method public removeDownloadStateListener(Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->mDownloadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method
