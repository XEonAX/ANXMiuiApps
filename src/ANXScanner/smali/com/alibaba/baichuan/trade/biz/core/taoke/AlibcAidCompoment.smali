.class public Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;
.super Ljava/lang/Object;


# static fields
.field public static final ABTEST_H5:I = 0x0

.field public static final ABTEST_INVALID:I = 0x2

.field public static final ABTEST_NATIVE:I = 0x1

.field private static a:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genTaokeUrl(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V
    .locals 6

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->adzoneid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->registerGlobalAdzoneId(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    sget-object v1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->NATIVE:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    :goto_1
    new-instance v4, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;

    invoke-direct {v4}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;-><init>()V

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->adzoneid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->setAdzoneId(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->subPid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->setSubpid(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->unionId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->setUnid(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->extraParams:Ljava/util/Map;

    invoke-virtual {v4, v0}, Lcom/alimama/tunion/trade/convert/TUnionMediaParams;->setExtra(Ljava/util/Map;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getIsTUnionMtopDegrade()Z

    move-result v0

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;->a:Z

    const-string v0, "TUnion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genTaokeUrl : orangeUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u3010jumpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v5, Lcom/alibaba/baichuan/trade/biz/core/taoke/a;

    invoke-direct {v5, p4}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a;-><init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->convertURL(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/base/ITUnionWebView;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->H5:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getABTestResult()I
    .locals 3

    const/4 v0, 0x2

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->isJumpServiceOn()Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->YES:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-virtual {v1, v2}, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->NO:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-virtual {v1, v2}, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionUT;

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/e;

    invoke-direct {v2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionNetwork;

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->a:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionCookie;

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/b;

    invoke-direct {v2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getUA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewProxy;->addWebviewUA(Ljava/lang/String;)V

    return-void
.end method

.method public static registerGlobalAdzoneId(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    const-class v1, Lcom/alimama/tunion/trade/base/ITUnionCommon;

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getUtdid()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnabaleABTest(Z)V
    .locals 1

    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->enable(Z)V

    return-void
.end method
