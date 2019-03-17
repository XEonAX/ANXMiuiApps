.class Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;
.super Ljava/lang/Object;
.source "PendingTaskService.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/pendingtask/base/PendingTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingTaskJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/miui/gallery/pendingtask/base/PendingTaskService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/pendingtask/base/PendingTaskService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->this$0:Lcom/miui/gallery/pendingtask/base/PendingTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->mParams:Landroid/app/job/JobParameters;

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 67
    new-instance v0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob$1;-><init>(Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 73
    .local v0, "callback":Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->executeTask(Landroid/app/job/JobParameters;Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;)V

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->this$0:Lcom/miui/gallery/pendingtask/base/PendingTaskService;

    iget-object v2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->this$0:Lcom/miui/gallery/pendingtask/base/PendingTaskService;

    invoke-static {v1}, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->access$000(Lcom/miui/gallery/pendingtask/base/PendingTaskService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v1, 0x0

    return-object v1
.end method
