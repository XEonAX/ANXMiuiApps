.class Lcom/alibaba/imagesearch/Pailitao$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/Pailitao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

.field private c:Landroid/graphics/Rect;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Lcom/alibaba/imagesearch/a/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$a;->b:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    iput-object p3, p0, Lcom/alibaba/imagesearch/Pailitao$a;->a:Landroid/content/Context;

    new-instance v0, Lcom/alibaba/imagesearch/a/c;

    invoke-direct {v0, p1}, Lcom/alibaba/imagesearch/a/c;-><init>(Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->f:Lcom/alibaba/imagesearch/a/a;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->f:Lcom/alibaba/imagesearch/a/a;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/a/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/Pailitao$a;->e:Ljava/lang/String;

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchImage in webview onJsPrompt msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    const-string v0, "bc_hybrid:"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/alibaba/imagesearch/utils/c;->d(Ljava/lang/String;)Lcom/alibaba/imagesearch/a/b;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsPrompt protocol = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alibaba/imagesearch/a/b;->b:Ljava/lang/String;

    const-string v2, "LoadFinished"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/alibaba/imagesearch/SearchResult;

    invoke-direct {v2}, Lcom/alibaba/imagesearch/SearchResult;-><init>()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->c:Landroid/graphics/Rect;

    iput-object v0, v2, Lcom/alibaba/imagesearch/SearchResult;->imageSpec:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/imagesearch/SearchResult;->imageKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/imagesearch/SearchResult;->imageUrl:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/alibaba/imagesearch/a/b;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "region"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/f;->a(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/imagesearch/SearchResult;->region:Landroid/graphics/Rect;

    const-string v3, "httpResponseCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/alibaba/imagesearch/SearchResult;->httpResponseCode:I

    const-string v3, "retCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    const-string v3, "retMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->b()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->b:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->b:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v0, v2}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onSearchFinished(Lcom/alibaba/imagesearch/SearchResult;)V

    const-string v0, "onSearchFinished"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsBridge.execute protocol = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/Pailitao$a;->f:Lcom/alibaba/imagesearch/a/a;

    iget-object v2, v1, Lcom/alibaba/imagesearch/a/b;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/imagesearch/a/b;->c:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

    invoke-direct {v4, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/imagesearch/a/a;->execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)Z

    move-result v0

    const-string v2, ""

    invoke-virtual {p5, v2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/imagesearch/Pailitao$a;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/alibaba/imagesearch/Pailitao;->a(Lcom/alibaba/imagesearch/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/imagesearch/Pailitao$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alibaba/imagesearch/Pailitao;->viewAuctionDetailByContext(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse JSBridgeProtocol error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
