.class final Lcom/xiaomi/stats/StatsAnalyser;
.super Ljava/lang/Object;
.source "StatsAnalyser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    }
.end annotation


# direct methods
.method private static checkNull(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27
    :cond_0
    return-void
.end method

.method static fromBind(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    .locals 7
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/xiaomi/stats/StatsAnalyser;->checkNull(Ljava/lang/Exception;)V

    .line 111
    move-object v4, p0

    .line 112
    .local v4, "throwable":Ljava/lang/Throwable;
    instance-of v5, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 113
    check-cast v5, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v5}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 114
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    .end local p0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v4

    .line 118
    :cond_0
    new-instance v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    invoke-direct {v3}, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;-><init>()V

    .line 119
    .local v3, "ret":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "cause":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_1
    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionHelper;->asErrorCode(Ljava/lang/Throwable;)I

    move-result v2

    .line 125
    .local v2, "err":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "annotation":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 147
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_XMPP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 150
    :cond_2
    :goto_0
    iget-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TCP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v5, v6, :cond_3

    iget-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_XMPP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v5, v6, :cond_3

    iget-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_BOSH_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v5, v6, :cond_4

    .line 153
    :cond_3
    iput-object v0, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    .line 156
    :cond_4
    return-object v3

    .line 129
    :sswitch_0
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TCP_READ_TIMEOUT:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 132
    :sswitch_1
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TCP_CONNRESET:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 135
    :sswitch_2
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TCP_BROKEN_PIPE:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 138
    :sswitch_3
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_TCP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 141
    :sswitch_4
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_BOSH_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 142
    const-string v5, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_BOSH_ITEM_NOT_FOUND:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method static fromConnectionException(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    .locals 8
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/xiaomi/stats/StatsAnalyser;->checkNull(Ljava/lang/Exception;)V

    .line 67
    move-object v5, p0

    .line 68
    .local v5, "throwable":Ljava/lang/Throwable;
    instance-of v6, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 69
    check-cast v6, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v6}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 70
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    .end local p0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v5

    .line 74
    :cond_0
    new-instance v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    invoke-direct {v4}, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;-><init>()V

    .line 75
    .local v4, "ret":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "cause":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_1
    invoke-static {v5}, Lcom/xiaomi/smack/ConnectionHelper;->asErrorCode(Ljava/lang/Throwable;)I

    move-result v3

    .line 81
    .local v3, "err":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "annotation":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 84
    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_SUCCESS:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v6}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v6

    add-int v2, v6, v3

    .line 85
    .local v2, "conErr":I
    invoke-static {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->findByValue(I)Lcom/xiaomi/push/thrift/ChannelStatsType;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 87
    iget-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v7, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_BOSH_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v6, v7, :cond_2

    .line 88
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    instance-of v6, v5, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_2

    .line 91
    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_BOSH_UNKNOWNHOST:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 99
    .end local v2    # "conErr":I
    :cond_2
    :goto_0
    iget-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v7, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_TCP_ERR_OTHER:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v6, v7, :cond_3

    iget-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v7, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_XMPP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v6, v7, :cond_3

    iget-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v7, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_BOSH_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v6, v7, :cond_4

    .line 102
    :cond_3
    iput-object v0, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    .line 104
    :cond_4
    return-object v4

    .line 96
    :cond_5
    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_XMPP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0
.end method

.method static fromDisconnectEx(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    .locals 7
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/xiaomi/stats/StatsAnalyser;->checkNull(Ljava/lang/Exception;)V

    .line 163
    move-object v4, p0

    .line 164
    .local v4, "throwable":Ljava/lang/Throwable;
    instance-of v5, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 165
    check-cast v5, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v5}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 166
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    .end local p0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v4

    .line 170
    :cond_0
    new-instance v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    invoke-direct {v3}, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;-><init>()V

    .line 171
    .local v3, "ret":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "cause":Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionHelper;->asErrorCode(Ljava/lang/Throwable;)I

    move-result v2

    .line 174
    .local v2, "err":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "annotation":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 195
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_XMPPEXCEPTION:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 198
    :cond_1
    :goto_0
    iget-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_TCP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v5, v6, :cond_2

    iget-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_XMPPEXCEPTION:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v5, v6, :cond_2

    iget-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_BOSH_EXCEPTION:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v5, v6, :cond_3

    .line 201
    :cond_2
    iput-object v0, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    .line 204
    :cond_3
    return-object v3

    .line 177
    :sswitch_0
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_TCP_READTIMEOUT:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 180
    :sswitch_1
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_TCP_CONNRESET:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 183
    :sswitch_2
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_TCP_BROKEN_PIPE:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 186
    :sswitch_3
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_TCP_ERR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 189
    :sswitch_4
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_BOSH_EXCEPTION:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 190
    const-string v5, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    sget-object v5, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_BOSH_ITEMNOTFIND:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v5, v3, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method static fromGslbException(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    .locals 8
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/xiaomi/stats/StatsAnalyser;->checkNull(Ljava/lang/Exception;)V

    .line 33
    move-object v5, p0

    .line 34
    .local v5, "throwable":Ljava/lang/Throwable;
    instance-of v6, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 35
    check-cast v6, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v6}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 36
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    .end local p0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v5

    .line 40
    :cond_0
    new-instance v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    invoke-direct {v4}, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;-><init>()V

    .line 42
    .local v4, "ret":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "cause":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "annotation":Ljava/lang/String;
    invoke-static {v5}, Lcom/xiaomi/smack/ConnectionHelper;->asErrorCode(Ljava/lang/Throwable;)I

    move-result v2

    .line 49
    .local v2, "err":I
    if-eqz v2, :cond_2

    .line 50
    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->GSLB_REQUEST_SUCCESS:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v6}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v6

    add-int v3, v6, v2

    .line 51
    .local v3, "gslbErr":I
    invoke-static {v3}, Lcom/xiaomi/push/thrift/ChannelStatsType;->findByValue(I)Lcom/xiaomi/push/thrift/ChannelStatsType;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 53
    .end local v3    # "gslbErr":I
    :cond_2
    iget-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-nez v6, :cond_3

    .line 54
    sget-object v6, Lcom/xiaomi/push/thrift/ChannelStatsType;->GSLB_TCP_ERR_OTHER:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 57
    :cond_3
    iget-object v6, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v7, Lcom/xiaomi/push/thrift/ChannelStatsType;->GSLB_TCP_ERR_OTHER:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v6, v7, :cond_4

    .line 58
    iput-object v0, v4, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    .line 60
    :cond_4
    return-object v4
.end method
