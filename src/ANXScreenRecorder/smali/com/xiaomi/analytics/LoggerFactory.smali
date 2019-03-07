.class Lcom/xiaomi/analytics/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/xiaomi/analytics/BaseLogger;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggerFactory"


# instance fields
.field public mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/xiaomi/analytics/LoggerFactory;, "Lcom/xiaomi/analytics/LoggerFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LoggerFactory;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/xiaomi/analytics/BaseLogger;
    .locals 8
    .param p2, "configKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/xiaomi/analytics/LoggerFactory;, "Lcom/xiaomi/analytics/LoggerFactory<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    .line 21
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clazz is null or configKey is empty. configKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/analytics/LoggerFactory;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/analytics/BaseLogger;

    .line 24
    .local v3, "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    if-nez v3, :cond_2

    .line 26
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 27
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/xiaomi/analytics/BaseLogger;

    move-object v3, v0

    .line 28
    iget-object v5, p0, Lcom/xiaomi/analytics/LoggerFactory;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 35
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v3    # "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    .local v4, "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    :goto_0
    return-object v4

    .line 30
    .end local v4    # "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    .restart local v3    # "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LoggerFactory"

    invoke-static {v5}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getLogger e"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not instantiate logger. configKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v4, v3

    .line 35
    .end local v3    # "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    .restart local v4    # "t":Lcom/xiaomi/analytics/BaseLogger;, "TT;"
    goto :goto_0
.end method
