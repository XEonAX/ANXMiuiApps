.class public final Lcom/taobao/tao/remotebusiness/a/a;
.super Landroid/os/Handler;
.source "HandlerMgr.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 38
    const-class v1, Lcom/taobao/tao/remotebusiness/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/tao/remotebusiness/a/a;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/taobao/tao/remotebusiness/a/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/taobao/tao/remotebusiness/a/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/taobao/tao/remotebusiness/a/a;->a:Landroid/os/Handler;

    .line 41
    :cond_0
    sget-object v0, Lcom/taobao/tao/remotebusiness/a/a;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/a/b;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/taobao/tao/remotebusiness/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/tao/remotebusiness/a/b;-><init>(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    return-object v0
.end method

.method private static a(Lcom/taobao/tao/remotebusiness/a/b;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string v1, "mtop.rb-HandlerMgr"

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HandlerMsg is null."

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "mtop.rb-HandlerMgr"

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The request of RemoteBusiness is canceled."

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    :cond_1
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/tao/remotebusiness/a/b;

    .line 52
    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/a/a;->a(Lcom/taobao/tao/remotebusiness/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "mtop.rb-HandlerMgr"

    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onReceive: ON_DATA_RECEIVED."

    invoke-static {v1, v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, v0, Lcom/taobao/tao/remotebusiness/a/b;->a:Lmtopsdk/mtop/common/MtopListener;

    check-cast v1, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/a/b;->b:Lmtopsdk/mtop/common/MtopEvent;

    check-cast v2, Lmtopsdk/mtop/common/MtopProgressEvent;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getReqContext()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/tao/remotebusiness/a/b;

    .line 61
    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/a/a;->a(Lcom/taobao/tao/remotebusiness/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "mtop.rb-HandlerMgr"

    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onReceive: ON_HEADER."

    invoke-static {v1, v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v1, v0, Lcom/taobao/tao/remotebusiness/a/b;->a:Lmtopsdk/mtop/common/MtopListener;

    check-cast v1, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/a/b;->b:Lmtopsdk/mtop/common/MtopEvent;

    check-cast v2, Lmtopsdk/mtop/common/MtopHeaderEvent;

    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v4}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getReqContext()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v2, "mtop.rb-HandlerMgr"

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    const-string v4, "listener onHeader callback error."

    invoke-static {v2, v0, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/tao/remotebusiness/a/b;

    .line 74
    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/a/a;->a(Lcom/taobao/tao/remotebusiness/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "mtop.rb-HandlerMgr"

    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onReceive: ON_FINISHED."

    invoke-static {v1, v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    const-wide/16 v4, 0x0

    .line 82
    iget-object v1, v0, Lcom/taobao/tao/remotebusiness/a/b;->e:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/taobao/tao/remotebusiness/a/b;->e:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 83
    invoke-virtual {v2}, Lmtopsdk/mtop/util/MtopStatistics;->getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    move-result-object v1

    .line 84
    iget-object v8, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v8, v8, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    sub-long v8, v6, v8

    iput-wide v8, v1, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toMainThTime:J

    .line 85
    iget-object v8, v0, Lcom/taobao/tao/remotebusiness/a/b;->e:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v8

    if-eqz v8, :cond_2

    .line 86
    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/a/b;->e:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    .line 90
    :cond_2
    :goto_1
    iget-object v8, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v9, v0, Lcom/taobao/tao/remotebusiness/a/b;->e:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v10, v0, Lcom/taobao/tao/remotebusiness/a/b;->c:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-virtual {v8, v9, v10}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 92
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 93
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v11, "doFinishTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v6, v8, v6

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; dataSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_3
    const-string v1, "mtop.rb-HandlerMgr"

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/a/b;->d:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onReceive: ON_FINISHED. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_4
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData(Z)V

    goto/16 :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_1

    :cond_6
    move-object v1, v3

    move-object v2, v3

    goto :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
