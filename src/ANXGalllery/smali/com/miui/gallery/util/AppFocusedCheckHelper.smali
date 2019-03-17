.class public Lcom/miui/gallery/util/AppFocusedCheckHelper;
.super Ljava/lang/Object;
.source "AppFocusedCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedRunnable;,
        Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;,
        Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;
    }
.end annotation


# instance fields
.field private mAppFocusedListener:Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

.field private mCheckAppFocusedCallback:Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;

.field private mCheckAppFocusedRunnable:Ljava/lang/Runnable;

.field private volatile mIsAppFocused:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/gallery/util/AppFocusedCheckHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/AppFocusedCheckHelper$1;-><init>(Lcom/miui/gallery/util/AppFocusedCheckHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedCallback:Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;

    .line 25
    new-instance v0, Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedRunnable;

    iget-object v1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedCallback:Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedRunnable;-><init>(Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedRunnable:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mAppFocusedListener:Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/util/AppFocusedCheckHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/AppFocusedCheckHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mIsAppFocused:Z

    return p1
.end method

.method private removeCheckAppFocusedMessage()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method private updateAppFocusedState()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->hasCallbacksCompat(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->removeCheckAppFocusedMessage()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mCheckAppFocusedRunnable:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mIsAppFocused:Z

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mAppFocusedListener:Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mAppFocusedListener:Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

    invoke-interface {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;->onAppFocused()V

    .line 36
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper;->mIsAppFocused:Z

    .line 38
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->updateAppFocusedState()V

    .line 42
    return-void
.end method
