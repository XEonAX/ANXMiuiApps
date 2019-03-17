.class Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob$1;
.super Ljava/lang/Object;
.source "PendingTaskService.java"

# interfaces
.implements Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;

.field final synthetic val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob$1;->this$1:Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;

    iput-object p2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob$1;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob$1;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    return v0
.end method
