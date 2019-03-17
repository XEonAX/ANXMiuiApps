.class public abstract Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->a:Ljava/lang/String;

    const-string v0, "url"

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->c:J

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->c:J

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->d:J

    return-void
.end method

.method public d()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->d:J

    return-void
.end method

.method public abstract e()V
.end method

.method public f()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;
    .locals 4

    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;-><init>()V

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->d:J

    iput-wide v2, v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;->d:J

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->c:J

    iput-wide v2, v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;->c:J

    return-object v0
.end method

.method public g()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;
    .locals 4

    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;-><init>()V

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->c:J

    iput-wide v2, v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->c:J

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->d:J

    iput-wide v2, v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->d:J

    return-object v0
.end method
