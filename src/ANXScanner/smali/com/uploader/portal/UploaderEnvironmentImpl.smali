.class public Lcom/uploader/portal/UploaderEnvironmentImpl;
.super Ljava/lang/Object;
.source "UploaderEnvironmentImpl.java"

# interfaces
.implements Lcom/uploader/export/IUploaderEnvironment;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile authCode:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private volatile dailyAppKey:Ljava/lang/String;

.field private volatile environment:I

.field private final instanceType:I

.field private volatile onlineAppKey:Ljava/lang/String;

.field private volatile prepareAppKey:Ljava/lang/String;

.field private volatile utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->environment:I

    .line 46
    const-string v0, "21646297"

    iput-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->onlineAppKey:Ljava/lang/String;

    .line 51
    const-string v0, "21646297"

    iput-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->prepareAppKey:Ljava/lang/String;

    .line 56
    const-string v0, "4272"

    iput-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->dailyAppKey:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->context:Landroid/content/Context;

    .line 63
    iput v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->instanceType:I

    .line 64
    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "text"    # [B

    .prologue
    .line 189
    const/4 v3, 0x0

    .line 190
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v2, 0x0

    .line 192
    .local v2, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 194
    .local v0, "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->authCode:Ljava/lang/String;

    invoke-interface {v0, v4, p2, p3, v5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    .end local v0    # "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :goto_0
    return-object v2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableFlowControl()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/uploader/portal/UploaderEnvironmentImpl;->getEnvironment()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    iget-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->onlineAppKey:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->onlineAppKey:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->prepareAppKey:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->dailyAppKey:Ljava/lang/String;

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 119
    .local v1, "versionName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "0"

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnvironment()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->environment:I

    return v0
.end method

.method public getInstanceType()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v2, 0x0

    .line 178
    .local v2, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 180
    .local v0, "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    invoke-interface {v0, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 184
    .end local v0    # "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->utdid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->utdid:Ljava/lang/String;

    .line 86
    :goto_0
    return-object v1

    .line 82
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->utdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->utdid:Ljava/lang/String;

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
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
    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v2, -0x1

    .line 164
    .local v2, "result":I
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    .line 166
    .local v0, "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    invoke-interface {v0, p2, p3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 170
    .end local v0    # "comp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    :goto_0
    return v2

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "online"    # Ljava/lang/String;
    .param p2, "prepare"    # Ljava/lang/String;
    .param p3, "daily"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->onlineAppKey:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->prepareAppKey:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->dailyAppKey:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->authCode:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setEnvironment(I)V
    .locals 0
    .param p1, "environment"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->environment:I

    .line 73
    return-void
.end method

.method public signature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v2, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 141
    .local v2, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "INPUT"

    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 144
    .local v1, "paramContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    invoke-virtual {p0}, Lcom/uploader/portal/UploaderEnvironmentImpl;->getAppKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 145
    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 146
    const/4 v6, 0x3

    iput v6, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const/4 v4, 0x0

    .line 150
    .local v4, "sign":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v5

    .line 152
    .local v5, "signatureComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    iget-object v6, p0, Lcom/uploader/portal/UploaderEnvironmentImpl;->authCode:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 156
    .end local v5    # "signatureComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :goto_0
    return-object v4

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
