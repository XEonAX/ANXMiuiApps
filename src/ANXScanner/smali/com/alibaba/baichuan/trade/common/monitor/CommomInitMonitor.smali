.class public Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;
.super Ljava/lang/Object;


# instance fields
.field public securityInitTime:J

.field public utInitTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->securityInitTime:J

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->utInitTime:J

    return-void
.end method


# virtual methods
.method public startSecurityInitRecord()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->securityInitTime:J

    return-void
.end method

.method public startUTInitRecord()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->utInitTime:J

    return-void
.end method

.method public stopSecurityInitRecord()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->securityInitTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->securityInitTime:J

    return-void
.end method

.method public stopUTInitRecord()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->utInitTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->utInitTime:J

    return-void
.end method
