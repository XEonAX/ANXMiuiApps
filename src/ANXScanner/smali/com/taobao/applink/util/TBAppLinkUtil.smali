.class public Lcom/taobao/applink/util/TBAppLinkUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_CUSTOM:Ljava/lang/String; = "com.taobao.open.intent.action.GETWAY"

.field public static final ACTION_JUMP:Ljava/lang/String; = "ali.open.nav"

.field public static final APLUS_BASE_URL:Ljava/lang/String; = "https://wgo.mmstat.com/%s"

.field public static final APLUS_H5_OPEN:Ljava/lang/String; = "/minitrade.1.21.2"

.field public static final APLUS_NATIVE_OPEN:Ljava/lang/String; = "/minitrade.1.21.1"

.field public static final AUTH_ACTION:Ljava/lang/String; = "com.taobao.applink.ACTION_AUTH_SUCCESS"

.field private static final BASE_CONSTANT:I = 0x0

.field public static final BASE_TB_VERSION:Ljava/lang/String; = "5.2.0"

.field public static final BASE_URL:Ljava/lang/String; = "tbopen://m.taobao.com/tbopen/index.html?"

.field public static final CLIENT_URL:Ljava/lang/String; = "minitrade.1.200.1"

.field public static final CONFIG_BASE_URL_ONLINE:Ljava/lang/String; = "https://nbsdk-baichuan.alicdn.com/2.0.0/applink.htm?plat=android&appKey=%s"

.field public static final CONFIG_BASE_URL_PRE:Ljava/lang/String; = "http://100.69.205.47/100.0.0/applink.htm?plat=android&appKey=%s"

.field public static final CONFIG_URL:Ljava/lang/String; = "minitrade.1.200.2"

.field public static final CRASH_URL:Ljava/lang/String; = "minitrade.1.200.3"

.field public static final DOWNLOAD_TAOBAO_URL:Ljava/lang/String; = "http://huodong.m.taobao.com/go/2085.html"

.field public static final GO_AUTH_H5URL:Ljava/lang/String; = "http://oauth.m.taobao.com/authorize?response_type=code&client_id=%s&redirect_uri=%s&view=wap"

.field public static final GO_DETAIL_H5URL:Ljava/lang/String; = "http://h5.m.taobao.com/awp/core/detail.htm?id=%s&"

.field public static final GO_SHOP_H5URL:Ljava/lang/String; = "http://shop.m.taobao.com/shop/shopIndex.htm?shop_id=%s&"

.field public static final H5_OPEN:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final NATIVE_OPEN:I = 0x2

.field public static final NONE_CLIENT_URL:Ljava/lang/String; = "minitrade.1.200.4"

.field public static final SDKVERSION:Ljava/lang/String; = "2.0.0"

.field public static final START_SERVER_ACTION:Ljava/lang/String; = "com.taobao.open.intent.action.AUTH"

.field public static final TAG:Ljava/lang/String; = "AppLink"

.field public static final TAOBAO_SCHEME:Ljava/lang/String; = "taobao_scheme"

.field public static final TAOPACKAGENAME:Ljava/lang/String; = "com.taobao.taobao"

.field public static final TMALLPACKAGENAME:Ljava/lang/String; = "com.tmall.wireless"

.field public static final TMALL_ACTON:Ljava/lang/String; = "com.tmall.wireless.intent.action.APPLINK"

.field public static final TMALL_BASE_SCHEME_URL:Ljava/lang/String; = "tmall://page.tm/appLink?"

.field public static final TMALL_SCHEME:Ljava/lang/String; = "tmall_scheme"

.field public static final TMALL_START_SERVER_ACTION:Ljava/lang/String; = "com.tmall.wireless.intent.action.AUTH"

.field private static sApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApplication()Landroid/app/Application;
    .locals 2

    const-class v1, Lcom/taobao/applink/util/TBAppLinkUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/applink/util/TBAppLinkUtil;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getSystemApp()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/taobao/applink/util/TBAppLinkUtil;->sApplication:Landroid/app/Application;

    :cond_0
    sget-object v0, Lcom/taobao/applink/util/TBAppLinkUtil;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getClientUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "https://wgo.mmstat.com/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "minitrade.1.200.1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "https://wgo.mmstat.com/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "minitrade.1.200.2"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCrashUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "https://wgo.mmstat.com/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "minitrade.1.200.3"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoneClientUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "https://wgo.mmstat.com/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "minitrade.1.200.4"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.taobao.taobao"

    const-string v1, "taobao_scheme"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "tmall_scheme"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.tmall.wireless"

    goto :goto_0
.end method

.method public static getServerAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.taobao.open.intent.action.AUTH"

    const-string v1, "taobao_scheme"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "tmall_scheme"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.tmall.wireless.intent.action.AUTH"

    goto :goto_0
.end method

.method private static getSystemApp()Landroid/app/Application;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "mInitialApplication"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static isSupportAppLinkSDK(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/taobao/applink/util/TBAppLinkUtil;->isSupportTaobao(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "taobao_scheme"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "tmall_scheme"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/taobao/applink/util/TBAppLinkUtil;->isSupportTmall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/taobao/applink/util/TBAppLinkUtil;->isSupportTaobao(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSupportTaobao(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "tbopen://m.taobao.com/tbopen/index.html?"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "com.taobao.open.intent.action.GETWAY"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    const-string v3, "com.taobao.taobao"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppLink"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSupportTmall(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tmall.wireless.intent.action.APPLINK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "tmall://page.tm/appLink?"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    const-string v3, "com.tmall.wireless"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppLink"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setApplication(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/taobao/applink/util/TBAppLinkUtil;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/taobao/applink/util/TBAppLinkUtil;->sApplication:Landroid/app/Application;

    :cond_0
    return-void
.end method
