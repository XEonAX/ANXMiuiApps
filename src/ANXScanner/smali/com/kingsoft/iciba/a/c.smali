.class public Lcom/kingsoft/iciba/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Class;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/kingsoft/iciba/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/iciba/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kingsoft/iciba/a/c;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kingsoft/iciba/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/kingsoft/iciba/a/c;->d()V

    return-void
.end method

.method static synthetic b(Lcom/kingsoft/iciba/a/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingsoft/iciba/a/c;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->e:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kingsoft/iciba/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kingsoft/iciba/a/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->b:Landroid/content/Context;

    const-string v1, "com.kingsoft"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    const-string v0, "com.kingsoft.util.SDKSimpleMean"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/iciba/a/c;->e:Ljava/lang/Class;

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->e:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/iciba/a/c;->f:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    sget-object v1, Lcom/kingsoft/iciba/a/c;->a:Ljava/lang/String;

    const-string v2, "init ciba context failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingsoft/iciba/a/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/kingsoft/iciba/a/c;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/iciba/a/c;->d()V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->e:Ljava/lang/Class;

    const-string v2, "getSimpleMean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/kingsoft/iciba/a/c;->f:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/kingsoft/iciba/a/c;->a:Ljava/lang/String;

    const-string v3, "Get simple mean failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/kingsoft/iciba/a/c;->c:J

    invoke-virtual {p0}, Lcom/kingsoft/iciba/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/iciba/a/d;

    invoke-direct {v1, p0}, Lcom/kingsoft/iciba/a/d;-><init>(Lcom/kingsoft/iciba/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/kingsoft/iciba/a/c;->b:Landroid/content/Context;

    const-string v1, "com.kingsoft"

    invoke-static {v0, v1}, Lcom/kingsoft/iciba/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/iciba/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/iciba/a/c;->d()V

    iget-object v1, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/iciba/a/e;->d(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x54

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/iciba/a/c;->d:Landroid/content/Context;

    goto :goto_0
.end method
