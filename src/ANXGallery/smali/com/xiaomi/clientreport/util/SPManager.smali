.class public Lcom/xiaomi/clientreport/util/SPManager;
.super Ljava/lang/Object;
.source "SPManager.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/clientreport/util/SPManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaomi/clientreport/util/SPManager;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/clientreport/util/SPManager;->sInstance:Lcom/xiaomi/clientreport/util/SPManager;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/xiaomi/clientreport/util/SPManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/xiaomi/clientreport/util/SPManager;->sInstance:Lcom/xiaomi/clientreport/util/SPManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/xiaomi/clientreport/util/SPManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/clientreport/util/SPManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/clientreport/util/SPManager;->sInstance:Lcom/xiaomi/clientreport/util/SPManager;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/xiaomi/clientreport/util/SPManager;->sInstance:Lcom/xiaomi/clientreport/util/SPManager;

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
.method public declared-synchronized getLongValue(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/clientreport/util/SPManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p3

    .line 65
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p3    # "defaultValue":J
    :goto_0
    monitor-exit p0

    return-wide p3

    .line 64
    .restart local p3    # "defaultValue":J
    :catch_0
    move-exception v1

    .line 65
    .local v1, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 62
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/clientreport/util/SPManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 55
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p3    # "defaultValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object p3

    .line 54
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 52
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLongValue(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/clientreport/util/SPManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 44
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStringnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/clientreport/util/SPManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 37
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
