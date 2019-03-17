.class final Lcom/taobao/tao/remotebusiness/listener/a;
.super Ljava/lang/Object;
.source "DynamicProxyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

.field private b:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

.field private c:Lcom/taobao/tao/remotebusiness/MtopBusiness;

.field private d:Lmtopsdk/mtop/common/MtopListener;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

    invoke-direct {v0, p1, p2}, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/a;->a:Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

    .line 24
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/a;->c:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 25
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/a;->d:Lmtopsdk/mtop/common/MtopListener;

    .line 26
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFinished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/a;->a:Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDataReceived"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/a;->b:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/a;->c:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/listener/a;->d:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {v0, v1, v2}, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/a;->b:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    :cond_2
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/a;->b:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
