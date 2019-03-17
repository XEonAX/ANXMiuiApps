.class Lcom/taobao/applink/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/applink/f/a/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/applink/f/c;


# direct methods
.method constructor <init>(Lcom/taobao/applink/f/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/f/d;->b:Lcom/taobao/applink/f/c;

    iput-object p2, p0, Lcom/taobao/applink/f/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/taobao/applink/f/f;

    invoke-direct {v0}, Lcom/taobao/applink/f/f;-><init>()V

    iget-object v1, p0, Lcom/taobao/applink/f/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/applink/f/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/taobao/applink/f/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/applink/f/d;->b:Lcom/taobao/applink/f/c;

    iget-object v1, v1, Lcom/taobao/applink/f/c;->b:Lcom/taobao/applink/f/b;

    iget-object v2, p0, Lcom/taobao/applink/f/d;->b:Lcom/taobao/applink/f/c;

    iget-object v2, v2, Lcom/taobao/applink/f/c;->a:Landroid/webkit/WebView;

    invoke-static {v1, v2, v0}, Lcom/taobao/applink/f/b;->a(Lcom/taobao/applink/f/b;Landroid/webkit/WebView;Lcom/taobao/applink/f/f;)V

    return-void
.end method
