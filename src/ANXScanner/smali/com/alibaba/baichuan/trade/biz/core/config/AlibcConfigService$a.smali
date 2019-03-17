.class Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->d(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfig;->updateConfig(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->e(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigSPWrapper;->setConfigSPData(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getAppMonitorSampling()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->setSampling(I)V

    :cond_0
    const-class v1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->expiredTimeStamp:J

    const-string v0, "AlibcConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7684\u65f6\u95f4\u4e3a\u8fc7\u671f\u65f6\u95f4\u6233\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService$a;->a:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    iget-wide v4, v3, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->expiredTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
