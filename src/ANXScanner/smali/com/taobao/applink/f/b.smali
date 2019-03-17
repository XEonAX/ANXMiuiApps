.class public Lcom/taobao/applink/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/applink/f/a/a;


# instance fields
.field a:J

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:Lcom/taobao/applink/f/a/c;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/applink/f/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/applink/f/b;->c:Ljava/util/Map;

    new-instance v0, Lcom/taobao/applink/f/a;

    invoke-direct {v0}, Lcom/taobao/applink/f/a;-><init>()V

    iput-object v0, p0, Lcom/taobao/applink/f/b;->d:Lcom/taobao/applink/f/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/applink/f/b;->e:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/applink/f/b;->a:J

    return-void
.end method

.method static synthetic a(Lcom/taobao/applink/f/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/f/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/applink/f/b;Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/taobao/applink/f/b;->b(Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V

    return-void
.end method

.method static synthetic b(Lcom/taobao/applink/f/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/f/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/f/b;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/f/b;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/taobao/applink/f/b;->a(Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/applink/f/b;)Lcom/taobao/applink/f/a/c;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/f/b;->d:Lcom/taobao/applink/f/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lcom/taobao/applink/f/b;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/applink/f/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/applink/f/f;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/applink/f/b;->a(Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/applink/f/b;->e:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public a(Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V
    .locals 4

    invoke-virtual {p2}, Lcom/taobao/applink/f/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\\\)([^utrn])"

    const-string v2, "\\\\\\\\$1$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?<=[^\\\\])(\")"

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript:TBAppLinkJsBridge._handleMessageFromNative(\"%s\");"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/taobao/applink/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/applink/f/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/applink/f/a/b;

    invoke-static {p2}, Lcom/taobao/applink/util/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/taobao/applink/f/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/applink/f/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/taobao/applink/f/a/b;)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/applink/f/b;->b:Ljava/util/Map;

    invoke-static {p2}, Lcom/taobao/applink/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/taobao/applink/f/a/c;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/f/b;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Landroid/webkit/WebView;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "javascript:TBAppLinkJsBridge._fetchQueue();"

    new-instance v1, Lcom/taobao/applink/f/c;

    invoke-direct {v1, p0, p1}, Lcom/taobao/applink/f/c;-><init>(Lcom/taobao/applink/f/b;Landroid/webkit/WebView;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/applink/f/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/taobao/applink/f/a/b;)V

    :cond_0
    return-void
.end method
