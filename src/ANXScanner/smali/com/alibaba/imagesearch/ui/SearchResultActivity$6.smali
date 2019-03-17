.class Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a()V

    const-string v0, " srp webview onPageFinished"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogD(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, " srp webview onPageStarted"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    const/16 v2, 0x17

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " srp webview timeout errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " srp webview onReceivedError errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " srp webview onReceivedHttpError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " srp webview onReceivedSslError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->forceHttps:Z

    if-eqz v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6682\u65f6\u6ca1\u6709\u7f51\u7edc\u54e6,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6$1;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return v6

    :cond_1
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

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    sget-object v5, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    goto :goto_0
.end method
