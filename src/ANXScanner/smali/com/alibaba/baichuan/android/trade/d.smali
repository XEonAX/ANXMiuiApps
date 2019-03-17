.class final Lcom/alibaba/baichuan/android/trade/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/d;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/d;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-interface {v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onSuccess()V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-interface {v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onSuccess()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/a;->a()V

    return-void
.end method
