.class public Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
.super Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
.source "OperationHybridClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;,
        Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;
    }
.end annotation


# instance fields
.field private mMaxSelectCount:I

.field private mValueCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mValueCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mMaxSelectCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mMaxSelectCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->gotoPhotoPage(Ljava/lang/String;)V

    return-void
.end method

.method private gotoPhotoPage(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebViewFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->startActivity(Landroid/content/Intent;)V

    .line 260
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private receiveImages(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, "uris":[Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 102
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 103
    .local v3, "sigleImage":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 105
    .local v1, "count":I
    new-array v5, v1, [Landroid/net/Uri;

    .line 106
    iget v6, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mMaxSelectCount:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 107
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 109
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->resolveUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v3, :cond_1

    .line 112
    const/4 v6, 0x1

    new-array v5, v6, [Landroid/net/Uri;

    .line 113
    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 116
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v3    # "sigleImage":Landroid/net/Uri;
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_3

    .line 117
    iget-object v6, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mValueCallback:Landroid/webkit/ValueCallback;

    if-eqz v6, :cond_2

    .line 118
    iget-object v6, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mValueCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v6, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 120
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mValueCallback:Landroid/webkit/ValueCallback;

    .line 122
    :cond_3
    return-void
.end method

.method private resolveUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.gallery.open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 128
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getJavascriptInterfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->getJavascriptInterfaces()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .restart local v1    # "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    :cond_0
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;

    const-string v2, "MiuiGalleryOperationStoryJSBridge"

    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;

    invoke-direct {v3, p0}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;-><init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;)V

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .local v0, "jsInterfacePair":Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v1
.end method

.method public getWebChromeClient(Landroid/webkit/WebChromeClient;)Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebChromeClientWrapper;
    .locals 1
    .param p1, "webChromeClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 64
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;-><init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method

.method public isSupportPullToRefresh()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 85
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->receiveImages(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->receiveImages(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 85
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public recordSaveEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "save_action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "assistant"

    const-string v2, "assistant_operation_card_image_save_success"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    return-void
.end method
