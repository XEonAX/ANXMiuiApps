.class public Lcom/xiaomi/push/service/MIPushAppInfo;
.super Ljava/lang/Object;
.source "MIPushAppInfo.java"


# static fields
.field private static sInstance:Lcom/xiaomi/push/service/MIPushAppInfo;


# instance fields
.field private appContext:Landroid/content/Context;

.field private final disabledPushPkg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final disabledPushPkgCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unRegisteredPkg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/MIPushAppInfo;->sInstance:Lcom/xiaomi/push/service/MIPushAppInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    .line 34
    iget-object v9, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 35
    iput-object p1, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    .line 37
    :cond_0
    iget-object v9, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v10, "mipush_app_info"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 39
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "unregistered_pkg_names"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "value":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "pkgNames":[Ljava/lang/String;
    array-length v10, v5

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v4, v5, v9

    .line 42
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 43
    iget-object v11, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 46
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    const-string v9, "disable_push_pkg_names"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "closeValue":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "closePkgNames":[Ljava/lang/String;
    array-length v10, v2

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v4, v2, v9

    .line 49
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 50
    iget-object v11, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 53
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_4
    const-string v9, "disable_push_pkg_names_cache"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "closeCacheValue":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "closeCacheNames":[Ljava/lang/String;
    array-length v9, v0

    :goto_2
    if-ge v8, v9, :cond_6

    aget-object v4, v0, v8

    .line 56
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 57
    iget-object v10, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 60
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/push/service/MIPushAppInfo;->sInstance:Lcom/xiaomi/push/service/MIPushAppInfo;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/xiaomi/push/service/MIPushAppInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/MIPushAppInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/MIPushAppInfo;->sInstance:Lcom/xiaomi/push/service/MIPushAppInfo;

    .line 28
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/MIPushAppInfo;->sInstance:Lcom/xiaomi/push/service/MIPushAppInfo;

    return-object v0
.end method


# virtual methods
.method public addDisablePushPkg(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    monitor-enter v3

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "mipush_app_info"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "disable_push_pkg_names"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addDisablePushPkgCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "mipush_app_info"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "disable_push_pkg_names_cache"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addUnRegisteredPkg(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    monitor-enter v3

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "mipush_app_info"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "unregistered_pkg_names"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPushDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPushDisabled4User(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUnRegistered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDisablePushPkg(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkg:Ljava/util/List;

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "mipush_app_info"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "disable_push_pkg_names"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeDisablePushPkgCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->disabledPushPkgCache:Ljava/util/List;

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "mipush_app_info"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "disable_push_pkg_names_cache"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeUnRegisteredPkg(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->unRegisteredPkg:Ljava/util/List;

    const-string v4, ","

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAppInfo;->appContext:Landroid/content/Context;

    const-string v4, "mipush_app_info"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "unregistered_pkg_names"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
