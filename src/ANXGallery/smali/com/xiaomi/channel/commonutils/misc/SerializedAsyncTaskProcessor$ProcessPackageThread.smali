.class Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;
.super Ljava/lang/Thread;
.source "SerializedAsyncTaskProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessPackageThread"
.end annotation


# instance fields
.field private final mTasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    .line 129
    const-string v0, "PackageProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->mTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 130
    return-void
.end method

.method private notifyUI(ILcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "task"    # Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$100(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$100(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method


# virtual methods
.method public insertTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    .locals 2
    .param p1, "task"    # Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->mTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 147
    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$200(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$200(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)I

    move-result v4

    int-to-long v2, v4

    .line 148
    .local v2, "keepAliveTime":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$300(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 150
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->mTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .line 151
    .local v1, "task":Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v4, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$402(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .line 153
    if-eqz v1, :cond_2

    .line 154
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->notifyUI(ILcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    .line 155
    invoke-virtual {v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;->process()V

    .line 156
    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->notifyUI(ILcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1    # "task":Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "keepAliveTime":J
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 158
    .restart local v1    # "task":Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    .restart local v2    # "keepAliveTime":J
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$200(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)I

    move-result v4

    if-lez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$ProcessPackageThread;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->access$500(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    .end local v1    # "task":Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
    :cond_3
    return-void
.end method
