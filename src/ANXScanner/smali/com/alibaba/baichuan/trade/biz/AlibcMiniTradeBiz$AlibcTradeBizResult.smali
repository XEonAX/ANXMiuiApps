.class public Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlibcTradeBizResult"
.end annotation


# instance fields
.field public errCode:I

.field public errMsg:Ljava/lang/String;

.field public isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    return-void
.end method
