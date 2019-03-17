.class public Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACK_URL:Ljava/lang/String; = "alisdk://"

.field public static final DEFAULT_CLIENT_TYPE:Ljava/lang/String; = "taobao"

.field public static final NOT_REQUIRE:I = 0x0

.field public static final REQUIRE_H5:I = 0x1

.field public static final REQUIRE_NATIVE:I = 0x2


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V
    .locals 12

    const-string v3, "AlibcBasePage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fdb\u5165showUrl\u6d41\u7a0b, \u53c2\u6570\u4e3a activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n webView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n webViewClient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n webChromeClient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n tradeContext = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n isWebviewProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v3, "AlibcBasePage"

    const-string v4, "\u91c7\u7528\u4e09\u65b9webview\u8fdb\u884c\u6253\u5f00"

    invoke-static {v3, v4}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getAdditionalHttpHeaders()Ljava/util/Map;

    move-result-object v9

    move-object v3, p1

    move-object/from16 v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v3 .. v11}, Lcom/alibaba/baichuan/android/trade/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "AlibcBasePage"

    const-string v4, "\u91c7\u7528\u767e\u5dddwebview\u8fdb\u884c\u6253\u5f00"

    invoke-static {v3, v4}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebChromeClient;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;",
            ")V"
        }
    .end annotation

    const-string v2, "AlibcBasePage"

    const-string v3, "\u5f53\u524d\u6d41\u7a0b\u9700\u8981\u8fdb\u884c\u6dd8\u5ba2\u6253\u70b9"

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->h()V

    :cond_0
    new-instance v2, Lcom/alibaba/baichuan/android/trade/page/a;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/baichuan/android/trade/page/a;-><init>(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->taokeTraceAndGenUrl(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Page_Native"

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getUsabilityPageType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applink\u8c03\u7528\u5931\u8d25,applink \u9519\u8bef\u7801\u4e3a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;)Z
    .locals 9

    const/4 v6, 0x1

    iget-object v7, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v3, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v3}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getClientType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v5, "taobao"

    :cond_0
    invoke-static {v5}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->isSupportLinkKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->adzoneid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->genOpenUrl()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alibaba/baichuan/android/trade/page/e;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/baichuan/android/trade/page/e;-><init>(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v6, v5, v8, v7, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->genTaokeUrl(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;)Z
    .locals 9

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    iget-object v1, p4, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "AlibcBasePage"

    const-string v2, "context/applinkData/applinkData.param = null \u6d41\u7a0b\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;->h()V

    :cond_2
    const/4 v1, 0x0

    iget v2, p4, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->type:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v1, v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    if-eqz v1, :cond_4

    const-string v1, "AlibcBasePage"

    const-string v3, "\u8df3\u8f6c\u6210\u529f"

    invoke-static {v1, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_3

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;->i()V

    :cond_3
    :goto_2
    if-eqz v2, :cond_9

    iget-boolean v1, v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    goto :goto_0

    :pswitch_0
    const-string v1, "AlibcBasePage"

    const-string v2, "\u8c03\u7528jumpDetail\u6d41\u7a0b"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v1

    iget-object v3, p4, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->param:Ljava/lang/String;

    move-object v2, p1

    move-object/from16 v4, p7

    move-object v5, p5

    move-object v6, p6

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpDetail(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :pswitch_1
    const-string v1, "AlibcBasePage"

    const-string v2, "\u8c03\u7528jumpShop\u6d41\u7a0b"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v1

    iget-object v3, p4, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->param:Ljava/lang/String;

    move-object v2, p1

    move-object/from16 v4, p7

    move-object v5, p5

    move-object v6, p6

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpShop(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :pswitch_2
    const-string v1, "AlibcBasePage"

    const-string v2, "\u8c03\u7528jumpUrl\u6d41\u7a0b"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v1

    iget-object v3, p4, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;->param:Ljava/lang/String;

    move-object v2, p1

    move-object/from16 v4, p7

    move-object v5, p5

    move-object v6, p6

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpTBURI(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_4
    const-string v1, "AlibcBasePage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8f6c\u5931\u8d25,\u5177\u4f53\u9519\u8bef\u4fe1\u606f = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isFailByNoApp()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    if-nez v2, :cond_7

    const-string v1, "-1"

    :goto_3
    invoke-direct {p0, v1}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-object/from16 v0, p7

    if-ne v0, v1, :cond_3

    if-eqz p9, :cond_3

    if-nez v2, :cond_8

    const/4 v1, 0x0

    :goto_4
    const-string v3, "linkPartner\u8df3\u8f6c\u5931\u8d25"

    move-object/from16 v0, p9

    invoke-interface {v0, v1, v3}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget v1, v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    iget v1, v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebChromeClient;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;",
            ")V"
        }
    .end annotation

    const-string v1, "AlibcBasePage"

    const-string v2, "\u5f53\u524d\u6d41\u7a0b\u9700\u8981\u8fdb\u884c\u6dd8\u5ba2\u6253\u70b9"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->h()V

    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getOriginalOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Native:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v11, v1

    :goto_0
    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->genOpenUrl()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/alibaba/baichuan/android/trade/page/c;

    move-object v2, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/baichuan/android/trade/page/c;-><init>(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;)V

    move-object/from16 v0, p6

    invoke-static {v11, v12, v13, v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->genTaokeUrl(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    move v11, v1

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;)Z
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    const-string v5, "alisdk://"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getBackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getBackUrl()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v2, "AlibcBasePage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native\u6253\u5f00backUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "taobao"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getClientType()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v1, "AlibcBasePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native\u6253\u5f00clientType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getApplinkData()Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;

    move-result-object v4

    if-nez p2, :cond_5

    move-object v2, v0

    :goto_0
    const-string v1, "AlibcBasePage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "native\u6253\u5f00taokeParam = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_6

    move-object v3, v0

    :goto_1
    const-string v1, "AlibcBasePage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "native\u6253\u5f00trackParam = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7

    move-object v9, v0

    :goto_2
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v0

    :cond_2
    const-string v1, "AlibcBasePage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "native\u6253\u5f00\u6d41\u7a0b\u4f20\u9012\u4e0b\u6765\u7684failMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    const-string v0, "AlibcBasePage"

    const-string v1, "failModeType = H5,\u9700\u8981\u8f6c\u6362\u6210NONE"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    :goto_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;->b()V

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Landroid/content/Context;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;)Z

    move-result v0

    return v0

    :cond_5
    iget-object v2, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    goto/16 :goto_0

    :cond_6
    iget-object v3, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    goto :goto_1

    :cond_7
    iget-object v9, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    goto :goto_2

    :cond_8
    move-object v7, v0

    goto :goto_3
.end method


# virtual methods
.method public checkParams()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "AlibcBasePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9996\u6b21\u8fdb\u5165\u52a0\u53c2\uff0c\u53c2\u6570\uff1a urlParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->j()V

    :cond_0
    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;->isTradeAddParamURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->k()V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;

    invoke-direct {v0, p1}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;->getAddParamsUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->k()V

    goto :goto_0
.end method

.method public getAddParamsUrl(Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOW:Ljava/lang/String;

    return-object v0
.end method

.method public getApplinkData()Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;
    .locals 3

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string v0, "07"

    return-object v0
.end method

.method public isBackWhenLoginFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNativeOpen(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Z
    .locals 8

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->requireOpenType()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AlibcBasePage"

    const-string v3, "\u8be5\u9875\u9762\u4e0d\u652f\u6301\u8fdb\u884c\u6253\u5f00\u65b9\u5f0f\u9009\u62e9,\u53ea\u6709\u4e00\u79cd\u65b9\u5f0f"

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->requireOpenType()I

    move-result v2

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getDouble11OpenType()I

    move-result v2

    if-ne v2, v0, :cond_3

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Native:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {p1, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V

    const-string v1, "AlibcBasePage"

    const-string v2, "\u53cc\u5341\u4e00\u5f00\u5173\u51b3\u5b9a\u91c7\u7528Native\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_4

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->H5:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {p1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V

    const-string v0, "AlibcBasePage"

    const-string v2, "\u53cc\u5341\u4e00\u5f00\u5173\u51b3\u5b9a\u91c7\u7528H5\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->isAdZoneIdExist()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p2}, Lcom/alibaba/baichuan/android/trade/c/b;->a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getIsEnabaleABTest()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->setEnabaleABTest(Z)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->getABTestResult()I

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->H5:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {p1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V

    move v0, v1

    goto :goto_0

    :cond_5
    if-ne v2, v0, :cond_7

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Native:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {p1, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->setEnabaleABTest(Z)V

    :cond_7
    sget-object v2, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "AlibcBasePage"

    const-string v3, "OpenType\u4e3aAuto"

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->genOpenUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    sget-object v4, Lcom/alibaba/baichuan/android/trade/AlibcContext;->nativeOpenPatterns:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "AlibcBasePage"

    const-string v7, "\u8be5Url\u9ed8\u8ba4\u91c7\u7528native\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v6, v7}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->isForceH5()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "AlibcBasePage"

    const-string v7, "isForceH5\u5f00\u5173\u88ab\u6253\u5f00,\u91c7\u7528H5\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v6, v7}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    const-string v0, "AlibcBasePage"

    const-string v2, "OpenType\u4e3aH5,\u91c7\u7528H5\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "AlibcBasePage"

    const-string v2, "OpenType\u4e3aNative,\u91c7\u7528Native\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openH5(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V
    .locals 11

    if-nez p1, :cond_0

    const-string v1, "AlibcBasePage"

    const-string v2, "activity = null \u6d41\u7a0b\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    :cond_1
    const-string v1, "AlibcBasePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u6d41\u7a0b\u7684\u53c2\u6570\u4e3a,taokeParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n showParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n urlParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->b()V

    :cond_2
    invoke-virtual {p0, v7}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->supportAid()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->b(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->genOpenUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v9, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->isProxyWebview()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Z)V

    goto/16 :goto_0
.end method

.method public openNative(Landroid/app/Activity;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;)Z
    .locals 2

    iget-object v0, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->a(Landroid/app/Activity;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->b(Landroid/app/Activity;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public requireOpenType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportAid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public taokeTraceAndGenUrl(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V
    .locals 0

    return-void
.end method
