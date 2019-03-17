.class final Lcom/alibaba/baichuan/android/trade/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/c/a$a;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Lcom/alibaba/baichuan/android/trade/c/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/c/d;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/c/d;->b:Lcom/alibaba/baichuan/android/trade/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/d;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/c/d;->b:Lcom/alibaba/baichuan/android/trade/c/a$a;

    iget v1, v1, Lcom/alibaba/baichuan/android/trade/c/a$a;->a:I

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/c/d;->b:Lcom/alibaba/baichuan/android/trade/c/a$a;

    iget-object v2, v2, Lcom/alibaba/baichuan/android/trade/c/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
