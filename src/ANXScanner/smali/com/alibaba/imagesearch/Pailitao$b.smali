.class Lcom/alibaba/imagesearch/Pailitao$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/Pailitao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    iput-boolean p3, p0, Lcom/alibaba/imagesearch/Pailitao$b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$b;->d:Ljava/util/Map;

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->b()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onWebViewPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->b()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onWebViewReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void

    :cond_0
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " header ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onWebViewReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void

    :cond_0
    const-string v0, "onReceivedHttpError"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedSslError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onWebViewReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onWebViewJumpWithoutNetwork(Landroid/webkit/WebView;)Z

    move-result v0

    const-string v1, "shouldOverrideUrlLoading onWebViewJumpWithoutNetwork"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading standAlone mode url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->c:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->shouldOpenInDifferentWebView()Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    invoke-direct {v4, p2}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vendorId"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v1, "2.4.6.0"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brand"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/imagesearch/PailitaoSettings;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/f;->a(I)Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    new-instance v6, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v6}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, v3, Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;->webView:Landroid/webkit/WebView;

    iget-object v2, v3, Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;->client:Landroid/webkit/WebViewClient;

    iget-object v3, v3, Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;->chromeClient:Landroid/webkit/WebChromeClient;

    sget-object v8, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    move v0, v9

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->d:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->d:Ljava/util/Map;

    const-string v1, "skipOverrideUrlLoading"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "skipOverrideUrlLoading"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    invoke-direct {v1, p2}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vendorId"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v2, "2.4.6.0"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brand"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v2}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/f;->a(I)Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    new-instance v3, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v3}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v5, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    move v0, v9

    goto/16 :goto_0
.end method
