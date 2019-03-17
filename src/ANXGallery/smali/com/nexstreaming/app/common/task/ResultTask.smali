.class public Lcom/nexstreaming/app/common/task/ResultTask;
.super Lcom/nexstreaming/app/common/task/Task;
.source "ResultTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nexstreaming/app/common/task/Task;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResult:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public static combineResults(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INDIVIDUA",
            "L_RESULT_TYPE:Ljava/lang/Object;",
            "RESU",
            "LT_COLLECTION::Ljava/util/Collection",
            "<TINDIVIDUA",
            "L_RESULT_TYPE;",
            ">;TASK_CO",
            "LLECTION::Ljava/util/Collection",
            "<",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TRESU",
            "LT_COLLECTION;",
            ">;>;>(TTASK_CO",
            "LLECTION;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Ljava/util/List",
            "<TINDIVIDUA",
            "L_RESULT_TYPE;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v1}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    .line 231
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/ResultTask;

    .line 236
    new-instance v4, Lcom/nexstreaming/app/common/task/ResultTask$4;

    invoke-direct {v4, v1, v2, p0}, Lcom/nexstreaming/app/common/task/ResultTask$4;-><init>(Lcom/nexstreaming/app/common/task/ResultTask;Ljava/util/Map;Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Lcom/nexstreaming/app/common/task/ResultTask;->onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-instance v4, Lcom/nexstreaming/app/common/task/ResultTask$3;

    invoke-direct {v4, v1, v2}, Lcom/nexstreaming/app/common/task/ResultTask$3;-><init>(Lcom/nexstreaming/app/common/task/ResultTask;Ljava/util/Map;)V

    .line 250
    invoke-virtual {v0, v4}, Lcom/nexstreaming/app/common/task/ResultTask;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    goto :goto_0

    .line 261
    :cond_0
    return-object v1
.end method

.method public static varargs combineResults([Lcom/nexstreaming/app/common/task/ResultTask;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;)",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/task/ResultTask;->combineResults(Ljava/util/Collection;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public static completedResultTask(Ljava/lang/Object;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    .line 206
    invoke-virtual {v0, p0}, Lcom/nexstreaming/app/common/task/ResultTask;->sendResult(Ljava/lang/Object;)V

    .line 207
    return-object v0
.end method

.method public static failedResultTask(Lcom/nexstreaming/app/common/task/Task$TaskError;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nexstreaming/app/common/task/Task$TaskError;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lcom/nexstreaming/app/common/task/ResultTask;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/ResultTask;-><init>()V

    .line 266
    invoke-virtual {v0, p0}, Lcom/nexstreaming/app/common/task/ResultTask;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 267
    return-object v0
.end method


# virtual methods
.method public awaitResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/app/common/task/Task$TaskErrorException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/ResultTask;->makeWaitable()V

    .line 169
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/ResultTask;->awaitTaskCompletion()Lcom/nexstreaming/app/common/task/Task;

    .line 170
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/ResultTask;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$TaskErrorException;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/ResultTask;->getTaskError()Lcom/nexstreaming/app/common/task/Task$TaskError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/task/Task$TaskErrorException;-><init>(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    throw v0

    .line 172
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/ResultTask;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$TaskErrorException;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task;->NO_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$TaskError;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/task/Task$TaskErrorException;-><init>(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    throw v0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/task/ResultTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/ResultTask;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Result not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeSinceResult()J
    .locals 4

    .prologue
    .line 74
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/ResultTask;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-wide/16 v0, -0x1

    .line 77
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResultTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public onCancel(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->onCancel(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 52
    return-object p0
.end method

.method public bridge synthetic onCancel(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->onCancel(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 58
    return-object p0
.end method

.method public bridge synthetic onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->onComplete(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/Task$OnFailListener;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 46
    return-object p0
.end method

.method public bridge synthetic onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/Task$OnProgressListener;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 64
    return-object p0
.end method

.method public bridge synthetic onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->onProgress(Lcom/nexstreaming/app/common/task/Task$OnProgressListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener",
            "<TT;>;)",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/ResultTask$1;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask$1;-><init>(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 143
    return-object p0
.end method

.method public onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;",
            ")",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/nexstreaming/app/common/task/Task;->onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 70
    return-object p0
.end method

.method public bridge synthetic onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->onSuccess(Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateOrResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener",
            "<TT;>;)",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    new-instance v1, Lcom/nexstreaming/app/common/task/ResultTask$2;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask$2;-><init>(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onEvent(Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 160
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/ResultTask;->didSignalEvent(Lcom/nexstreaming/app/common/task/Task$Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    iget-object v1, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResult:Ljava/lang/Object;

    invoke-interface {p1, p0, v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;->onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-object p0
.end method

.method public sendResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/task/ResultTask;->setResult(Ljava/lang/Object;)V

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 126
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResult:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    move v0, v1

    .line 96
    :goto_0
    iput-object p1, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResult:Ljava/lang/Object;

    .line 97
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nexstreaming/app/common/task/ResultTask;->mResultTime:J

    .line 98
    new-array v3, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v4, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v4, v3, v2

    invoke-virtual {p0, v3}, Lcom/nexstreaming/app/common/task/ResultTask;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 99
    if-eqz v0, :cond_0

    .line 100
    new-array v0, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/task/ResultTask;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 102
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method public setTimeout(J)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/nexstreaming/app/common/task/Task;->setTimeout(J)Lcom/nexstreaming/app/common/task/Task;

    .line 40
    return-object p0
.end method

.method public bridge synthetic setTimeout(J)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/nexstreaming/app/common/task/ResultTask;->setTimeout(J)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    return-object v0
.end method
