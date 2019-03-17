.class public Lcom/xiaomi/channel/commonutils/misc/BuildSettings;
.super Ljava/lang/Object;
.source "BuildSettings.java"


# static fields
.field public static final IsBetaBuild:Z

.field public static final IsDebugBuild:Z

.field public static final IsDefaultChannel:Z

.field public static final IsForYYBuild:Z

.field public static final IsLogableBuild:Z

.field public static final IsRCBuild:Z

.field public static IsTestBuild:Z

.field public static final ReleaseChannel:Ljava/lang/String;

.field private static envType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/DebugSwitch;->sDebugServerHost:Z

    if-eqz v0, :cond_2

    const-string v0, "ONEBOX"

    :goto_0
    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    const-string v3, "2A2FE0D7"

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsDefaultChannel:Z

    .line 31
    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsDefaultChannel:Z

    if-nez v0, :cond_0

    const-string v0, "DEBUG"

    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsDebugBuild:Z

    .line 34
    const-string v0, "LOGABLE"

    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsLogableBuild:Z

    .line 37
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    const-string v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsForYYBuild:Z

    .line 39
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    const-string v3, "TEST"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsTestBuild:Z

    .line 42
    const-string v0, "BETA"

    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsBetaBuild:Z

    .line 45
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    const-string v3, "RC"

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsRCBuild:Z

    .line 48
    sput v2, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    .line 51
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    const-string v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    .line 58
    :goto_2
    return-void

    .line 10
    :cond_2
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    goto :goto_0

    :cond_3
    move v0, v1

    .line 32
    goto :goto_1

    .line 53
    :cond_4
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->ReleaseChannel:Ljava/lang/String;

    const-string v1, "ONEBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    goto :goto_2

    .line 56
    :cond_5
    sput v2, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    goto :goto_2
.end method

.method public static IsOneBoxBuild()Z
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsSandBoxBuild()Z
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnvType()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    return v0
.end method

.method public static setEnvType(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 73
    sput p0, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->envType:I

    .line 74
    return-void
.end method
