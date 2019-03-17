.class public Lcom/android/internal/CompatHandler;
.super Landroid/os/Handler;
.source "CompatHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    return-void
.end method


# virtual methods
.method public hasCallbacksCompat(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
