.class public abstract Lcom/android/ex/camera2/portability/CameraStateHolder;
.super Ljava/lang/Object;
.source "CameraStateHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mInvalid:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamStateHolder"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z

    .line 37
    return-void
.end method

.method private waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z
    .locals 6
    .param p1, "stateChecker"    # Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;
    .param p2, "timeoutMs"    # J

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v2, v4, p2

    .line 97
    .local v2, "timeBound":J
    monitor-enter p0

    .line 98
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;->success()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :try_start_1
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 104
    sget-object v1, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v4, "Timeout waiting."

    invoke-static {v1, v4}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    .line 110
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    return v1

    .line 109
    :cond_1
    monitor-exit p0

    .line 110
    const/4 v1, 0x1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInvalid()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I

    if-eq v0, p1, :cond_0

    .line 46
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState - state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    :cond_0
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForStates(I)Z
    .locals 4
    .param p1, "states"    # I

    .prologue
    .line 122
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForStates - states = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/ex/camera2/portability/CameraStateHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$1;-><init>(Lcom/android/ex/camera2/portability/CameraStateHolder;I)V

    const-wide/16 v2, 0xdac

    invoke-direct {p0, v0, v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z

    move-result v0

    return v0
.end method

.method public waitToAvoidStates(I)Z
    .locals 4
    .param p1, "states"    # I

    .prologue
    .line 140
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitToAvoidStates - states = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/android/ex/camera2/portability/CameraStateHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$2;-><init>(Lcom/android/ex/camera2/portability/CameraStateHolder;I)V

    const-wide/16 v2, 0xdac

    invoke-direct {p0, v0, v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z

    move-result v0

    return v0
.end method
