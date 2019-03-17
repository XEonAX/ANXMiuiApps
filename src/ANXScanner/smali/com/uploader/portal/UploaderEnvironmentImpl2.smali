.class public Lcom/uploader/portal/UploaderEnvironmentImpl2;
.super Lcom/uploader/export/UploaderEnvironment;
.source "UploaderEnvironmentImpl2.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile environment:I

.field private volatile utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uploader/portal/UploaderEnvironmentImpl2;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceType"    # I

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/uploader/export/UploaderEnvironment;-><init>(I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->environment:I

    .line 39
    if-nez p1, :cond_0

    .line 40
    invoke-static {}, Lcom/uploader/export/UploaderGlobal;->retrieveContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->context:Landroid/content/Context;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->context:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "text"    # [B

    .prologue
    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v2, 0x0

    .line 147
    .local v2, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 149
    .local v0, "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/uploader/portal/UploaderEnvironmentImpl2;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v5

    iget-object v5, v5, Lcom/uploader/export/EnvironmentElement;->authCode:Ljava/lang/String;

    invoke-interface {v0, v4, p2, p3, v5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 154
    .end local v0    # "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableFlowControl()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 78
    .local v1, "versionName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "0"

    goto :goto_0
.end method

.method public getEnvironment()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->environment:I

    return v0
.end method

.method public getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v2, 0x0

    .line 133
    .local v2, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 135
    .local v0, "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    invoke-interface {v0, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    .end local v0    # "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    :goto_0
    return-object v2

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->utdid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->utdid:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v1

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->utdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->utdid:Ljava/lang/String;

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v2, -0x1

    .line 119
    .local v2, "result":I
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 121
    .local v0, "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    invoke-interface {v0, p2, p3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 125
    .end local v0    # "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    :goto_0
    return v2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEnvironment(I)V
    .locals 0
    .param p1, "environment"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->environment:I

    .line 57
    return-void
.end method

.method public signature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v2, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 96
    .local v2, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "INPUT"

    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 99
    .local v1, "paramContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    invoke-virtual {p0}, Lcom/uploader/portal/UploaderEnvironmentImpl2;->getAppKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 100
    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 101
    const/4 v6, 0x3

    iput v6, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v4, 0x0

    .line 105
    .local v4, "sign":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/uploader/portal/UploaderEnvironmentImpl2;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v5

    .line 107
    .local v5, "signatureComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    invoke-virtual {p0}, Lcom/uploader/portal/UploaderEnvironmentImpl2;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v6

    iget-object v6, v6, Lcom/uploader/export/EnvironmentElement;->authCode:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 111
    .end local v5    # "signatureComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :goto_0
    return-object v4

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
