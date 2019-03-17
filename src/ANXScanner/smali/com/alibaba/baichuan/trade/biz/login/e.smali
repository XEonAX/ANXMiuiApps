.class Lcom/alibaba/baichuan/trade/biz/login/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/login/d;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/login/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/login/e;->a:Lcom/alibaba/baichuan/trade/biz/login/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const-string v0, "AlibcLoginInterceptor"

    const-string v1, "\u767b\u51fa\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    const-string v0, "AlibcLoginInterceptor"

    const-string v1, "\u767b\u51fa\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
