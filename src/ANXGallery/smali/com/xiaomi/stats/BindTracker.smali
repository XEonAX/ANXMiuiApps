.class Lcom/xiaomi/stats/BindTracker;
.super Ljava/lang/Object;
.source "BindTracker.java"

# interfaces
.implements Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;


# instance fields
.field private client:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

.field private connection:Lcom/xiaomi/smack/Connection;

.field private pushService:Lcom/xiaomi/push/service/XMPushService;

.field private reason:I

.field private status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field private tracked:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 1
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "client"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stats/BindTracker;->tracked:Z

    .line 27
    iput-object p1, p0, Lcom/xiaomi/stats/BindTracker;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 28
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iput-object v0, p0, Lcom/xiaomi/stats/BindTracker;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 29
    iput-object p2, p0, Lcom/xiaomi/stats/BindTracker;->client:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/stats/BindTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/stats/BindTracker;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xiaomi/stats/BindTracker;->done()V

    return-void
.end method

.method private done()V
    .locals 6

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/xiaomi/stats/BindTracker;->untrack()V

    .line 66
    iget-boolean v4, p0, Lcom/xiaomi/stats/BindTracker;->tracked:Z

    if-nez v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v4, p0, Lcom/xiaomi/stats/BindTracker;->reason:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    .line 75
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v2

    .line 77
    .local v2, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    sget-object v4, Lcom/xiaomi/stats/BindTracker$2;->$SwitchMap$com$xiaomi$push$service$PushClientsManager$ClientStatus:[I

    iget-object v5, p0, Lcom/xiaomi/stats/BindTracker;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 103
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_0

    .line 104
    iget-object v4, p0, Lcom/xiaomi/stats/BindTracker;->connection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v4}, Lcom/xiaomi/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 105
    iget-object v4, p0, Lcom/xiaomi/stats/BindTracker;->client:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v4, v4, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->setUser(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 106
    const/4 v4, 0x1

    iput v4, v2, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/stats/BindTracker;->client:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v4, v4, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v0, v4

    .line 110
    .local v0, "chid":B
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setChid(B)Lcom/xiaomi/push/thrift/StatsEvent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v0    # "chid":B
    :goto_2
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget v4, p0, Lcom/xiaomi/stats/BindTracker;->reason:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    .line 81
    sget-object v4, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TCP_READ_TIMEOUT:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    iput v4, v2, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    goto :goto_1

    .line 82
    :cond_2
    iget v4, p0, Lcom/xiaomi/stats/BindTracker;->reason:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_3

    .line 83
    sget-object v4, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TIMEOUT:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    iput v4, v2, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    goto :goto_1

    .line 86
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/StatsContext;->getCaughtException()Ljava/lang/Exception;

    move-result-object v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/stats/StatsAnalyser;->fromBind(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    move-result-object v3

    .line 88
    .local v3, "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    iget-object v4, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    iput v4, v2, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 89
    iget-object v4, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->setAnnotation(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    .line 94
    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    sget-object v4, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_SUCCESS:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    iput v4, v2, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    goto :goto_1

    .line 111
    :catch_1
    move-exception v4

    goto :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private untrack()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/stats/BindTracker;->client:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->removeClientStatusListener(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onChange(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 3
    .param p1, "oldStatus"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p2, "newStatus"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p3, "reason"    # I

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/xiaomi/stats/BindTracker;->tracked:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p1, v0, :cond_0

    .line 41
    iput-object p2, p0, Lcom/xiaomi/stats/BindTracker;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 42
    iput p3, p0, Lcom/xiaomi/stats/BindTracker;->reason:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stats/BindTracker;->tracked:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stats/BindTracker;->pushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/stats/BindTracker$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/stats/BindTracker$1;-><init>(Lcom/xiaomi/stats/BindTracker;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 58
    return-void
.end method

.method track()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/stats/BindTracker;->client:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->addClientStatusListener(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;)V

    .line 34
    iget-object v0, p0, Lcom/xiaomi/stats/BindTracker;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getCurrentConnection()Lcom/xiaomi/smack/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stats/BindTracker;->connection:Lcom/xiaomi/smack/Connection;

    .line 35
    return-void
.end method
