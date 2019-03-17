.class final Lcom/alibaba/baichuan/trade/biz/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;


# instance fields
.field final synthetic a:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/a;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/a;->a:[Z

    aput-boolean v1, v0, v1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(I)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/a;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
