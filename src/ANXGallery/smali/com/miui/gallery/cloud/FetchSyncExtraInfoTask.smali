.class public Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;
.super Ljava/lang/Object;
.source "FetchSyncExtraInfoTask.java"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mContext:Landroid/content/Context;

.field protected mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mAccount:Landroid/accounts/Account;

    .line 39
    iput-object p3, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 40
    return-void
.end method

.method private callAPI(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .local p1, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v4, 0x0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 72
    .local v8, "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget v2, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getJsonTagInput(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "jsonTagInput":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v0, "FetchSyncExtraInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get input tag is null, syncType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v6, 0x0

    .line 87
    .end local v7    # "jsonTagInput":Ljava/lang/String;
    .end local v8    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :goto_1
    return-object v6

    .line 77
    .restart local v7    # "jsonTagInput":Ljava/lang/String;
    .restart local v8    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget v3, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 78
    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getJsonTagInput(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v10, v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v7    # "jsonTagInput":Ljava/lang/String;
    .end local v8    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v6

    .line 85
    .local v6, "allJson":Lorg/json/JSONObject;
    const-string v0, "FetchSyncExtraInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allJson="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCurrentSyncTag()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mAccount:Landroid/accounts/Account;

    .line 56
    invoke-static {v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/SyncFromServer;->getCurrentSyncTag(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$Upgrade;->getUpgradeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 91
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 92
    .local v1, "data":Lorg/json/JSONObject;
    const-string v6, "full"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "ownerSyncInfo":Ljava/lang/String;
    const-string/jumbo v6, "share"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "shareSyncInfo":Ljava/lang/String;
    const-string v6, "oneshare"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "shareOneAlbumSyncInfo":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "cloudSettingValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "syncInfo"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v6, "shareSyncInfo"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v6, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->mAccount:Landroid/accounts/Account;

    .line 100
    invoke-static {v7}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-static {v6, v0, v7, v8}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v3, "shareAlbumValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "syncInfo"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v6, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v8, v8}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncFetchSyncExtraInfoFromV2ToV3(Z)V

    .line 107
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 112
    const-string v6, "FetchSyncExtraInfoTask"

    const-string/jumbo v7, "start"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 114
    .local v4, "startTime":J
    const/4 v2, 0x0

    .line 115
    .local v2, "retryTimes":I
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 116
    .local v0, "getAllResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    const/4 v1, 0x0

    .line 118
    .local v1, "resultJson":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->getCurrentSyncTag()Ljava/util/ArrayList;

    move-result-object v3

    .line 119
    .local v3, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 120
    invoke-direct {p0, v3}, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->callAPI(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v1

    .line 123
    invoke-static {v1, v8, v8}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v0

    .line 125
    sget-object v6, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v0, v6, :cond_1

    .line 134
    :cond_0
    sget-object v6, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v0, v6, :cond_2

    .line 135
    const-string v6, "FetchSyncExtraInfoTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sync from server error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_1
    const-string v6, "FetchSyncExtraInfoTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 127
    :cond_1
    sget-object v6, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v0, v6, :cond_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/FetchSyncExtraInfoTask;->handleResult(Lorg/json/JSONObject;)V

    goto :goto_1
.end method
