.class public Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/alipay/IAlibcAlipay;


# static fields
.field public static final ALIPASDK_CLASS_NAME:Ljava/lang/String; = "com.alipay.sdk.app.PayTask"

.field public static final PAY_COMMON_ERROR:I = 0x328

.field public static final PAY_IN_PROGRESS:I = 0x324

.field public static final PAY_NETWORK_FAILED:I = 0x327

.field public static final PAY_ORDER_FAILED:I = 0x325

.field public static final PAY_SDK_FAILED:I = 0x329

.field public static final PAY_SUCCESS_CODE:Ljava/lang/String; = "9000"

.field public static final PAY_USER_CANCEL:I = 0x326

.field public static final TAG:Ljava/lang/String; = "AlibcAlipay"

.field private static volatile a:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/util/ArrayList;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Ljava/util/ArrayList;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/alipay/f;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/biz/alipay/f;->a(Ljava/util/List;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v2, "160101"

    if-nez v1, :cond_2

    const-string v0, "\u67e5\u8be2\u5931\u8d25"

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,errmsg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/alibaba/baichuan/trade/biz/alipay/f;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "com.alipay.sdk.app.PayTask"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.app.Activity"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ReflectionUtils;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.alipay.sdk.app.PayTask"

    const-string v3, "pay"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "java.lang.String"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "boolean"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v0, v5}, Lcom/alibaba/baichuan/trade/common/utils/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AlibcAlipay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8c03\u7528ApliPaySDK\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x329

    const-string v2, "\u4f7f\u7528Apliay SDK\u8c03\u7528\u65b9\u6cd5\u5931\u8d25\uff0c\u8bf7\u4e0b\u8f7d\u6700\u65b0\u7684ApliaySDK lib\u5305\u6216\u8005\u4f7f\u7528H5\u65b9\u5f0f\u4ed8\u6b3e"

    invoke-interface {p1, v0, v2}, Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;->a(ILjava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->isClose()Z

    move-result v0

    :goto_1
    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    const/16 v1, 0x1771

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pay_order_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    const-string v0, "Pay_Result_Alipay"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/alipay/c;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alibaba/baichuan/trade/biz/alipay/c;-><init>(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "AlibcAlipay"

    const-string v1, "alipay\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/alipay/b;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alibaba/baichuan/trade/biz/alipay/b;-><init>(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Pay_Result_Alipay"

    invoke-static {v0, p2, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x328

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x324

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x325

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x326

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x327

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x329

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "AlibcAlipay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parse the response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfa0 -> :sswitch_1
        0x1771 -> :sswitch_2
        0x1772 -> :sswitch_3
        0x1f40 -> :sswitch_0
        0x2712 -> :sswitch_4
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trade_no=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&extern_token=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&partner=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PARTNER_TAOBAO_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&payPhaseId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->a:Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseAliPayResult(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v2, "paySuccessOrders"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;->paySuccessOrders:Ljava/util/List;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "payFailedOrders"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;->payFailedOrders:Ljava/util/List;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "JSONUtils"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/alipay/d;->a()Lcom/alibaba/baichuan/trade/biz/alipay/d;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->registInterceptor(Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;)V

    return-void
.end method

.method public isAlipaySDKAvailable()Z
    .locals 2

    :try_start_0
    const-string v0, "com.alipay.sdk.app.PayTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AlibcAlipay"

    const-string v1, "Alipay SDK is not available"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAlipay(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->isAlipaySDKAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "alipay_trade_no"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "trade_nos"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "payPhaseId"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "pay_phase_id"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "s_id"

    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v6

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/alipay/a;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/biz/alipay/a;-><init>(Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v0}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postHandlerTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
