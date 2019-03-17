.class final Lcom/kingsoft/iciba/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kingsoft/iciba/a/c;


# direct methods
.method constructor <init>(Lcom/kingsoft/iciba/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/c;->a(Lcom/kingsoft/iciba/a/c;)V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/c;->b(Lcom/kingsoft/iciba/a/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/c;->c(Lcom/kingsoft/iciba/a/c;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/c;->d(Lcom/kingsoft/iciba/a/c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/c;->c(Lcom/kingsoft/iciba/a/c;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v1}, Lcom/kingsoft/iciba/a/c;->d(Lcom/kingsoft/iciba/a/c;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v4}, Lcom/kingsoft/iciba/a/c;->b(Lcom/kingsoft/iciba/a/c;)Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingsoft/iciba/a/d;->a:Lcom/kingsoft/iciba/a/c;

    invoke-static {v4}, Lcom/kingsoft/iciba/a/c;->e(Lcom/kingsoft/iciba/a/c;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/kingsoft/iciba/a/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Init help class failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
