.class public Lcom/taobao/applink/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/applink/f/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/taobao/applink/f/a/b;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "DefaultHandler response data"

    invoke-interface {p2, v0}, Lcom/taobao/applink/f/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
