.class public Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;
.super Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;
.source "GalleryHybridClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryWebViewClientWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Lmiui/webkit/WebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
    .param p2, "wrappedWebViewClient"    # Lmiui/webkit/WebViewClient;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    .line 199
    invoke-direct {p0, p2}, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;-><init>(Lmiui/webkit/WebViewClient;)V

    .line 200
    return-void
.end method

.method private tryToOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 228
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p2, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 238
    .local v2, "selector":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 239
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    :cond_0
    const-string v5, "com.android.browser.application_id"

    .line 245
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selector":Landroid/content/Intent;
    :goto_0
    return v3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/net/URISyntaxException;
    const-string v3, "GalleryHybridClient"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 231
    goto :goto_0

    .line 248
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "selector":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "GalleryHybridClient"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 250
    goto :goto_0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    iput-object p2, v0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->mCurrentUrl:Ljava/lang/String;

    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 221
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 205
    .local v0, "override":Z
    if-eqz v0, :cond_0

    .line 206
    const/4 v2, 0x1

    .line 213
    :goto_0
    return v2

    .line 209
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->access$000()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebViewClientWrapper;->tryToOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 213
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
