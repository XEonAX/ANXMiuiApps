.class final Lcom/nexstreaming/app/common/task/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnFailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/task/Task;->combinedTask(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/task/Task;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/task/Task;)V
    .locals 0

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/Task$3;->a:Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/Task$3;->a:Lcom/nexstreaming/app/common/task/Task;

    invoke-virtual {v0, p3}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 1473
    return-void
.end method
