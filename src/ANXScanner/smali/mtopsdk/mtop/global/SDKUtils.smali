.class public Lmtopsdk/mtop/global/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKUtils"

.field private static sdkConfig:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorrectionTime()J
    .locals 6

    .prologue
    .line 26
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getTimeOffset()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCorrectionTimeMillis()J
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimeOffset()J
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lmtopsdk/xstate/XState;->getTimeOffset()Ljava/lang/String;

    move-result-object v2

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    .line 52
    :catch_0
    move-exception v2

    const-string v2, "mtopsdk.SDKUtils"

    const-string v3, "[getTimeOffset]parse t_offset failed"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    const-string v2, "t_offset"

    const-string v3, "0"

    invoke-static {v2, v3}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logOut()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "sid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->removeKey(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    const-string v0, "uid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->removeKey(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    const-string v0, "mtopsdk.SDKUtils"

    const-string v1, "[logOut] remove sessionInfo succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static registerDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    if-eqz p0, :cond_0

    .line 114
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 116
    :cond_0
    return-void
.end method

.method public static registerLat(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const-string v0, "lat"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static registerLng(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "lng"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    const-string v0, "sid"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "uid"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[registerSessionInfo]register sessionInfo succeed"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, ",sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "mtopsdk.SDKUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-static {p0, p2}, Lmtopsdk/mtop/global/SDKUtils;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static registerTtid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 125
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 127
    :cond_0
    return-void
.end method

.method public static registerUtdid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUtdid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 138
    :cond_0
    return-void
.end method
