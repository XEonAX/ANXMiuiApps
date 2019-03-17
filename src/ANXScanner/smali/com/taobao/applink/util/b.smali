.class final Lcom/taobao/applink/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/applink/f/a/c;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/util/b;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/taobao/applink/f/a/b;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/applink/util/b;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/applink/e/a;->a(Ljava/lang/String;)Lcom/taobao/applink/param/TBBaseParam;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/taobao/applink/d/a;->a(Landroid/content/Context;Lcom/taobao/applink/param/TBBaseParam;Lcom/taobao/applink/f/a/b;)Z
    :try_end_0
    .catch Lcom/taobao/applink/exception/TBAppLinkException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Lcom/taobao/applink/exception/TBAppLinkException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
