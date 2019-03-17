.class public Lcom/alibaba/baichuan/android/trade/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;ILjava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/c/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/baichuan/android/trade/c/e;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Lcom/alibaba/baichuan/android/trade/c/a$a;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/c/d;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/baichuan/android/trade/c/d;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Lcom/alibaba/baichuan/android/trade/c/a$a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
