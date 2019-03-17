.class public Lcn/kuaipan/android/http/NetCacheManager;
.super Ljava/lang/Object;
.source "NetCacheManager.java"


# static fields
.field private static final sCaches:Lcn/kuaipan/android/utils/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcn/kuaipan/android/http/NetCacheManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDirName:Ljava/lang/String;

.field private final mExternal:Z

.field private mFolderPath:Ljava/lang/String;

.field private mLatestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>()V

    sput-object v0, Lcn/kuaipan/android/http/NetCacheManager;->sCaches:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "external"    # Z
    .param p3, "dirName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcn/kuaipan/android/http/NetCacheManager;->mLatestId:I

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Context can\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    iput-object p1, p0, Lcn/kuaipan/android/http/NetCacheManager;->mContext:Landroid/content/Context;

    .line 49
    iput-boolean p2, p0, Lcn/kuaipan/android/http/NetCacheManager;->mExternal:Z

    .line 50
    iput-object p3, p0, Lcn/kuaipan/android/http/NetCacheManager;->mDirName:Ljava/lang/String;

    .line 52
    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/utils/FileUtils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, "folder":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/http/NetCacheManager;->mFolderPath:Ljava/lang/String;

    .line 55
    new-instance v1, Lcn/kuaipan/android/http/NetCacheManager$1;

    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/http/NetCacheManager$1;-><init>(Lcn/kuaipan/android/http/NetCacheManager;Ljava/io/File;)V

    .line 59
    invoke-virtual {v1}, Lcn/kuaipan/android/http/NetCacheManager$1;->start()V

    .line 61
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcn/kuaipan/android/http/NetCacheManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Z

    .prologue
    .line 20
    const-class v0, Lcn/kuaipan/android/http/NetCacheManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcn/kuaipan/android/http/NetCacheManager;->getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcn/kuaipan/android/http/NetCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcn/kuaipan/android/http/NetCacheManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Z
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v2, Lcn/kuaipan/android/http/NetCacheManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string p2, "net_cache"

    .line 28
    :cond_0
    sget-object v1, Lcn/kuaipan/android/http/NetCacheManager;->sCaches:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/http/NetCacheManager;

    .line 30
    .local v0, "result":Lcn/kuaipan/android/http/NetCacheManager;
    if-nez v0, :cond_1

    .line 31
    new-instance v0, Lcn/kuaipan/android/http/NetCacheManager;

    .end local v0    # "result":Lcn/kuaipan/android/http/NetCacheManager;
    invoke-direct {v0, p0, p1, p2}, Lcn/kuaipan/android/http/NetCacheManager;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 32
    .restart local v0    # "result":Lcn/kuaipan/android/http/NetCacheManager;
    sget-object v1, Lcn/kuaipan/android/http/NetCacheManager;->sCaches:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3, p2, v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    monitor-exit v2

    return-object v0

    .line 25
    .end local v0    # "result":Lcn/kuaipan/android/http/NetCacheManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getNextCache()Ljava/io/File;
    .locals 7

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget v3, p0, Lcn/kuaipan/android/http/NetCacheManager;->mLatestId:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcn/kuaipan/android/http/NetCacheManager;->mLatestId:I

    .line 77
    .local v2, "id":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const-string v3, "%08d.tmp"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcn/kuaipan/android/http/NetCacheManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/kuaipan/android/http/NetCacheManager;->mDirName:Ljava/lang/String;

    iget-boolean v5, p0, Lcn/kuaipan/android/http/NetCacheManager;->mExternal:Z

    invoke-static {v3, v4, v5}, Lcn/kuaipan/android/utils/FileUtils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "folder":Ljava/io/File;
    if-nez v1, :cond_0

    .line 81
    new-instance v3, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v4, 0x7a124

    invoke-direct {v3, v4}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(I)V

    throw v3

    .line 77
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "folder":Ljava/io/File;
    .end local v2    # "id":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 83
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "folder":Ljava/io/File;
    .restart local v2    # "id":I
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/kuaipan/android/http/NetCacheManager;->mFolderPath:Ljava/lang/String;

    .line 84
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public assignCache()Ljava/io/File;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "result":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/http/NetCacheManager;->getNextCache()Ljava/io/File;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 70
    return-object v0
.end method

.method public releaseCache(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/kuaipan/android/http/NetCacheManager;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
