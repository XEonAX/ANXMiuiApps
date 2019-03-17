.class final Lcom/alibaba/baichuan/android/trade/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/model/InitResult;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/model/InitResult;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/e;->a:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/e;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/e;->a:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/android/trade/model/InitResult;->newFailureResult(ILjava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/InitResult;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/e;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    iget v2, v1, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorCode:I

    iget-object v3, v1, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onFailure(ILjava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    iget v3, v1, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorCode:I

    iget-object v4, v1, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
