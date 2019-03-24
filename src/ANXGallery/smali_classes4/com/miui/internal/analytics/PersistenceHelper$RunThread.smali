.class Lcom/miui/internal/analytics/PersistenceHelper$RunThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/PersistenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunThread"
.end annotation


# instance fields
.field final synthetic an:Lcom/miui/internal/analytics/PersistenceHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->an:Lcom/miui/internal/analytics/PersistenceHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/PersistenceHelper$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;-><init>(Lcom/miui/internal/analytics/PersistenceHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 85
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->an:Lcom/miui/internal/analytics/PersistenceHelper;

    invoke-static {v0}, Lcom/miui/internal/analytics/PersistenceHelper;->a(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->an:Lcom/miui/internal/analytics/PersistenceHelper;

    new-instance v2, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;-><init>(Lcom/miui/internal/analytics/PersistenceHelper$RunThread;)V

    invoke-static {v1, v2}, Lcom/miui/internal/analytics/PersistenceHelper;->a(Lcom/miui/internal/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;

    .line 97
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->an:Lcom/miui/internal/analytics/PersistenceHelper;

    invoke-static {v1}, Lcom/miui/internal/analytics/PersistenceHelper;->a(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->an:Lcom/miui/internal/analytics/PersistenceHelper;

    invoke-static {v1}, Lcom/miui/internal/analytics/PersistenceHelper;->a(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 102
    return-void

    .line 99
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
