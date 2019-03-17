.class public Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
.super Ljava/lang/Object;
.source "CloudControlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDataParam:Ljava/lang/String;

.field private mMethod:I

.field private mSyncToken:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v5, 0x3ea

    iput v5, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mMethod:I

    .line 63
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "appVersion"

    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getAppVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v5, "romVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIUI/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "operator":Ljava/lang/String;
    const-string v5, "operator"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v4    # "operator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v5, "sdkVersion"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 74
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/Encode;->SHA1Encode([B)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->access$000()V

    .line 83
    :cond_1
    const-string v5, "imeiSha1"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .end local v1    # "deviceId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mDataParam:Ljava/lang/String;

    .line 93
    return-void

    .line 68
    .restart local v4    # "operator":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 83
    .end local v4    # "operator":Ljava/lang/String;
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$UUID;->get()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 89
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public build()Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;-><init>(Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;Lcom/miui/gallery/cloudcontrol/CloudControlRequest$1;)V

    return-object v0
.end method

.method public getDataParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mDataParam:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mMethod:I

    return v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mSyncToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(I)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mMethod:I

    .line 97
    return-object p0
.end method

.method public setSyncToken(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .locals 0
    .param p1, "syncToken"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mSyncToken:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->mUrl:Ljava/lang/String;

    .line 102
    return-object p0
.end method
