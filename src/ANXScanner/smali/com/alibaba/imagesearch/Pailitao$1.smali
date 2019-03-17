.class final Lcom/alibaba/imagesearch/Pailitao$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Landroid/graphics/Rect;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;ZLcom/alibaba/imagesearch/Pailitao$SearchImageCallback;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/alibaba/imagesearch/Pailitao$1;->c:Z

    iput-object p4, p0, Lcom/alibaba/imagesearch/Pailitao$1;->d:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    iput-object p5, p0, Lcom/alibaba/imagesearch/Pailitao$1;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/alibaba/imagesearch/Pailitao$1;->f:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/alibaba/imagesearch/Pailitao$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/imagesearch/Pailitao$1;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/imagesearch/Pailitao$1;->i:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x0

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    iget-boolean v2, p0, Lcom/alibaba/imagesearch/Pailitao$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/c;->a(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/Pailitao;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "initWebviewSettings"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/alibaba/imagesearch/Pailitao$b;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->d:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    iget-boolean v3, p0, Lcom/alibaba/imagesearch/Pailitao$1;->c:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/alibaba/imagesearch/Pailitao$b;-><init>(Landroid/content/Context;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;Z)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->e:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/alibaba/imagesearch/Pailitao$b;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Lcom/alibaba/imagesearch/Pailitao$a;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->d:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    invoke-direct {v3, v0, v1, v4}, Lcom/alibaba/imagesearch/Pailitao$a;-><init>(Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;Landroid/webkit/WebView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->f:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Lcom/alibaba/imagesearch/Pailitao$a;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/imagesearch/Pailitao$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/imagesearch/Pailitao$a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "com_alibaba_iamgesearch__web_client_holder"

    invoke-static {v1, v4, v5}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "com_alibaba_iamgesearch__web_chrome_client_holder"

    invoke-static {v1, v4, v5}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->i:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->i:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchImage srpUrl = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    const-string v1, "searchImage loadBy webview"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v1, "searchImage loadBy bc"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    new-instance v4, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    invoke-direct {v4, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v5, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$1;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$1;->a:Landroid/webkit/WebView;

    sget-object v8, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-object v7, v6

    invoke-static/range {v0 .. v8}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    goto :goto_0
.end method
