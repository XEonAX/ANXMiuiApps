.class public Lcom/alibaba/mtl/log/c/c;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/c/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/mtl/log/c/c;


# instance fields
.field private a:Lcom/alibaba/mtl/log/c/a;

.field private b:Ljava/lang/Runnable;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/alibaba/mtl/log/c/c$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/log/c/c$1;-><init>(Lcom/alibaba/mtl/log/c/c;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/c;->b:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/alibaba/mtl/log/c/b;

    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/log/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    .line 33
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V

    .line 34
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/log/c/c$a;

    invoke-direct {v1, p0}, Lcom/alibaba/mtl/log/c/c$a;-><init>(Lcom/alibaba/mtl/log/c/c;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->b(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method private F()V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    const/4 v1, 0x5

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 124
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    const-string v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alibaba/mtl/log/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 129
    const/16 v0, 0x3e8

    .line 130
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    invoke-interface {v1, v0}, Lcom/alibaba/mtl/log/c/a;->e(I)V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/c/c;)Lcom/alibaba/mtl/log/c/a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/alibaba/mtl/log/c/c;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alibaba/mtl/log/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/c;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alibaba/mtl/log/c/c;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/c/c;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/c;

    .line 42
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/c/c;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/mtl/log/c/c;->F()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/mtl/log/c/c;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/mtl/log/c/c;->G()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "LogStoreMgr"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    invoke-interface {v0, p1}, Lcom/alibaba/mtl/log/c/a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/mtl/log/c/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 78
    const-string v1, "LogStoreMgr"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[get]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-object v0
.end method

.method public a(Lcom/alibaba/mtl/log/model/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 51
    const-string v0, "LogStoreMgr"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[add] :"

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p1, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/mtl/log/b/a;->l(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 55
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 56
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/log/c/c;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/log/d/r;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/log/c/c;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 103
    const-string v0, "LogStoreMgr"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[clear]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    invoke-interface {v0}, Lcom/alibaba/mtl/log/c/a;->clear()V

    .line 105
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method public declared-synchronized store()V
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v0, "LogStoreMgr"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[store]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    const/4 v0, 0x0

    .line 89
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/c;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 94
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/c;->a:Lcom/alibaba/mtl/log/c/a;

    invoke-interface {v1, v0}, Lcom/alibaba/mtl/log/c/a;->a(Ljava/util/List;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0

    .line 86
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
