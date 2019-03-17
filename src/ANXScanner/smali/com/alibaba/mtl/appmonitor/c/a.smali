.class public Lcom/alibaba/mtl/appmonitor/c/a;
.super Ljava/lang/Object;
.source "BalancedPool.java"


# static fields
.field private static a:Lcom/alibaba/mtl/appmonitor/c/a;


# instance fields
.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/mtl/appmonitor/c/b;",
            ">;",
            "Lcom/alibaba/mtl/appmonitor/c/c",
            "<+",
            "Lcom/alibaba/mtl/appmonitor/c/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/mtl/appmonitor/c/a;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/c/a;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/c/a;->a:Lcom/alibaba/mtl/appmonitor/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/c/a;->p:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/c/a;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/mtl/appmonitor/c/a;->a:Lcom/alibaba/mtl/appmonitor/c/a;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/mtl/appmonitor/c/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/alibaba/mtl/appmonitor/c/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/c/a;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/c/c;

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/alibaba/mtl/appmonitor/c/c;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/c/c;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/c/a;->p:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/mtl/appmonitor/c/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/c/c;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/c/c;->a()Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/c/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p2}, Lcom/alibaba/mtl/appmonitor/c/b;->fill([Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/mtl/appmonitor/c/b;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    instance-of v0, p1, Lcom/alibaba/mtl/appmonitor/c/e;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/alibaba/mtl/appmonitor/c/d;

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/c/c;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/c/c;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    goto :goto_0
.end method
