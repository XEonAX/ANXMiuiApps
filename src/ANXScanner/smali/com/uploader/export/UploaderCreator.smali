.class public Lcom/uploader/export/UploaderCreator;
.super Ljava/lang/Object;
.source "UploaderCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "<aus> UploaderCreator"

.field private static final managerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/uploader/export/IUploaderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uploader/export/UploaderCreator;->managerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/uploader/export/IUploaderManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uploader/export/UploaderCreator;->get(I)Lcom/uploader/export/IUploaderManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(I)Lcom/uploader/export/IUploaderManager;
    .locals 11
    .param p0, "instanceType"    # I

    .prologue
    .line 38
    sget-object v7, Lcom/uploader/export/UploaderCreator;->managerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uploader/export/IUploaderManager;

    .line 39
    .local v5, "manager":Lcom/uploader/export/IUploaderManager;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 68
    .end local v5    # "manager":Lcom/uploader/export/IUploaderManager;
    .local v6, "manager":Lcom/uploader/export/IUploaderManager;
    :goto_0
    return-object v6

    .line 43
    .end local v6    # "manager":Lcom/uploader/export/IUploaderManager;
    .restart local v5    # "manager":Lcom/uploader/export/IUploaderManager;
    :cond_0
    const-class v8, Lcom/uploader/export/UploaderCreator;

    monitor-enter v8

    .line 44
    :try_start_0
    sget-object v7, Lcom/uploader/export/UploaderCreator;->managerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/uploader/export/IUploaderManager;

    move-object v5, v0

    .line 45
    if-eqz v5, :cond_1

    .line 46
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    .end local v5    # "manager":Lcom/uploader/export/IUploaderManager;
    .restart local v6    # "manager":Lcom/uploader/export/IUploaderManager;
    goto :goto_0

    .line 50
    .end local v6    # "manager":Lcom/uploader/export/IUploaderManager;
    .restart local v5    # "manager":Lcom/uploader/export/IUploaderManager;
    :cond_1
    :try_start_1
    const-string v7, "com.uploader.implement.UploaderManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v7, v9

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 52
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 53
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/uploader/export/IUploaderManager;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    sget-object v7, Lcom/uploader/export/UploaderCreator;->managerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {v5}, Lcom/uploader/export/IUploaderManager;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/uploader/export/UploaderGlobal;->getDependency(Ljava/lang/Integer;)Lcom/uploader/export/IUploaderDependency;

    move-result-object v3

    .line 62
    .local v3, "dependency":Lcom/uploader/export/IUploaderDependency;
    if-eqz v3, :cond_2

    .line 63
    invoke-static {}, Lcom/uploader/export/UploaderGlobal;->retrieveContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Lcom/uploader/export/IUploaderManager;->initialize(Landroid/content/Context;Lcom/uploader/export/IUploaderDependency;)Z

    .line 66
    .end local v3    # "dependency":Lcom/uploader/export/IUploaderDependency;
    :cond_2
    monitor-exit v8

    move-object v6, v5

    .line 68
    .end local v5    # "manager":Lcom/uploader/export/IUploaderManager;
    .restart local v6    # "manager":Lcom/uploader/export/IUploaderManager;
    goto :goto_0

    .line 54
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "manager":Lcom/uploader/export/IUploaderManager;
    .restart local v5    # "manager":Lcom/uploader/export/IUploaderManager;
    :catch_0
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<aus> UploaderCreator "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 66
    .end local v4    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method
