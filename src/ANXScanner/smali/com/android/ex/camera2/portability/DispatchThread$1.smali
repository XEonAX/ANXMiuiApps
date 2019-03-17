.class Lcom/android/ex/camera2/portability/DispatchThread$1;
.super Ljava/lang/Object;
.source "DispatchThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/DispatchThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/DispatchThread;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/DispatchThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/DispatchThread;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/ex/camera2/portability/DispatchThread$1;->this$0:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/ex/camera2/portability/DispatchThread$1;->this$0:Lcom/android/ex/camera2/portability/DispatchThread;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread$1;->this$0:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
