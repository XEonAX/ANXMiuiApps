.class public Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;
.super Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebChromeClientWrapper;
.source "OperationHybridClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperationWebChromeClientWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
    .param p2, "wrappedWebChromeClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$GalleryWebChromeClientWrapper;-><init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Landroid/webkit/WebChromeClient;)V

    .line 135
    return-void
.end method


# virtual methods
.method public getFileChooserMaxImageCount(Landroid/webkit/WebView;Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "countGotCallback"    # Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    const-string v1, "javascript:getMaxImageCount()"

    new-instance v2, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;

    invoke-direct {v2, p0, p2}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;-><init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->callJsMethod(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 182
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v0, 0x1

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v1, v1, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 142
    const-string v0, "OperationHybridClient"

    const-string v1, "onShowFileChooser: already detached, do nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    invoke-static {v1, p2}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->access$002(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 148
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    invoke-static {v1, v0}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->access$102(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;I)I

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->access$100(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->startPicker(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->access$102(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;I)I

    .line 153
    new-instance v1, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$1;-><init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->getFileChooserMaxImageCount(Landroid/webkit/WebView;Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;)V

    goto :goto_0
.end method

.method public startPicker(I)V
    .locals 3
    .param p1, "maxImageCount"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v1, v1, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "pick-upper-bound"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "pick_close_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v1, v1, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
