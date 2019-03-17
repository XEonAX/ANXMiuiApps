.class Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;
.super Ljava/lang/Object;
.source "OperationHybridClient.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;->getFileChooserMaxImageCount(Landroid/webkit/WebView;Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;

.field final synthetic val$countGotCallback:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;->this$1:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper;

    iput-object p2, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;->val$countGotCallback:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v2, "OperationHybridClient"

    const-string v3, "get max image count from html:%s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, "maxCount":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;->val$countGotCallback:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationWebChromeClientWrapper$2;->val$countGotCallback:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;

    invoke-interface {v2, v1}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageCountGotCallback;->onGetMaxImageCount(I)V

    .line 180
    :cond_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "OperationHybridClient"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
