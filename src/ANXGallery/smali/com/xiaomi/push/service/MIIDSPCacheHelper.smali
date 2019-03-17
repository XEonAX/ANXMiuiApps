.class public Lcom/xiaomi/push/service/MIIDSPCacheHelper;
.super Ljava/lang/Object;
.source "MIIDSPCacheHelper.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/service/MIIDSPCacheHelper;


# instance fields
.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "mipush"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->sInstance:Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->sInstance:Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->sInstance:Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->sInstance:Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCachedMIID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "miid"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCachedMIID()Z
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    const-string v0, "0"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getCachedMIID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCachedMIID()V
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "miid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 39
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateCachedMIID(Ljava/lang/String;)V
    .locals 2
    .param p1, "miid"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string p1, "0"

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "miid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
