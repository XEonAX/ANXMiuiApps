.class public Lcom/taobao/applink/auth/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/ServiceConnection;

.field private static b:Z


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

.field private e:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/applink/auth/a;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/applink/auth/TBAppLinkAuthListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/taobao/applink/auth/a;->d:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    goto :goto_0
.end method

.method static synthetic a()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lcom/taobao/applink/auth/a;->a:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic a(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    sput-object p0, Lcom/taobao/applink/auth/a;->a:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic a(Lcom/taobao/applink/auth/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/auth/a;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/applink/auth/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/auth/a;->e:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/auth/a;->d:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/applink/auth/a;Lcom/taobao/applink/auth/TBAppLinkAuthListener;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/auth/a;->d:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    return-object p1
.end method

.method static synthetic b(Lcom/taobao/applink/auth/a;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/auth/a;->e:Landroid/os/Messenger;

    return-object v0
.end method

.method private b()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/taobao/applink/auth/a;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/applink/auth/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/applink/auth/a;->b:Z

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/taobao/applink/auth/a;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/taobao/applink/auth/b;

    invoke-direct {v1, p0}, Lcom/taobao/applink/auth/b;-><init>(Lcom/taobao/applink/auth/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/applink/auth/a;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/taobao/applink/auth/a;->c:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taobao/applink/auth/a;->e:Landroid/os/Messenger;

    new-instance v0, Lcom/taobao/applink/auth/c;

    invoke-direct {v0, p0}, Lcom/taobao/applink/auth/c;-><init>(Lcom/taobao/applink/auth/a;)V

    sput-object v0, Lcom/taobao/applink/auth/a;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic c(Lcom/taobao/applink/auth/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/applink/auth/a;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/taobao/applink/auth/a;->b()V

    invoke-direct {p0}, Lcom/taobao/applink/auth/a;->c()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/taobao/applink/util/TBAppLinkUtil;->getServerAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/taobao/applink/util/TBAppLinkUtil;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/taobao/applink/auth/a;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/applink/auth/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
