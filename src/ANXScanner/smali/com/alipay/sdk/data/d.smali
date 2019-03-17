.class final Lcom/alipay/sdk/data/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/alipay/sdk/data/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/data/c;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alipay/sdk/data/d;->c:Lcom/alipay/sdk/data/c;

    iput-object p2, p0, Lcom/alipay/sdk/data/d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/sdk/data/d;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/sdk/data/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/sdk/data/d;->b:Ljava/util/HashMap;

    .line 1037
    invoke-static {v0, v1}, Lcom/alipay/sdk/data/c;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 275
    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    .line 1275
    iget-object v0, p0, Lcom/alipay/sdk/data/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/sdk/data/d;->b:Ljava/util/HashMap;

    .line 2037
    invoke-static {v0, v1}, Lcom/alipay/sdk/data/c;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 271
    return-object v0
.end method
