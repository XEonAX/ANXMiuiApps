.class Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/android/trade/AlibcTrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAlibcTradeCallback"
.end annotation


# instance fields
.field tradeProcessCallback:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;->tradeProcessCallback:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;->tradeProcessCallback:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;->tradeProcessCallback:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;->tradeProcessCallback:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;->tradeProcessCallback:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onTradeSuccess(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;)V

    :cond_0
    return-void
.end method
