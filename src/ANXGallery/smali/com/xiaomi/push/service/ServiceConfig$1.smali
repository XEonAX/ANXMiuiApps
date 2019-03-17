.class Lcom/xiaomi/push/service/ServiceConfig$1;
.super Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.source "ServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/ServiceConfig;->fetchConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field success:Z

.field final synthetic this$0:Lcom/xiaomi/push/service/ServiceConfig;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ServiceConfig;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/ServiceConfig;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->success:Z

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 6

    .prologue
    .line 161
    iget-object v3, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xiaomi/push/service/ServiceConfig;->access$202(Lcom/xiaomi/push/service/ServiceConfig;Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;

    .line 162
    iget-boolean v3, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->success:Z

    if-eqz v3, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "listeners":[Lcom/xiaomi/push/service/ServiceConfig$Listener;
    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    monitor-enter v4

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    invoke-static {v3}, Lcom/xiaomi/push/service/ServiceConfig;->access$300(Lcom/xiaomi/push/service/ServiceConfig;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    invoke-static {v5}, Lcom/xiaomi/push/service/ServiceConfig;->access$300(Lcom/xiaomi/push/service/ServiceConfig;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/xiaomi/push/service/ServiceConfig$Listener;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lcom/xiaomi/push/service/ServiceConfig$Listener;

    move-object v2, v0

    .line 166
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 168
    .local v1, "listener":Lcom/xiaomi/push/service/ServiceConfig$Listener;
    iget-object v5, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    invoke-static {v5}, Lcom/xiaomi/push/service/ServiceConfig;->access$000(Lcom/xiaomi/push/service/ServiceConfig;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/service/ServiceConfig$Listener;->onConfigChange(Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "listener":Lcom/xiaomi/push/service/ServiceConfig$Listener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 171
    .end local v2    # "listeners":[Lcom/xiaomi/push/service/ServiceConfig$Listener;
    :cond_0
    return-void
.end method

.method public process()V
    .locals 7

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "http://resolver.msg.xiaomi.net/psc/?t=a"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/xiaomi/network/HttpUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "result":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 147
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    move-result-object v0

    .line 149
    .local v0, "config":Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    if-eqz v0, :cond_0

    .line 150
    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    invoke-static {v4, v0}, Lcom/xiaomi/push/service/ServiceConfig;->access$002(Lcom/xiaomi/push/service/ServiceConfig;Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    .line 151
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->success:Z

    .line 152
    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceConfig$1;->this$0:Lcom/xiaomi/push/service/ServiceConfig;

    invoke-static {v4}, Lcom/xiaomi/push/service/ServiceConfig;->access$100(Lcom/xiaomi/push/service/ServiceConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "config":Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .end local v2    # "payload":[B
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch config failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
