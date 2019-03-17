.class Lcom/nexstreaming/app/common/task/Task$MultiplexTask$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/task/Task$MultiplexTask;->onAllTasksSignalled(Lcom/nexstreaming/app/common/task/Task$MultiplexTask$OnAllTasksSignalledListener;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/task/Task$MultiplexTask$OnAllTasksSignalledListener;

.field final synthetic b:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/task/Task$MultiplexTask;Lcom/nexstreaming/app/common/task/Task$MultiplexTask$OnAllTasksSignalledListener;)V
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task$MultiplexTask$1;->b:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    iput-object p2, p0, Lcom/nexstreaming/app/common/task/Task$MultiplexTask$1;->a:Lcom/nexstreaming/app/common/task/Task$MultiplexTask$OnAllTasksSignalledListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 3

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$MultiplexTask$1;->a:Lcom/nexstreaming/app/common/task/Task$MultiplexTask$OnAllTasksSignalledListener;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task$MultiplexTask$1;->b:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    iget-object v2, p0, Lcom/nexstreaming/app/common/task/Task$MultiplexTask$1;->b:Lcom/nexstreaming/app/common/task/Task$MultiplexTask;

    iget-object v2, v2, Lcom/nexstreaming/app/common/task/Task$MultiplexTask;->tasks:[Lcom/nexstreaming/app/common/task/Task;

    invoke-interface {v0, v1, v2, p2}, Lcom/nexstreaming/app/common/task/Task$MultiplexTask$OnAllTasksSignalledListener;->onAllTasksSignalled(Lcom/nexstreaming/app/common/task/Task$MultiplexTask;[Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 1376
    return-void
.end method
