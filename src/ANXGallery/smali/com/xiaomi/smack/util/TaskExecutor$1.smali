.class final Lcom/xiaomi/smack/util/TaskExecutor$1;
.super Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smack/util/TaskExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xiaomi/smack/util/TaskExecutor$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/smack/util/TaskExecutor$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    return-void
.end method
