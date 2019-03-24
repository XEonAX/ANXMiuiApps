.class Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/util/async/WorkerThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadWrapper"
.end annotation


# instance fields
.field final jV:Landroid/os/HandlerThread;

.field jW:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jW:I

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jV:Landroid/os/HandlerThread;

    .line 25
    iget-object p1, p0, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jV:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 26
    return-void
.end method
