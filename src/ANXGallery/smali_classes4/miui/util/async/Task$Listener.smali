.class public interface abstract Lmiui/util/async/Task$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;II)V"
        }
    .end annotation
.end method

.method public abstract onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
