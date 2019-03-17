.class final Lcom/alibaba/baichuan/android/trade/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/f;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/f;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/f;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/f;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->a(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    return-void
.end method
