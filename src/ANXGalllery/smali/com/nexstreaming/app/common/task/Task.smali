.class public Lcom/nexstreaming/app/common/task/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/task/Task$MultiplexTask;,
        Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;,
        Lcom/nexstreaming/app/common/task/Task$OnFailListener;,
        Lcom/nexstreaming/app/common/task/Task$OnProgressListener;,
        Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;,
        Lcom/nexstreaming/app/common/task/Task$Event;,
        Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;,
        Lcom/nexstreaming/app/common/task/Task$TaskErrorException;,
        Lcom/nexstreaming/app/common/task/Task$TaskError;
    }
.end annotation


# static fields
.field public static final COMPLETED_TASK:Lcom/nexstreaming/app/common/task/Task;

.field public static final INVALID_TASK_ID:I

.field public static final NO_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field public static final TIMEOUT:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field public static final UNKNOWN_ERROR:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field private static sIntIdTaskMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nexstreaming/app/common/task/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLongIdTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nexstreaming/app/common/task/Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLongTaskId:J

.field private static sRegisterCount:I

.field private static sTaskId:I


# instance fields
.field private mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCancellable:Z

.field private mHandler:Landroid/os/Handler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLongTaskId:J

.field private mMaxProgress:I

.field private mProgress:I

.field private mProgressSignalled:Z

.field private mRegistered:Z

.field private mSignalledEvents:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

