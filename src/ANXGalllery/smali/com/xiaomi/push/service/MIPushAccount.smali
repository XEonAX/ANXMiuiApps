.class public Lcom/xiaomi/push/service/MIPushAccount;
.super Ljava/lang/Object;
.source "MIPushAccount.java"


# instance fields
.field public final account:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final appToken:Ljava/lang/String;

.field public final envType:I

.field public final packageName:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "appToken"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/xiaomi/push/service/MIPushAccount;->token:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/xiaomi/push/service/MIPushAccount;->security:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/xiaomi/push/service/MIPushAccount;->appId:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/xiaomi/push/service/MIPushAccount;->appToken:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/xiaomi/push/service/MIPushAccount;->packageName:Ljava/lang/String;

    .line 40
    iput p7, p0, Lcom/xiaomi/push/service/MIPushAccount;->envType:I

    .line 41
    return-void
.end method

.method public static isAbTestSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/xiaomi/push/service/MIPushAccount;->isMIUIAlphaVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMIUIAlphaVersion()Z
    .locals 3

    .prologue
    .line 96
    :try_start_0
    const-string v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "clazz":Ljava/lang/Class;
    const-string v2, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 98
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 102
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v2

    .line 102
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isMIUIPush(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public toClientLoginInfo(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Landroid/content/Context;Lcom/xiaomi/push/service/ClientEventDispatcher;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 11
    .param p1, "clientLoginInfo"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dispatcher"    # Lcom/xiaomi/push/service/ClientEventDispatcher;
    .param p4, "abtest"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAccount;->security:Ljava/lang/String;

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushAccount;->token:Ljava/lang/String;

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    .line 64
    const-string v2, "5"

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    .line 65
    const-string v2, "XMPUSH-PASS"

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    .line 66
    iput-boolean v6, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->kick:Z

    .line 67
    const-string v1, ""

    .line 68
    .local v1, "packageNames":Ljava/lang/String;
    invoke-static {p2}, Lcom/xiaomi/push/service/MIPushAccount;->isMIUIPush(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getRunningAppPkgNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    const-string v2, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s:%7$s:%8$s"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sdk_ver"

    aput-object v4, v3, v6

    const/16 v4, 0x26

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "cpvn"

    aput-object v4, v3, v8

    const-string v4, "3_6_11"

    aput-object v4, v3, v9

    const-string v4, "cpvc"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const/16 v5, 0x7793

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "aapn"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object v1, v3, v4

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    .line 76
    invoke-static {p2}, Lcom/xiaomi/push/service/MIPushAccount;->isMIUIPush(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "1000271"

    .line 78
    .local v0, "finalAppId":Ljava/lang/String;
    :goto_0
    const-string v2, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s,sync:1"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "appid"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const-string v4, "locale"

    aput-object v4, v3, v8

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "miid"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    .line 81
    invoke-static {p2}, Lcom/xiaomi/push/service/MIIDManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/MIIDManager;->getMIID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 78
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    .line 82
    invoke-static {p2}, Lcom/xiaomi/push/service/MIPushAccount;->isAbTestSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",%1$s:%2$s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "ab"

    aput-object v5, v4, v6

    aput-object p4, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    .line 85
    :cond_1
    iput-object p3, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    .line 86
    return-object p1

    .line 76
    .end local v0    # "finalAppId":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushAccount;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public toClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 3
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 49
    .local v0, "clientLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->getClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/push/service/MIPushAccount;->toClientLoginInfo(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Landroid/content/Context;Lcom/xiaomi/push/service/ClientEventDispatcher;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 50
    return-object v0
.end method
