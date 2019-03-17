.class final Lmtopsdk/mtop/global/MtopSDK$3;
.super Ljava/lang/Object;
.source "MtopSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->checkMtopSDKInit()V

    .line 198
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[switchEnvMode]MtopSDK switchEnvMode start"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK$4;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    iget-object v1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :cond_1
    :goto_0
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 247
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmtopsdk/mtop/global/SwitchConfig;->setGlobalSpdySslSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;

    .line 249
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$100(Landroid/content/Context;)V

    .line 250
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[switchEnvMode]MtopSDK switchEnvMode end"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_3
    return-void

    .line 203
    :pswitch_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 204
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 205
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 206
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 207
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[switchEnvMode]switch envMode to ONLINE!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_4
    invoke-static {v3}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 214
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 215
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->develop:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 216
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 217
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 218
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[switchEnvMode]switch envMode to PRE!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :pswitch_2
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 224
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 225
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 226
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 227
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 228
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[switchEnvMode]switch envMode to DAILY!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :pswitch_3
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$200()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 234
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 235
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 236
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 237
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$300(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 238
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[switchEnvMode]switch envMode to DAILY SandBox!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
