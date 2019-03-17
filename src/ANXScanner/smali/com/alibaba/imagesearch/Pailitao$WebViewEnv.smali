.class public Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/Pailitao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewEnv"
.end annotation


# instance fields
.field public chromeClient:Landroid/webkit/WebChromeClient;

.field public client:Landroid/webkit/WebViewClient;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
