.class public Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;
.super Ljava/lang/Object;
.source "SharedPreferenceManager.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;


# instance fields
.field private mCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getDataFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    monitor-exit p0

    return-object v2

    .line 84
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 85
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_2
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 90
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->sInstance:Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->sInstance:Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->sInstance:Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->sInstance:Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized putData2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 46
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mCaches:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->getDataFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "cachedValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 114
    .end local v0    # "cachedValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    .restart local v0    # "cachedValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 109
    .end local v0    # "cachedValue":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStringnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->putData2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager$2;-><init>(Lcom/xiaomi/channel/commonutils/android/SharedPreferenceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
