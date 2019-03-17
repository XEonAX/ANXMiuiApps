.class public Lcom/alibaba/baichuan/trade/common/adapter/security/c;
.super Lcom/alibaba/baichuan/trade/common/adapter/security/a;


# instance fields
.field private a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/security/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[B)Ljava/lang/Long;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getOpenSDKComp()Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v6

    :goto_1
    move-object v6, v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "AppIDKey"

    const-string v3, "OpenIDSaltKey"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->analyzeOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AppMonitor"

    const-string v2, "analyzeOpenId "

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppMonitor"

    const-string v2, "dynamicEncrypt"

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized a()Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "AppMonitor"

    const-string v2, "security init satrt"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v1

    sget-object v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-interface {v1, v2}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->b:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v0, "AppMonitor"

    const-string v1, "SecurityGuard init = success /n security init end"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "AppMonitor"

    const-string v3, "AlibcSecurity init "

    invoke-static {v2, v3, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_4
    const-string v1, "AppMonitor"

    const-string v2, "SecurityGuard init = fail /n security init end"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppMonitor"

    const-string v2, "dynamicDecrypt "

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->OPEN_BIZ_IID:[B

    invoke-direct {p0, p1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/security/c;->a(Ljava/lang/String;[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
