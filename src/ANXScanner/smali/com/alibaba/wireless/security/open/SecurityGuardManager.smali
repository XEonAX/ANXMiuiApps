.class public Lcom/alibaba/wireless/security/open/SecurityGuardManager;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

.field private static volatile c:Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

.field private static final d:Ljava/lang/Object;

.field private static e:Lorg/json/JSONObject;

.field private static g:Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->e:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/wireless/security/framework/ISGPluginManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager$1;-><init>(Lcom/alibaba/wireless/security/open/SecurityGuardManager;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    return-void
.end method

.method private static getGlobalUserData()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializer(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;
    .locals 2

    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->c:Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->c:Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/initialize/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->c:Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->c:Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v0, :cond_2

    const-class v1, Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->a()Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;-><init>(Lcom/alibaba/wireless/security/framework/ISGPluginManager;)V

    sput-object v2, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->e:Lorg/json/JSONObject;

    :goto_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x76

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    invoke-direct {v1, v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    :try_start_3
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->e:Lorg/json/JSONObject;

    :cond_3
    sget-object v0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method a(I)Lcom/alibaba/wireless/security/open/IComponent;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/IComponent;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getAtlasEncryptComp()Lcom/alibaba/wireless/security/open/atlasencrypt/IAtlasEncryptComponent;
    .locals 3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/atlasencrypt/IAtlasEncryptComponent;

    if-nez v0, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x44a

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getDataCollectionComp()Lcom/alibaba/wireless/security/open/datacollection/IDataCollectionComponent;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/datacollection/IDataCollectionComponent;

    return-object v0
.end method

.method public getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    return-object v0
.end method

.method public getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/framework/ISGPluginManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMalDetectionComp()Lcom/alibaba/wireless/security/open/maldetection/IMalDetect;
    .locals 3

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/maldetection/IMalDetect;

    if-nez v0, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x576

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getNoCaptchaComp()Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;
    .locals 3

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    if-nez v0, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x513

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getOpenSDKComp()Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;

    return-object v0
.end method

.method public getPackageValidityCheckComp()Lcom/alibaba/wireless/security/open/pkgvaliditycheck/IPkgValidityCheckComponent;
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/pkgvaliditycheck/IPkgValidityCheckComponent;

    return-object v0
.end method

.method public getSDKVerison()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSGPluginManager()Lcom/alibaba/wireless/security/framework/ISGPluginManager;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a:Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    return-object v0
.end method

.method public getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    if-nez v0, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x6a3

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    return-object v0
.end method

.method public getSecurityBodyComp()Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    .locals 3

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    if-nez v0, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x5da

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getSimulatorDetectComp()Lcom/alibaba/wireless/security/open/simulatordetect/ISimulatorDetectComponent;
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/simulatordetect/ISimulatorDetectComponent;

    if-nez v0, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x63e

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    return-object v0
.end method

.method public getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    return-object v0
.end method

.method public getStaticKeyEncryptComp()Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;

    return-object v0
.end method

.method public getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->a(I)Lcom/alibaba/wireless/security/open/IComponent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    return-object v0
.end method

.method public isOpen()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
