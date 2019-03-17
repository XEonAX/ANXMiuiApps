.class Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTaskWithDelayed(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

.field final synthetic val$task:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;->val$task:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;->this$0:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$2;->val$task:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    .line 91
    return-void
.end method
