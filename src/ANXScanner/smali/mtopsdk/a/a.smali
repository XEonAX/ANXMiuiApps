.class public Lmtopsdk/a/a;
.super Ljava/lang/Object;
.source "ISign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

.field private b:Lmtopsdk/mtop/global/SDKConfig;

.field private c:Lcom/alibaba/wireless/security/jaq/SecurityVerification;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lmtopsdk/a/a;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 31
    iput-object v0, p0, Lmtopsdk/a/a;->b:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmtopsdk/a/a;->b:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAuthCode()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 119
    .line 121
    :try_start_0
    iget-object v1, p0, Lmtopsdk/a/a;->c:Lcom/alibaba/wireless/security/jaq/SecurityVerification;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lmtopsdk/a/a;->c:Lcom/alibaba/wireless/security/jaq/SecurityVerification;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wireless/security/jaq/SecurityVerification;->doJAQVerfificationSync(Ljava/util/HashMap;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    const-string v2, "mtopsdk.SecuritySignImpl"

    const-string v3, "[getSecBodyDataEx] SecurityVerification doJAQVerfificationSync error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    const-string v1, "mtopsdk.SecuritySignImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getMtopApiWBSign] appkey or params is null.appkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-object v0

    .line 97
    :cond_1
    iget-object v1, p0, Lmtopsdk/a/a;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v1, :cond_2

    .line 98
    const-string v1, "mtopsdk.SecuritySignImpl"

    const-string v2, "[getMtopApiWBSign]SecurityGuardManager is null,please call ISign init()"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    :try_start_0
    new-instance v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 104
    iput-object p2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 105
    const/4 v2, 0x7

    iput v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 106
    invoke-static {p1, p2}, Lcom/taobao/tao/remotebusiness/listener/c;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 107
    const-string v3, "ATLAS"

    const-string v4, "a"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 109
    iget-object v2, p0, Lmtopsdk/a/a;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v2

    .line 110
    invoke-direct {p0}, Lmtopsdk/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    const-string v2, "mtopsdk.SecuritySignImpl"

    const-string v3, "[getMtopApiWBSign] ISecureSignatureComponent signRequest error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lmtopsdk/a/a$a;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v1, p1, Lmtopsdk/a/a$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 76
    iget-object v0, p1, Lmtopsdk/a/a$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lmtopsdk/a/a;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    .line 82
    :try_start_0
    iget v2, p1, Lmtopsdk/a/a$a;->a:I

    invoke-direct {p0}, Lmtopsdk/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string v2, "mtopsdk.SecuritySignImpl"

    const-string v3, "[getAppkey]getAppKeyByIndex error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 42
    const-string v0, "mtopsdk.SecuritySignImpl"

    const-string v1, "[init]SecuritySignImpl init.context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    iput-object v2, p0, Lmtopsdk/a/a;->b:Lmtopsdk/mtop/global/SDKConfig;

    .line 49
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    iput-object v2, p0, Lmtopsdk/a/a;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 50
    iget-object v2, p0, Lmtopsdk/a/a;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    .line 51
    invoke-direct {p0}, Lmtopsdk/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "mtopsdk.SecuritySignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[init]SecuritySignImpl ISign init.set GlobalAppKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    new-instance v2, Lcom/alibaba/wireless/security/jaq/SecurityVerification;

    invoke-direct {v2, p1}, Lcom/alibaba/wireless/security/jaq/SecurityVerification;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmtopsdk/a/a;->c:Lcom/alibaba/wireless/security/jaq/SecurityVerification;

    .line 60
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string v2, "mtopsdk.SecuritySignImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[init]SecuritySignImpl ISign init succeed.init time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "mtopsdk.SecuritySignImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[init]SecuritySignImpl init securityguard error.---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
