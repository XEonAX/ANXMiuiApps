.class final Lcom/alibaba/baichuan/trade/common/webview/jsbridge/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/d;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/d;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
