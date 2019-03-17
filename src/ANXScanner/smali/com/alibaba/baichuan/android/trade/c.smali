.class final Lcom/alibaba/baichuan/android/trade/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/c;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-interface {v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onSuccess()V

    return-void
.end method
