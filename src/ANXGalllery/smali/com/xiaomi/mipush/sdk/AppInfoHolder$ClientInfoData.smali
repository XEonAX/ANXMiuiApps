.class public Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;
.super Ljava/lang/Object;
.source "AppInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/AppInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfoData"
.end annotation


# instance fields
.field public appID:Ljava/lang/String;

.field public appRegion:Ljava/lang/String;

.field public appToken:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public envType:I

.field public isPaused:Z

.field public isValid:Z

.field private mContext:Landroid/content/Context;

.field public regID:Ljava/lang/String;

.field public regResource:Ljava/lang/String;

.field public regSecret:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isPaused:Z

    .line 220
    iput v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->envType:I

    .line 225
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    .line 226
    return-void
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;)Ljava/lang/String;
    .locals 4
    .param p0, "clientInfoData"    # Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    .prologue
    .line 343
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 344
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "appId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v2, "appToken"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v2, "regId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v2, "regSec"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string/jumbo v2, "vName"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string/jumbo v2, "valid"

    iget-boolean v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 351
    const-string v2, "paused"

    iget-boolean v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isPaused:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 352
    const-string v2, "envType"

    iget v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->envType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    const-string v2, "regResource"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regResource:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 357
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 357
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    .line 295
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    .line 296
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    .line 297
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    .line 298
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    .line 299
    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    .line 300
    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isPaused:Z

    .line 301
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appRegion:Ljava/lang/String;

    .line 302
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->envType:I

    .line 303
    return-void
.end method

.method public invalidate()V
    .locals 4

    .prologue
    .line 314
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    .line 315
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "valid"

    iget-boolean v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void
.end method

.method public isVaild()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isVaild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVaild(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    .line 276
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnvType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->envType:I

    .line 311
    return-void
.end method

.method public setHybridRegIdAndSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "regID"    # Ljava/lang/String;
    .param p2, "regSecret"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    .line 272
    return-void
.end method

.method public setIdAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "regResource"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regResource:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 234
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v2, "appToken"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v2, "regResource"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isPaused:Z

    .line 307
    return-void
.end method

.method public setRegIdAndSecret(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "regID"    # Ljava/lang/String;
    .param p2, "regSecret"    # Ljava/lang/String;
    .param p3, "appRegion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 242
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    .line 245
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->getVersionName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    .line 246
    iput-boolean v4, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    .line 247
    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appRegion:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "regId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string v2, "regSec"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string/jumbo v2, "vName"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string/jumbo v2, "valid"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v2, "appRegion"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method
