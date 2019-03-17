.class public Lcom/xiaomi/smack/util/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field private static mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/smack/util/TaskExecutor;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    return-void
.end method

.method public static execute(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    .locals 1
    .param p0, "task"    # Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .prologue
    .line 24
    sget-object v0, Lcom/xiaomi/smack/util/TaskExecutor;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-virtual {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    .line 25
    return-void
.end method

.method public static execute(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;J)V
    .locals 1
    .param p0, "task"    # Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    .param p1, "delay"    # J

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/smack/util/TaskExecutor;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTaskWithDelayed(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;J)V

    .line 29
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    sget-object v0, Lcom/xiaomi/smack/util/TaskExecutor;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    new-instance v1, Lcom/xiaomi/smack/util/TaskExecutor$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/util/TaskExecutor$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    .line 21
    return-void
.end method
