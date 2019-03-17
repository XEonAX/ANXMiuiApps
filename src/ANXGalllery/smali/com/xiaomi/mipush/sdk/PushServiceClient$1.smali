.class Lcom/xiaomi/mipush/sdk/PushServiceClient$1;
.super Landroid/os/Handler;
.source "PushServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/PushServiceClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/PushServiceClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "messageId":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 109
    .local v2, "statusFlag":I
    const-class v4, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v4

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "count":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_6

    .line 114
    sget-object v3, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v3

    if-ne v3, v2, :cond_2

    const-string/jumbo v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .line 115
    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    sget-object v5, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v1, v5, v6, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$100(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    .line 130
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->increaseRetryCount(Ljava/lang/String;)V

    .line 136
    .end local v0    # "count":I
    :cond_1
    :goto_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 117
    .restart local v0    # "count":I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string/jumbo v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .line 118
    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    sget-object v5, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v1, v5, v6, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$100(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    goto :goto_1

    .line 120
    :cond_3
    sget-object v3, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_HUAWEI_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v3

    if-ne v3, v2, :cond_4

    const-string/jumbo v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .line 121
    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_HUAWEI_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    sget-object v5, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_HUAWEI_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushExtra(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v3, v1, v5, v6, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$100(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    goto :goto_1

    .line 123
    :cond_4
    sget-object v3, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_FCM_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v3

    if-ne v3, v2, :cond_5

    const-string/jumbo v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .line 124
    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_FCM_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    sget-object v5, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_FCM_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushExtra(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v3, v1, v5, v6, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$100(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    goto/16 :goto_1

    .line 126
    :cond_5
    sget-object v3, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_COS_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v3

    if-ne v3, v2, :cond_0

    const-string/jumbo v3, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .line 127
    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_COS_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    sget-object v5, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_COS_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v7, v8}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushExtra(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v3, v1, v5, v6, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$100(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    goto/16 :goto_1

    .line 133
    :cond_6
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;->this$0:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
