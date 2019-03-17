.class public Lcom/miui/gallery/net/library/LibraryDownloadManager;
.super Ljava/lang/Object;
.source "LibraryDownloadManager.java"


# instance fields
.field private mDownloadListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDownloadingItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/net/download/Request;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mRequestMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadListenerMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadingItems:Ljava/util/Set;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/net/library/LibraryDownloadManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/net/library/LibraryDownloadManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadingItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/net/library/LibraryDownloadManager;Ljava/util/Set;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/net/library/LibraryDownloadManager;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->isDownloadItemsExists(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/net/library/LibraryDownloadManager;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/net/library/LibraryDownloadManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->downloadResult(JI)V

    return-void
.end method

.method private declared-synchronized addListener(JLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)V
    .locals 3
    .param p1, "libraryId"    # J
    .param p3, "libraryStatusListener"    # Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;>;"
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;>;"
    iget-object v1, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 121
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static checkCondition(Z)Z
    .locals 3
    .param p0, "allowedOverMetered"    # Z

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, "LibraryDownloadManager"

    const-string v2, "CTA not confirmed"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string v1, "LibraryDownloadManager"

    const-string v2, "No network"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    const-string v1, "LibraryDownloadManager"

    const-string v2, "No unmetered network connected"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->haveEnoughSpace()Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    const-string v1, "LibraryDownloadManager"

    const-string v2, "No enough space"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private download(Lcom/miui/gallery/assistant/library/LibraryItem;ZLcom/miui/gallery/net/download/Request$Listener;)Lcom/miui/gallery/net/download/Request;
    .locals 9
    .param p1, "libraryItem"    # Lcom/miui/gallery/assistant/library/LibraryItem;
    .param p2, "allowedOverMetered"    # Z
    .param p3, "listener"    # Lcom/miui/gallery/net/download/Request$Listener;

    .prologue
    .line 145
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/miui/gallery/assistant/library/LibraryItem;->getTargetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, "targetFile":Ljava/io/File;
    new-instance v2, Lcom/miui/gallery/net/resource/DownloadRequest;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/LibraryItem;->getId()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/miui/gallery/net/resource/DownloadRequest;-><init>(J)V

    .line 149
    .local v2, "request":Lcom/miui/gallery/net/resource/DownloadRequest;
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/gallery/net/resource/DownloadRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v4

    .line 150
    .local v4, "response":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 151
    const/4 v6, 0x0

    aget-object v1, v4, v6

    check-cast v1, Lcom/miui/gallery/net/resource/DownloadInfo;

    .line 152
    .local v1, "info":Lcom/miui/gallery/net/resource/DownloadInfo;
    new-instance v0, Lcom/miui/gallery/net/download/Request;

    iget-object v6, v1, Lcom/miui/gallery/net/resource/DownloadInfo;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Lcom/miui/gallery/net/download/Request;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    .line 153
    .local v0, "downloadRequest":Lcom/miui/gallery/net/download/Request;
    new-instance v6, Lcom/miui/gallery/net/download/Verifier$Sha1;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/LibraryItem;->getSha1()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/miui/gallery/net/download/Verifier$Sha1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/miui/gallery/net/download/Request;->setVerifier(Lcom/miui/gallery/net/download/Verifier;)V

    .line 154
    invoke-virtual {v0, p2}, Lcom/miui/gallery/net/download/Request;->setAllowedOverMetered(Z)V

    .line 155
    invoke-virtual {v0, p3}, Lcom/miui/gallery/net/download/Request;->setListener(Lcom/miui/gallery/net/download/Request$Listener;)V

    .line 156
    sget-object v6, Lcom/miui/gallery/net/download/GalleryDownloadManager;->INSTANCE:Lcom/miui/gallery/net/download/GalleryDownloadManager;

    invoke-virtual {v6, v0}, Lcom/miui/gallery/net/download/GalleryDownloadManager;->enqueue(Lcom/miui/gallery/net/download/Request;)Z
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "downloadRequest":Lcom/miui/gallery/net/download/Request;
    .end local v1    # "info":Lcom/miui/gallery/net/resource/DownloadInfo;
    .end local v4    # "response":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "requestError":Lcom/miui/gallery/net/base/RequestError;
    const-string v6, "LibraryDownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetch library item info error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Lcom/miui/gallery/net/base/RequestError;->printStackTrace()V

    .line 166
    .end local v3    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downloadResult(JI)V
    .locals 7
    .param p1, "libraryId"    # J
    .param p3, "result"    # I

    .prologue
    .line 171
    iget-object v4, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mRequestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    .local v3, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/net/download/Request;>;"
    if-eqz v3, :cond_1

    .line 173
    if-eqz p3, :cond_0

    .line 174
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/net/download/Request;

    .line 175
    .local v2, "request":Lcom/miui/gallery/net/download/Request;
    sget-object v5, Lcom/miui/gallery/net/download/GalleryDownloadManager;->INSTANCE:Lcom/miui/gallery/net/download/GalleryDownloadManager;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/net/download/GalleryDownloadManager;->cancel(Lcom/miui/gallery/net/download/Request;)V

    goto :goto_0

    .line 178
    .end local v2    # "request":Lcom/miui/gallery/net/download/Request;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 182
    .local v0, "downloadListeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    .line 184
    .local v1, "listener":Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;->onDownloadResult(JI)V

    goto :goto_1

    .line 186
    .end local v1    # "listener":Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mRequestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method private static haveEnoughSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "libs"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 217
    .local v0, "dir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 218
    .local v2, "freeSpace":J
    const-wide/32 v6, 0x6400000

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 219
    const-string v5, "LibraryDownloadManager"

    const-string v6, "Sd card has less than 100M space left"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2    # "freeSpace":J
    :goto_0
    return v4

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LibraryDownloadManager"

    invoke-static {v5, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "freeSpace":J
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isDownloadItemsExists(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/assistant/library/LibraryItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "downloadingSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 132
    .local v0, "item":Lcom/miui/gallery/assistant/library/LibraryItem;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/LibraryItem;->isExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 137
    .end local v0    # "item":Lcom/miui/gallery/assistant/library/LibraryItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel(J)V
    .locals 1
    .param p1, "libraryId"    # J

    .prologue
    .line 141
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->downloadResult(JI)V

    .line 142
    return-void
.end method

.method public declared-synchronized download(JZLjava/util/Set;Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)V
    .locals 9
    .param p1, "libraryId"    # J
    .param p3, "allowedOverMetered"    # Z
    .param p5, "libraryStatusListener"    # Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/assistant/library/LibraryItem;",
            ">;",
            "Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p4, "downloadSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->checkCondition(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    if-eqz p5, :cond_0

    .line 68
    const/4 v0, 0x1

    invoke-interface {p5, p1, p2, v0}, Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;->onDownloadResult(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p5}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->addListener(JLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mRequestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v6, "downloadRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/net/download/Request;>;"
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mRequestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v3, "downloadingSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/library/LibraryItem;

    .line 82
    .local v2, "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadingItems:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/LibraryItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;-><init>(Lcom/miui/gallery/net/library/LibraryDownloadManager;Lcom/miui/gallery/assistant/library/LibraryItem;Ljava/util/Set;J)V

    invoke-direct {p0, v2, p3, v0}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->download(Lcom/miui/gallery/assistant/library/LibraryItem;ZLcom/miui/gallery/net/download/Request$Listener;)Lcom/miui/gallery/net/download/Request;

    move-result-object v7

    .line 109
    .local v7, "request":Lcom/miui/gallery/net/download/Request;
    if-eqz v7, :cond_3

    .line 110
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mDownloadingItems:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/LibraryItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    .end local v2    # "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    .end local v3    # "downloadingSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .end local v6    # "downloadRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/net/download/Request;>;"
    .end local v7    # "request":Lcom/miui/gallery/net/download/Request;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    .restart local v2    # "libraryItem":Lcom/miui/gallery/assistant/library/LibraryItem;
    .restart local v3    # "downloadingSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/assistant/library/LibraryItem;>;"
    .restart local v6    # "downloadRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/net/download/Request;>;"
    .restart local v7    # "request":Lcom/miui/gallery/net/download/Request;
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->downloadResult(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isLibraryDownloading(J)Z
    .locals 3
    .param p1, "libraryId"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager;->mRequestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
