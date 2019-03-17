.class Lcom/nexstreaming/app/common/task/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/task/Task;->onFailure(Lcom/nexstreaming/app/common/task/Task;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/task/Task;

.field final synthetic b:Lcom/nexstreaming/app/common/task/Task;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task$9;->b:Lcom/nexstreaming/app/common/task/Task;

    iput-object p2, p0, Lcom/nexstreaming/app/common/task/Task$9;->a:Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$9;->a:Lcom/nexstreaming/app/common/task/Task;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/Task$9;->b:Lcom/nexstreaming/app/common/task/Task;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/task/Task;->getTaskError()Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 1042
    return-void
.end method
