.class public Lcom/ali/auth/third/core/registry/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/core/registry/a;


# instance fields
.field private a:Lcom/ali/auth/third/core/registry/a;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/core/registry/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ali/auth/third/core/registry/a/b;->a:Lcom/ali/auth/third/core/registry/a;

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/core/registry/a/b;)Lcom/ali/auth/third/core/registry/a;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/registry/a/b;->a:Lcom/ali/auth/third/core/registry/a;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ali/auth/third/core/registry/ServiceRegistration;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/auth/third/core/registry/a/b;->a:Lcom/ali/auth/third/core/registry/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ali/auth/third/core/registry/ServiceRegistration;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/registry/a/b;->a:Lcom/ali/auth/third/core/registry/a;

    invoke-interface {v0, p1}, Lcom/ali/auth/third/core/registry/a;->a(Lcom/ali/auth/third/core/registry/ServiceRegistration;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/auth/third/core/registry/a/b;->a:Lcom/ali/auth/third/core/registry/a;

    invoke-interface {v0, p1, p2}, Lcom/ali/auth/third/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "$isv_scope$"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/ali/auth/third/core/registry/a/b$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/ali/auth/third/core/registry/a/b$1;-><init>(Lcom/ali/auth/third/core/registry/a/b;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/auth/third/core/registry/a/b;->a:Lcom/ali/auth/third/core/registry/a;

    invoke-interface {v0, p1, p2}, Lcom/ali/auth/third/core/registry/a;->b(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
