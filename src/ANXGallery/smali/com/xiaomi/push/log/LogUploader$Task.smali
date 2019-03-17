.class Lcom/xiaomi/push/log/LogUploader$Task;
.super Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.source "LogUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/log/LogUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/log/LogUploader;

.field timestamp:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/LogUploader;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaomi/push/log/LogUploader;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xiaomi/push/log/LogUploader$Task;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;-><init>()V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/log/LogUploader$Task;->timestamp:J

    return-void
.end method


# virtual methods
.method public canExcuteNow()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method final isExpired()Z
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/log/LogUploader$Task;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
