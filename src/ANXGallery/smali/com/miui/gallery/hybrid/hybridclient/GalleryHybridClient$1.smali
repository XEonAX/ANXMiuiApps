.class Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;
.super Ljava/lang/Object;
.source "GalleryHybridClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->callJsMethod(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

.field final synthetic val$jsMethod:Ljava/lang/String;

.field final synthetic val$resultCallback:Landroid/webkit/ValueCallback;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->this$0:Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    iput-object p2, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->val$jsMethod:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->val$resultCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->val$jsMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$1;->val$resultCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 174
    return-void
.end method
