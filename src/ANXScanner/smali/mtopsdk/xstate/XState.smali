.class public Lmtopsdk/xstate/XState;
.super Ljava/lang/Object;
.source "XState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XState"

.field private static asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmtopsdk/common/util/AsyncServiceBinder",
            "<",
            "Lmtopsdk/xstate/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final localTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "appKey"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "deviceId"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEcode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "lat"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "lng"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "nq"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "netType"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "pv"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "sid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "t_offset"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "ttid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "uid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v0, :cond_1

    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/a/a;

    invoke-interface {v0, p0}, Lmtopsdk/xstate/a/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getValue] getValue by key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getValue]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 156
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 160
    :cond_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getValue]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 164
    :try_start_2
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 165
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v0, "mtopsdk.XState"

    const-string v1, "[init]init() error,context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {p0}, Lmtopsdk/xstate/XState;->initPhoneInfo(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lmtopsdk/xstate/a;

    const-class v1, Lmtopsdk/xstate/a/a;

    const-class v2, Lmtopsdk/xstate/c;

    invoke-direct {v0, v1, v2}, Lmtopsdk/xstate/a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 43
    sput-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0, p0}, Lmtopsdk/common/util/AsyncServiceBinder;->asyncBind(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lmtopsdk/xstate/XState;->syncToRemote()V

    goto :goto_0
.end method

.method private static initPhoneInfo(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    const-string v2, "ua"

    invoke-static {p0}, Lmtopsdk/xstate/util/PhoneInfo;->getPhoneBaseInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    const-string v2, "pv"

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    const-string v2, "t_offset"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    const-string v2, "utdid"

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "mtopsdk.XState"

    const-string v2, "[initPhoneInfo]initPhoneInfo error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAppBackground()Z
    .locals 3

    .prologue
    .line 129
    const-string v0, "AppBackground"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const/4 v0, 0x0

    .line 131
    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v1

    const-string v1, "mtopsdk.XState"

    const-string v2, "[isAppBackground] parse KEY_APP_BACKGROUND error"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v0, :cond_1

    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/a/a;

    invoke-interface {v0, p0}, Lmtopsdk/xstate/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[removeKey] removeKey by key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[removeKey]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 180
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 182
    :cond_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const-string v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[removeKey]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 188
    :try_start_2
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAppBackground(Z)V
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "AppBackground"

    invoke-static {v1, v0}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 195
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v0, :cond_1

    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/a/a;

    invoke-interface {v0, p0, p1}, Lmtopsdk/xstate/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[setValue] setValue failed ,key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setValue]Attention :User XState Local Mode: key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 204
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setValue]Attention :User XState Local Mode: key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_2
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 212
    :try_start_2
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static syncToRemote()V
    .locals 4

    .prologue
    .line 223
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/a/a;

    invoke-interface {v0}, Lmtopsdk/xstate/a/a;->a()V

    .line 226
    sget-object v2, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "mtopsdk.XState"

    const-string v2, "[syncToRemote]service.init() error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    :goto_1
    return-void

    .line 230
    :cond_1
    :try_start_3
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static unInit()V
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/a/a;

    invoke-interface {v0}, Lmtopsdk/xstate/a/a;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    sget-object v1, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 74
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->localTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "mtopsdk.XState"

    const-string v2, "[unInit] unInit error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
