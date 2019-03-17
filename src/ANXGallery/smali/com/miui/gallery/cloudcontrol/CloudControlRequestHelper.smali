.class public Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;
.super Ljava/lang/Object;
.source "CloudControlRequestHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private doPostJobs()V
    .locals 0

    .prologue
    .line 134
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->doPostCloudControlJob()V

    .line 135
    return-void
.end method

.method private execRequestSyncInternal(Z)Z
    .locals 8
    .param p1, "isLoggedIn"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    const-string v3, "CloudControlRequestHelper"

    const-string v4, "Request failed: privacy agreement disabled"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 78
    :goto_0
    return v4

    .line 55
    :cond_0
    invoke-static {}, Lcom/miui/gallery/agreement/AgreementsUtils;->isNetworkingAgreementAccepted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    const-string v3, "CloudControlRequestHelper"

    const-string v4, "Request failed: CTA not confirmed."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    new-instance v6, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;

    invoke-direct {v6}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;-><init>()V

    if-eqz p1, :cond_2

    const/16 v3, 0x3ea

    .line 60
    :goto_1
    invoke-virtual {v6, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->setMethod(I)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;

    move-result-object v6

    if-eqz p1, :cond_3

    .line 61
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$CloudControl;->getUrl()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;

    move-result-object v3

    .line 62
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->getSyncToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->setSyncToken(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest$Builder;->build()Lcom/miui/gallery/cloudcontrol/CloudControlRequest;

    move-result-object v0

    .line 65
    .local v0, "request":Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequest;->simpleExecuteSync()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/CloudControlResponse;

    .line 66
    .local v2, "response":Lcom/miui/gallery/cloudcontrol/CloudControlResponse;
    if-nez v2, :cond_4

    .line 67
    sget-object v3, Lcom/miui/gallery/net/base/ErrorCode;->BODY_EMPTY:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v4, "Response is empty"

    const-string v6, "Response is empty"

    invoke-direct {p0, v3, v4, v6, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setLastRequestTime(J)V

    move v4, v5

    goto :goto_0

    .end local v0    # "request":Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
    .end local v2    # "response":Lcom/miui/gallery/cloudcontrol/CloudControlResponse;
    :cond_2
    move v3, v4

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$CloudControl;->getAnonymousUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 70
    .restart local v0    # "request":Lcom/miui/gallery/cloudcontrol/CloudControlRequest;
    .restart local v2    # "response":Lcom/miui/gallery/cloudcontrol/CloudControlResponse;
    :cond_4
    :try_start_1
    invoke-direct {p0, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->handleResponse(Lcom/miui/gallery/cloudcontrol/CloudControlResponse;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setLastRequestSucceedTime(J)V
    :try_end_1
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setLastRequestTime(J)V

    goto :goto_0

    .line 74
    .end local v2    # "response":Lcom/miui/gallery/cloudcontrol/CloudControlResponse;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "requestError":Lcom/miui/gallery/net/base/RequestError;
    :try_start_2
    invoke-virtual {v1}, Lcom/miui/gallery/net/base/RequestError;->getErrorCode()Lcom/miui/gallery/net/base/ErrorCode;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/gallery/net/base/RequestError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/gallery/net/base/RequestError;->getResponseData()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v3, v4, v6, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setLastRequestTime(J)V

    move v4, v5

    goto :goto_0

    .end local v1    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :catchall_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setLastRequestTime(J)V

    throw v3
.end method

.method private getRequestIntervalMinutes()I
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->getLastRequestTime()J

    move-result-wide v0

    .line 127
    .local v0, "lastRequestTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 128
    const v2, 0x7fffffff

    .line 130
    :goto_0
    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_0
.end method

.method private handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;
    .param p4, "isLoggedIn"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/net/base/ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "errorCodeName":Ljava/lang/String;
    :goto_0
    const-string v2, "CloudControlRequestHelper"

    const-string v3, "Request failed, errorCode: %s, errorMessage: %s, responseData: %s, isLoggedIn: %b."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    .line 111
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 110
    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v1

    .line 113
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "request_interval(minutes)"

    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->getRequestIntervalMinutes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "error_code"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "error_message"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "response"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v3, "cloud_control"

    if-eqz p4, :cond_1

    const-string v2, "cloud_control_real_name_request_error"

    :goto_1
    invoke-static {v3, v2, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    return-void

    .line 109
    .end local v0    # "errorCodeName":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 117
    .restart local v0    # "errorCodeName":Ljava/lang/String;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "cloud_control_anonymous_request_error"

    goto :goto_1
.end method

.method private handleResponse(Lcom/miui/gallery/cloudcontrol/CloudControlResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/miui/gallery/cloudcontrol/CloudControlResponse;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlResponse;->getFeatureProfiles()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "persistError":Z
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlResponse;->getFeatureProfiles()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .line 86
    .local v0, "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->insertToCache(Lcom/miui/gallery/cloudcontrol/FeatureProfile;)V

    .line 87
    iget-object v5, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;->tryInsertToDB(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I

    move-result v3

    .line 88
    .local v3, "ret":I
    if-nez v3, :cond_0

    .line 89
    const/4 v2, 0x1

    .line 90
    const-string v5, "CloudControlRequestHelper"

    const-string v6, "Persist error: %s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v0    # "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    .end local v3    # "ret":I
    :cond_1
    if-eqz v2, :cond_2

    .line 94
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v1

    .line 95
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "response"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v4, "cloud_control"

    const-string v5, "cloud_control_persist_error"

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "persistError":Z
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlResponse;->getSyncToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/CloudControlResponse;->getSyncToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setSyncToken(Ljava/lang/String;)V

    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public execRequestSync()Z
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    .line 46
    .local v0, "existXiaomiAccount":Z
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync(Z)Z

    move-result v1

    return v1
.end method

.method public execRequestSync(Z)Z
    .locals 4
    .param p1, "isLoggedIn"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSyncInternal(Z)Z

    move-result v1

    .line 34
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->doPostJobs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CloudControlRequestHelper"

    const-string v3, "Error occurred while executing post cloud control request job, %s"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
