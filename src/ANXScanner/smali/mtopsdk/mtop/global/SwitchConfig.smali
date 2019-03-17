.class public Lmtopsdk/mtop/global/SwitchConfig;
.super Ljava/lang/Object;
.source "SwitchConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfig"

.field private static apiLockInterval:J

.field private static final config:Lmtopsdk/mtop/global/SwitchConfig;

.field private static individualApiLockIntervalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localConfig:Lmtopsdk/common/util/LocalConfig;

.field private static mtopConfigListener:Lmtopsdk/common/a/a;

.field private static final remoteConfig:Lmtopsdk/common/util/RemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lmtopsdk/mtop/global/SwitchConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SwitchConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    .line 36
    invoke-static {}, Lmtopsdk/common/util/RemoteConfig;->getInstance()Lmtopsdk/common/util/RemoteConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    .line 38
    invoke-static {}, Lmtopsdk/common/util/LocalConfig;->getInstance()Lmtopsdk/common/util/LocalConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/a/a;

    .line 45
    const-wide/16 v0, 0xa

    sput-wide v0, Lmtopsdk/mtop/global/SwitchConfig;->apiLockInterval:J

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SwitchConfig;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    return-object v0
.end method

.method public static getMtopConfigListener()Lmtopsdk/common/a/a;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/a/a;

    return-object v0
.end method


# virtual methods
.method public getGlobalApiLockInterval()J
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-wide v0, v0, Lmtopsdk/common/util/RemoteConfig;->apiLockInterval:J

    .line 113
    sput-wide v0, Lmtopsdk/mtop/global/SwitchConfig;->apiLockInterval:J

    return-wide v0
.end method

.method public getIndividualApiLockInterval(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 156
    .line 157
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-wide v2

    .line 160
    :cond_1
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    .line 169
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v1, "mtopsdk.SwitchConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getIndividualApiLockInterval]parse individual apiLock interval error.apiKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_1
.end method

.method public getIndividualApiLockIntervalMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/a/a;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/a/a;

    .line 57
    :cond_0
    return-void
.end method

.method public isGlobalSpdySslSwitchOpen()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalUnitSwitchOpen()Z
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlobalSpdySslSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    .line 100
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalSpdySslSwitchOpen]set local spdySslSwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-object p0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    .line 81
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalSpdySwitchOpen]set local spdySwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-object p0
.end method

.method public setGlobalUnitSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    .line 133
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalUnitSwitchOpen]set local unitSwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-object p0
.end method

.method public setMtopConfigListener(Lmtopsdk/common/a/a;)V
    .locals 0

    .prologue
    .line 60
    sput-object p1, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/a/a;

    .line 61
    return-void
.end method
