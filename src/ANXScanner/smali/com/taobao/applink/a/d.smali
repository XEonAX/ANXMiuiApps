.class public abstract Lcom/taobao/applink/a/d;
.super Ljava/lang/Object;


# instance fields
.field public c:Lcom/taobao/applink/f/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/taobao/applink/f/a/b;)V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public b(Landroid/content/Context;Lcom/taobao/applink/f/a/b;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/taobao/applink/a/d;->a(Landroid/content/Context;Lcom/taobao/applink/f/a/b;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/applink/a/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
