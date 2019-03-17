.class public Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlibcTradeCommonResult"
.end annotation


# instance fields
.field public errCode:I

.field public errMsg:Ljava/lang/String;

.field public initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

.field public isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->isSuccess:Z

    new-instance v0, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    return-void
.end method