.field private final mTaskId:I

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    sput v4, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    .line 229
    sput v4, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    .line 231
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/task/Task;-><init>([Lcom/nexstreaming/app/common/task/Task$Event;)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->COMPLETED_TASK:Lcom/nexstreaming/app/common/task/Task;

    .line 471
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$1;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$1;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->UNKNOWN_ERROR:Lcom/nexstreaming/app/common/task/Task$TaskError;

    .line 493
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$5;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$5;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->TIMEOUT:Lcom/nexstreaming/app/common/task/Task$TaskError;

    .line 515
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$6;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$6;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task;->NO_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$TaskError;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    .line 649
    const-class v0, Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    .line 650
    iput v1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    .line 651
    iput v1, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    .line 652
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    .line 653
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/task/Task;->mRegistered:Z

    .line 656
    iput-object v2, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    .line 658
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    .line 659
    iput-object v2, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    .line 660
    iput-object v2, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 764
    iput-object v2, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 747
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    .line 748
    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    .line 749
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    if-nez v0, :cond_0

    .line 750
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    .line 752
    :cond_0
    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 753
    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    .line 755
    :cond_1
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sTaskId:I

    iput v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    .line 756
    sget-wide v0, Lcom/nexstreaming/app/common/task/Task;->sLongTaskId:J

    iput-wide v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLongTaskId:J

    .line 757
    return-void
.end method

.method private varargs constructor <init>([Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 761
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 762
    return-void
.end method

.method static synthetic access$002(Lcom/nexstreaming/app/common/task/Task;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nexstreaming/app/common/task/Task;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static combinedTask(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/nexstreaming/app/common/task/Task;",
            ">;)",
            "Lcom/nexstreaming/app/common/task/Task;"
        }
    .end annotation

    .prologue
    .line 1404
    new-instance v1, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v1}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 1405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1409
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/Task;

    .line 1410
    new-instance v4, Lcom/nexstreaming/app/common/task/Task$11;

    invoke-direct {v4, v2, v1}, Lcom/nexstreaming/app/common/task/Task$11;-><init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v0, v4}, Lcom/nexstreaming/app/common/task/Task;->onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1433
    new-instance v4, Lcom/nexstreaming/app/common/task/Task$12;

    invoke-direct {v4, v2, v1}, Lcom/nexstreaming/app/common/task/Task$12;-><init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v0, v4}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1450
    new-instance v4, Lcom/nexstreaming/app/common/task/Task$2;

    invoke-direct {v4, v2, v1}, Lcom/nexstreaming/app/common/task/Task$2;-><init>(Ljava/util/List;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v0, v4}, Lcom/nexstreaming/app/common/task/Task;->onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1467
    new-instance v4, Lcom/nexstreaming/app/common/task/Task$3;

    invoke-direct {v4, v1}, Lcom/nexstreaming/app/common/task/Task$3;-><init>(Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {v0, v4}, Lcom/nexstreaming/app/common/task/Task;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0

    .line 1477
    :cond_0
    return-object v1
.end method

.method public static findTaskById(I)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 862
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 863
    if-nez v0, :cond_0

    .line 864
    const/4 v0, 0x0

    .line 866
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0
.end method

.method public static findTaskByLongId(J)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 883
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 884
    if-nez v0, :cond_0

    .line 885
    const/4 v0, 0x0

    .line 887
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0
.end method

.method public static makeFailedTask(Lcom/nexstreaming/app/common/task/Task$TaskError;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 463
    invoke-virtual {v0, p0}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 464
    return-object v0
.end method

.method public static makeFailedTask(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 429
    new-instance v1, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 430
    return-object v0
.end method

.method public static makeFailedTask(Ljava/lang/String;)Lcom/nexstreaming/app/common/task/Task;
    .locals 3

    .prologue
    .line 451
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 452
    new-instance v1, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 453
    return-object v0
.end method

.method public static makeFailedTask(Ljava/lang/String;Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 441
    new-instance v1, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    invoke-direct {v1, p1, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 442
    return-object v0
.end method

.method public static makeTaskError(Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeTaskError(Ljava/lang/String;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 2

    .prologue
    .line 419
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeTaskError(Ljava/lang/String;Ljava/lang/Exception;)Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;

    invoke-direct {v0, p1, p0}, Lcom/nexstreaming/app/common/task/Task$SimpleTaskError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method private signalCompletionEvent()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 801
    :cond_0
    return-void
.end method

.method private declared-synchronized signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 4

    .prologue
    .line 1211
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1215
    :cond_1
    :try_start_1
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1216
    const-string v0, "Task"

    const-string v1, "Ingoring attempt to signal a cancelled task."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1220
    :cond_2
    :try_start_2
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1221
    const-string v0, "Task"

    const-string v1, "Ingoring attempt to signal failure on task that already succeeded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1225
    :cond_3
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1226
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 1229
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->isRepeatableEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1230
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1234
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1235
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_6

    .line 1236
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1240
    :cond_7
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->isRepeatableEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1241
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1243
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1244
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;

    invoke-interface {v0, p0, p1}, Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;->onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_2

    .line 1246
    :cond_9
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_0

    .line 1247
    :cond_a
    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;->signalCompletionEvent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static varargs waitForAll([Lcom/nexstreaming/app/common/task/Task;)Lcom/nexstreaming/app/common/task/Task$MultiplexTask;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1492
    new-instance v2, Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    invoke-direct {v2, p0, v5}, Lcom/nexstreaming/app/common/task/Task$MultiplexTask;-><init>([Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$1;)V

    .line 1493
    array-length v0, p0

    new-array v3, v0, [Lcom/nexstreaming/app/common/task/Task$Event;

    move v0, v1

    .line 1494
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 1495
    aput-object v5, v3, v0

    .line 1494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1497
    :cond_0
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$4;

    invoke-direct {v0, p0, v3, v2}, Lcom/nexstreaming/app/common/task/Task$4;-><init>([Lcom/nexstreaming/app/common/task/Task;[Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$MultiplexTask;)V

    .line 1519
    array-length v3, p0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    .line 1520
    sget-object v5, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v4, v5, v0}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1521
    sget-object v5, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v4, v5, v0}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1522
    sget-object v5, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v4, v5, v0}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1524
    :cond_1
    return-object v2
.end method


# virtual methods
.method public awaitTaskCompletion()Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a waitable task"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 777
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Would block on UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 783
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    if-eqz v1, :cond_2

    .line 791
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 794
    :cond_2
    return-object p0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    const/4 v0, 0x1

    move v1, v0

    .line 787
    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 791
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a cancellable task"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 689
    return-void
.end method

.method public didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLongTaskId()J
    .locals 2

    .prologue
    .line 930
    iget-wide v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLongTaskId:J

    return-wide v0
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;-><init>()V

    throw v0

    .line 1143
    :cond_0
    iget v0, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    if-nez v0, :cond_0

    .line 1126
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task$ProgressNotAvailableException;-><init>()V

    throw v0

    .line 1128
    :cond_0
    iget v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    return v0
.end method

.method public getTaskError()Lcom/nexstreaming/app/common/task/Task$TaskError;
    .locals 2

    .prologue
    .line 1155
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error not available (task did not fail)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->UNKNOWN_ERROR:Lcom/nexstreaming/app/common/task/Task$TaskError;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    return v0
.end method

.method public isCancelRequested()Z
    .locals 2

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a cancellable task"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 1272
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    return v0
.end method

.method public isProgressAvailable()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    return v0
.end method

.method public isRepeatableEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z
    .locals 1

    .prologue
    .line 983
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1262
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 1263
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 1264
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1262
    :goto_0
    return v0

    .line 1264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized makeWaitable()V
    .locals 2

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 767
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/Task;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;->signalCompletionEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :cond_1
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCancel(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 1063
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 1053
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 955
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-object p0

    .line 959
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    invoke-interface {p2, p0, p1}, Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;->onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_0

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 1018
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$8;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$8;-><init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$OnFailListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Lcom/nexstreaming/app/common/task/Task;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 1035
    if-ne p1, p0, :cond_0

    .line 1036
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1038
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$9;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$9;-><init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 2

    .prologue
    .line 1078
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/Task$10;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/Task$10;-><init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 1008
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/app/common/task/Task;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public register()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 807
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 847
    :goto_0
    return-void

    .line 810
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 811
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    iget-wide v4, p0, Lcom/nexstreaming/app/common/task/Task;->mLongTaskId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    .line 815
    sget v0, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_9

    .line 818
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 819
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v2

    .line 820
    :goto_1
    if-ge v1, v4, :cond_3

    .line 821
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 822
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 823
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 824
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 827
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 828
    sget-object v3, Lcom/nexstreaming/app/common/task/Task;->sIntIdTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 832
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 833
    sget-object v0, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 834
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 835
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 838
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 839
    sget-object v3, Lcom/nexstreaming/app/common/task/Task;->sLongIdTaskMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 842
    :cond_8
    sput v2, Lcom/nexstreaming/app/common/task/Task;->sRegisterCount:I

    .line 846
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mRegistered:Z

    goto/16 :goto_0
.end method

.method public declared-synchronized removeListenerForFail()V
    .locals 5

    .prologue
    .line 1200
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1202
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v4, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    if-ne v3, v4, :cond_0

    .line 1203
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1207
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    monitor-exit p0

    return-void
.end method

.method public sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 3

    .prologue
    .line 1194
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->setTaskError(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 1195
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 1196
    return-void
.end method

.method public setCancellable(Z)V
    .locals 2

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    .line 719
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 720
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancellable:Z

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mCancelRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0
.end method

.method public setProgress(II)V
    .locals 1

    .prologue
    .line 1095
    iput p1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    .line 1096
    iput p2, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    .line 1098
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 1099
    return-void
.end method

.method public setTaskError(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskError:Lcom/nexstreaming/app/common/task/Task$TaskError;

    .line 1164
    return-void
.end method

.method public setTimeout(J)Lcom/nexstreaming/app/common/task/Task;
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 667
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$7;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/task/Task$7;-><init>(Lcom/nexstreaming/app/common/task/Task;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    return-object p0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 4

    .prologue
    .line 1182
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 1183
    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    if-eq v2, v3, :cond_0

    .line 1184
    invoke-direct {p0, v2}, Lcom/nexstreaming/app/common/task/Task;->signalOneEvent(Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 1182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 378
    const-string v0, ""

    .line 380
    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task;->mSignalledEvents:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move-object v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/Task$Event;

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/task/Task$Event;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    const/4 v0, 0x0

    move-object v3, v1

    move v1, v0

    .line 383
    goto :goto_0

    .line 381
    :cond_0
    const-string v1, ","

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 385
    const-string v3, "none"

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/task/Task;->mProgressSignalled:Z

    if-eqz v0, :cond_3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/app/common/task/Task;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/app/common/task/Task;->mMaxProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/app/common/task/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
