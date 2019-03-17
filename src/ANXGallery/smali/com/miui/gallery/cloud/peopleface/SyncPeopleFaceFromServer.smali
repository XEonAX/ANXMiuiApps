.class public Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
.super Ljava/lang/Object;
.source "SyncPeopleFaceFromServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$ErrorHandler;,
        Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mContext:Landroid/content/Context;

.field protected mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

.field private mRunnable:Ljava/lang/Runnable;

.field private mShouldFlatPeopleRelationshipInDB:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mShouldFlatPeopleRelationshipInDB:Z

    .line 159
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$3;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mRunnable:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    .line 66
    iput-object p3, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;I)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
    .param p1, "x1"    # I
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
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->getPeopleFaceList(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
    .param p1, "x1"    # Ljava/util/ArrayList;
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
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->getFaceConcreteInfoList(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
    .param p1, "x1"    # Ljava/lang/String;
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
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->getFaceConcreteInfoListOneBatch(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private flatDBAndCheckBabyAlbumAfterSync()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mShouldFlatPeopleRelationshipInDB:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mRunnable:Ljava/lang/Runnable;

    const/16 v1, 0xfa0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->runOnMainThreadPostDelay(Ljava/lang/Runnable;I)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mShouldFlatPeopleRelationshipInDB:Z

    .line 157
    :cond_0
    return-void
.end method

.method private final getFaceConcreteInfoList(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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
    .line 250
    .local p1, "newFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "syncface"

    const-string v10, "getFaceConcreteInfoList begin"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 252
    .local v3, "getAllResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 253
    .local v6, "len":I
    const/4 v7, 0x0

    .line 254
    .local v7, "result":Lorg/json/JSONObject;
    const/16 v0, 0x28

    .line 255
    .local v0, "batchNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 257
    .local v5, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 259
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, "face":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v5, v5, 0x1

    .line 263
    if-ge v5, v0, :cond_0

    add-int/lit8 v9, v6, -0x1

    if-ge v4, v9, :cond_0

    .line 264
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    if-eq v5, v0, :cond_1

    add-int/lit8 v9, v6, -0x1

    if-ne v4, v9, :cond_4

    .line 268
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "urlParam":Ljava/lang/String;
    new-instance v9, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;

    invoke-direct {v9, p0, v8}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$4;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/lang/String;)V

    invoke-direct {p0, v9, v3}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleRetryTask(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;)Lorg/json/JSONObject;

    move-result-object v7

    .line 278
    if-nez v7, :cond_3

    .line 285
    .end local v2    # "face":Ljava/lang/String;
    .end local v8    # "urlParam":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "syncface"

    const-string v10, "getFaceConcreteInfoList end"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-object v7

    .line 281
    .restart local v2    # "face":Ljava/lang/String;
    .restart local v8    # "urlParam":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 257
    .end local v8    # "urlParam":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private final getFaceConcreteInfoListOneBatch(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "param"    # Ljava/lang/String;
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
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 297
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/Log2File;->canLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    const-string/jumbo v3, "syncface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPeopleFaceInfo  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "newFaceInfos"

    invoke-direct {v0, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->getSyncFaceConcreteInfoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v7

    .line 307
    .local v7, "allJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "data"

    .line 308
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 309
    .local v8, "dataJson":Lorg/json/JSONObject;
    invoke-direct {p0, v8}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleFaceInfosDataJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v8    # "dataJson":Lorg/json/JSONObject;
    :goto_0
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/Log2File;->canLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    const-string/jumbo v3, "syncface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFaceConcreteInfoListOneBatch end,allJson="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    :cond_1
    return-object v7

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final getPeopleFaceList(I)Lorg/json/JSONObject;
    .locals 10
    .param p1, "limit"    # I
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
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/Log2File;->canLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    const-string/jumbo v2, "syncface"

    const-string v3, "getPeopleFaceList :"

    invoke-virtual {v0, v2, v3, v7}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "syncToken"

    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    .line 224
    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getFaceSyncToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    if-lez p1, :cond_1

    .line 226
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit"

    int-to-long v8, p1

    .line 227
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->getPeopleFaceSyncUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v6

    .line 236
    .local v6, "allJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/Log2File;->canLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    const-string/jumbo v2, "syncface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPeopleFaceList allJson="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :cond_2
    const-string/jumbo v0, "syncface"

    const-string v2, "getPeopleFaceList success\n"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v6
.end method

.method private final handleCustom(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 531
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const-string v1, "serverId"

    .line 532
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {v0, p1, v1}, Lcom/miui/gallery/cloud/CloudUtils;->updateToPeopleFaceDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private final handleDelete(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 541
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const-string v1, "serverId"

    .line 542
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {v0, p1, v1}, Lcom/miui/gallery/cloud/CloudUtils;->updateToPeopleFaceDBForDeleteItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private handleFaceInfosDataJson(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 362
    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string v8, "faceInfoRecords"

    .line 365
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 366
    .local v4, "faceInfoRecords":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_3

    .line 367
    :cond_2
    const-string/jumbo v8, "syncface"

    const-string v9, "response face info is empty"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_3
    const-string/jumbo v8, "syncface"

    const-string v9, "handleFaceInfosDataJson one batch:"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 372
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 373
    .local v7, "oneFace":Lorg/json/JSONObject;
    const-string v8, "faceId"

    .line 374
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "faceId":Ljava/lang/String;
    const-string v8, "faceInfo"

    .line 376
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 377
    .local v3, "faceInfo":Lorg/json/JSONObject;
    const-string v8, "imageIds"

    .line 378
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 379
    .local v6, "imageIds":Lorg/json/JSONArray;
    const-string v8, "faceCoverScore"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 380
    .local v0, "faceCoverScore":D
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->putFaceInfo2Db(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 381
    invoke-direct {p0, v6, v2}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->putFaceImageIdsInfo2Db(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private handlePeopleFaceDataJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 333
    if-nez p1, :cond_1

    move-object v2, v6

    .line 357
    :cond_0
    :goto_0
    return-object v2

    .line 336
    :cond_1
    const/4 v2, 0x0

    .line 337
    .local v2, "idsNeedFetchFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "records"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v2, v6

    .line 338
    goto :goto_0

    .line 341
    :cond_2
    const-string v6, "newFaceInfos"

    .line 342
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 344
    .local v3, "newFaceInfos":Lorg/json/JSONObject;
    const-string v6, "records"

    .line 345
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 346
    .local v5, "records":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 347
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 348
    .local v4, "record":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 350
    if-nez v2, :cond_3

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "idsNeedFetchFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .restart local v2    # "idsNeedFetchFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_4
    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleItem(Lorg/json/JSONObject;)Z

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleRetryTask(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "task"    # Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;
    .param p2, "getAllResult"    # Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "retryTimes":I
    const/4 v0, 0x0

    .line 181
    .local v0, "resultJson":Lorg/json/JSONObject;
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 182
    invoke-interface {p1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;->run()Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-static {v0, v2}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCodeForFaceRequest(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object p2

    .line 186
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ResetFaceSyncTag:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne p2, v2, :cond_1

    .line 196
    :cond_0
    :goto_1
    return-object v0

    .line 188
    :cond_1
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne p2, v2, :cond_2

    .line 189
    const/4 v0, 0x0

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, 0x0

    .line 193
    goto :goto_1
.end method

.method private putFaceImageIdsInfo2Db(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 8
    .param p1, "imageIdsArray"    # Lorg/json/JSONArray;
    .param p2, "faceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Long;

    .line 425
    .local v2, "imageIds":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 426
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 429
    .local v1, "id":Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "faceId"

    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v6, "imageServerId"

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeInsertFace2Image(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 434
    .end local v1    # "id":Ljava/lang/Long;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private putFaceInfo2Db(Lorg/json/JSONObject;Ljava/lang/String;D)V
    .locals 27
    .param p1, "faceInfo"    # Lorg/json/JSONObject;
    .param p2, "faceId"    # Ljava/lang/String;
    .param p3, "faceCoverScore"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 389
    const-string v22, "faceXScale"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 390
    .local v16, "faceXScale":D
    const-string v22, "faceYScale"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 391
    .local v18, "faceYScale":D
    const-string v22, "faceWScale"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 392
    .local v14, "faceWScale":D
    const-string v22, "faceHScale"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 393
    .local v12, "faceHScale":D
    const-string v22, "eyeLeftXScale"

    .line 394
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 395
    .local v4, "eyeLeftXScale":D
    const-string v22, "eyeLeftYScale"

    .line 396
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 397
    .local v6, "eyeLeftYScale":D
    const-string v22, "eyeRightXScale"

    .line 398
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 399
    .local v8, "eyeRightXScale":D
    const-string v22, "eyeRightYScale"

    .line 400
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 402
    .local v10, "eyeRightYScale":D
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v3, "values":Landroid/content/ContentValues;
    const-string v22, "faceXScale"

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 404
    const-string v22, "faceYScale"

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 405
    const-string v22, "faceWScale"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 406
    const-string v22, "faceHScale"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 407
    const-string v22, "leftEyeXScale"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 408
    const-string v22, "leftEyeYScale"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 409
    const-string v22, "RightEyeXScale"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 410
    const-string v22, "RightEyeYScale"

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 411
    const-string v22, "faceCoverScore"

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 413
    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "(%s = \"%s\")"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "serverId"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object p2, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "EQUAL_SERVER_ID":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v3, v2, v0, v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)J

    move-result-wide v20

    .line 420
    .local v20, "rowAffect":J
    return-void
.end method

.method private setShouldFlatPeopleRelationshipInDB(Landroid/content/ContentValues;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "oldCloud"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 498
    iget-boolean v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mShouldFlatPeopleRelationshipInDB:Z

    if-nez v1, :cond_1

    .line 499
    const-string v0, ""

    .line 500
    .local v0, "newGroupId":Ljava/lang/String;
    const-string v1, "groupId"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    const-string v1, "groupId"

    .line 502
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    :cond_0
    iget-object v1, p2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mShouldFlatPeopleRelationshipInDB:Z

    .line 511
    .end local v0    # "newGroupId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private shouldContinue(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    const-string v0, "hasMore"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateSyncInfo(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    const-string/jumbo v1, "watermark"

    .line 326
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 325
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncWatermark(Landroid/accounts/Account;J)V

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    const-string/jumbo v1, "syncToken"

    .line 328
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncToken(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getPeopleFaceSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getPeopleFaceSyncUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncFaceConcreteInfoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getFaceInfoSyncUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncItemLimit()I
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0x64

    return v0
.end method

.method protected final handleItem(Lorg/json/JSONObject;)Z
    .locals 12
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 441
    if-nez p1, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v7

    .line 444
    :cond_1
    const-string/jumbo v9, "type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "type":Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "serverId":Ljava/lang/String;
    const-string/jumbo v9, "status"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "status":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getItem(Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v0

    .line 449
    .local v0, "cloud":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    invoke-static {p1}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->getContentValuesForPeopleFace(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v6

    .line 451
    .local v6, "values":Landroid/content/ContentValues;
    if-nez v0, :cond_4

    .line 459
    const-string v9, "PEOPLE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 462
    invoke-static {p1}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->getPeopleName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "fileName":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v2

    .line 465
    .local v2, "oldCloud":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    if-eqz v2, :cond_2

    .line 466
    invoke-direct {p0, v6, v2}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->setShouldFlatPeopleRelationshipInDB(Landroid/content/ContentValues;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 468
    sget-object v8, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    iget-object v9, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v8, v6, v9}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p0, v6}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleNewPeopleFace(Landroid/content/ContentValues;)V

    .line 473
    iput-boolean v8, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mShouldFlatPeopleRelationshipInDB:Z

    goto :goto_0

    .line 478
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "oldCloud":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleNewPeopleFace(Landroid/content/ContentValues;)V

    move v7, v8

    .line 479
    goto :goto_0

    .line 482
    :cond_4
    iget-wide v8, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverTag:J

    const-string v10, "eTag"

    invoke-static {p1, v10}, Lcom/miui/gallery/cloud/CloudUtils;->getLongAttributeFromJson(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 487
    const-string v8, "normal"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 488
    invoke-direct {p0, v6, v0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->setShouldFlatPeopleRelationshipInDB(Landroid/content/ContentValues;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 489
    invoke-direct {p0, v6}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleCustom(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 490
    :cond_5
    const-string v8, "deleted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 491
    invoke-direct {p0, v6}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleDelete(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method protected handleNewPeopleFace(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 514
    const-string v1, "localFlag"

    const/4 v2, 0x0

    .line 515
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 514
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeInsertFace(Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    .line 524
    .local v0, "uri":Landroid/net/Uri;
    return-void
.end method

.method public final sync()V
    .locals 12
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
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 83
    .local v6, "startTime":J
    :cond_0
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const/4 v4, 0x0

    .line 88
    .local v4, "resultJson":Lorg/json/JSONObject;
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 90
    .local v1, "getAllResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    new-instance v8, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$1;

    invoke-direct {v8, p0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$1;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;)V

    invoke-direct {p0, v8, v1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleRetryTask(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;)Lorg/json/JSONObject;

    move-result-object v4

    .line 101
    iget-object v8, p0, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->mAccount:Landroid/accounts/Account;

    invoke-static {v4, v8}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$ErrorHandler;->simpleCheckWhetherNeedCleanTables(Lorg/json/JSONObject;Landroid/accounts/Account;)Z

    move-result v2

    .line 103
    .local v2, "needCleanData":Z
    if-nez v2, :cond_0

    .line 107
    if-eqz v4, :cond_3

    .line 108
    const-string v8, "data"

    .line 109
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    .local v0, "dataJson":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handlePeopleFaceDataJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 111
    .local v3, "newFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 112
    new-instance v8, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;

    invoke-direct {v8, p0, v3}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$2;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;Ljava/util/ArrayList;)V

    invoke-direct {p0, v8, v1}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->handleRetryTask(Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$GetInfoFromNetTask;Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    .local v5, "resultJson1":Lorg/json/JSONObject;
    if-nez v5, :cond_4

    .line 141
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v3    # "newFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "resultJson1":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->flatDBAndCheckBabyAlbumAfterSync()V

    .line 142
    const-string/jumbo v8, "syncface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sync people face from server finish, cost time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 142
    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFirstSyncCompleted()Z

    move-result v8

    if-nez v8, :cond_1

    .line 147
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->setFirstSyncCompleted()V

    goto :goto_0

    .line 132
    .restart local v0    # "dataJson":Lorg/json/JSONObject;
    .restart local v3    # "newFaceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->updateSyncInfo(Lorg/json/JSONObject;)V

    .line 133
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 134
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;->shouldContinue(Lorg/json/JSONObject;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1
.end method
