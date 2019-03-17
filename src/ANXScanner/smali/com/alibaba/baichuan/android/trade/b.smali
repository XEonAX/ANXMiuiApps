.class final Lcom/alibaba/baichuan/android/trade/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/b;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/baichuan/android/trade/b;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/b;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/b;->c:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/a;->a(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    return-void
.end method
