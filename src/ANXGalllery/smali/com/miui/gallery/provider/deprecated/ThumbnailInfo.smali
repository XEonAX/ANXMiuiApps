.class public Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
.super Ljava/lang/Object;
.source "ThumbnailInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;
    }
.end annotation


# instance fields
.field private mBgImageId:Ljava/lang/String;

.field private mBgImageLocalId:J

.field private mBgUrl:Ljava/lang/String;

.field private mCoverImageId:Ljava/lang/String;

.field private mCoverUrl:Ljava/lang/String;

.field private mFaceId:Ljava/lang/String;

.field private mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

.field private mFaceRegion:Landroid/graphics/RectF;

.field private mFaceUrl:Ljava/lang/String;

.field private final mGroupLocalId:J

.field private final mIsSharerAlbum:Z

.field private mLastTimeRequest:J


# direct methods
.method public constructor <init>(JZLjava/lang/String;)V
    .locals 3
    .param p1, "groupLocalId"    # J
    .param p3, "isSharerAlbum"    # Z
    .param p4, "thumbnailInfoStr"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    .line 190
    iput-wide p1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mGroupLocalId:J

    .line 191
    iput-boolean p3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    .line 193
    invoke-direct {p0, p4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->initBy(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static getFaceByFaceId(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 1
    .param p0, "faceId"    # Ljava/lang/String;
    .param p1, "faceRegions"    # [Landroid/graphics/RectF;

    .prologue
    .line 441
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/FaceManager;->queryCoverImageOfOneFace(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemCursor(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 626
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    .line 627
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 628
    invoke-static {p0, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p2, v4, v8

    const/4 v5, 0x0

    .line 627
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    .local v6, "c":Landroid/database/Cursor;
    return-object v6
.end method

.method private getThumbnailInfoFromServer()V
    .locals 18

    .prologue
    .line 489
    const/4 v9, 0x0

    .line 491
    .local v9, "albumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mGroupLocalId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 492
    .local v15, "groupLocalIdStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v4, :cond_2

    .line 494
    invoke-static {v15}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbumByLocalId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v14

    .line 495
    .local v14, "groupItem":Lcom/miui/gallery/data/DBShareAlbum;
    if-nez v14, :cond_1

    const/4 v9, 0x0

    .line 503
    .end local v14    # "groupItem":Lcom/miui/gallery/data/DBShareAlbum;
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 559
    :cond_0
    :goto_1
    return-void

    .line 495
    .restart local v14    # "groupItem":Lcom/miui/gallery/data/DBShareAlbum;
    :cond_1
    invoke-virtual {v14}, Lcom/miui/gallery/data/DBShareAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 497
    .end local v14    # "groupItem":Lcom/miui/gallery/data/DBShareAlbum;
    :cond_2
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    .line 499
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "_id"

    .line 497
    invoke-static {v4, v5, v6, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v14

    .line 501
    .local v14, "groupItem":Lcom/miui/gallery/data/DBImage;
    if-nez v14, :cond_3

    const/4 v9, 0x0

    :goto_2
    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 507
    .end local v14    # "groupItem":Lcom/miui/gallery/data/DBImage;
    :cond_4
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-nez v4, :cond_5

    .line 508
    const-string v4, "ThumbnailInfo"

    const-string v5, "cta not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 512
    :cond_5
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v8

    .line 513
    .local v8, "accountInfo":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-nez v8, :cond_6

    .line 514
    const-string v4, "ThumbnailInfo"

    const-string v5, "accountInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 517
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    .line 518
    invoke-static {v4}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider;->getUrlProvider(Z)Lcom/miui/gallery/cloud/CloudGroupUrlProvider;

    move-result-object v17

    .line 520
    .local v17, "urlProvider":Lcom/miui/gallery/cloud/CloudGroupUrlProvider;
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v4

    .line 519
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v9}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider;->getThumbnailInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "sharedAlbumId"

    invoke-direct {v4, v5, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v4, v8, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    iget-object v5, v8, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 525
    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v13

    .line 528
    .local v13, "getResult":Lorg/json/JSONObject;
    const-string v4, "ThumbnailInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get thumbnail info from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {v13}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v12

    .line 530
    .local v12, "err":I
    if-nez v12, :cond_0

    .line 532
    const-string v4, "data"

    .line 533
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 534
    .local v10, "data":Lorg/json/JSONObject;
    new-instance v16, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mGroupLocalId:J

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    .line 535
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    .line 536
    .local v16, "thumbnailInfo":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 537
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    .line 540
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 541
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 542
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 545
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 546
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    .line 547
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 550
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mLastTimeRequest:J

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->saveToDB()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 555
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v10    # "data":Lorg/json/JSONObject;
    .end local v12    # "err":I
    .end local v13    # "getResult":Lorg/json/JSONObject;
    .end local v16    # "thumbnailInfo":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    :catch_0
    move-exception v11

    .line 556
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private initBy(Ljava/lang/String;)V
    .locals 10
    .param p1, "thumbnailInfoStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "thumbnailInfoJSON":Lorg/json/JSONObject;
    const-string v6, "coverImageId"

    .line 206
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    .line 207
    const-string v6, "backgroundImageId"

    .line 208
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 209
    const-string v6, "backgroundImageLocalId"

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    .line 211
    const-string v6, "faceId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    .line 212
    const-string v6, "coverUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    .line 213
    const-string v6, "faceUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 214
    const-string v6, "backgroundUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    .line 216
    const-string v6, "faceInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "faceInfoStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 218
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "faceInfoObject":Lorg/json/JSONObject;
    const-string v6, "faceExif"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 220
    .local v1, "exifInfoObject":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 222
    .local v4, "orientation":I
    :goto_1
    const-string v6, "faceOrientation"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .end local v1    # "exifInfoObject":Lorg/json/JSONObject;
    .end local v2    # "faceInfoObject":Lorg/json/JSONObject;
    .end local v4    # "orientation":I
    :cond_1
    invoke-static {v3}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->from(Ljava/lang/String;)Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 228
    const-string v6, "lastTimeRequest"

    .line 229
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mLastTimeRequest:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v3    # "faceInfoStr":Ljava/lang/String;
    .end local v5    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "ThumbnailInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to parse ThumbnailInfo from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 220
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "exifInfoObject":Lorg/json/JSONObject;
    .restart local v2    # "faceInfoObject":Lorg/json/JSONObject;
    .restart local v3    # "faceInfoStr":Ljava/lang/String;
    .restart local v5    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v6, "orientation"

    const/4 v7, -0x1

    .line 221
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method

.method private putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnailInfoJSON"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    :cond_0
    return-void
.end method

.method private saveToDB()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v14, 0x1

    .line 383
    iget-boolean v8, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v8, :cond_0

    const-string/jumbo v5, "thumbnailInfo"

    .line 385
    .local v5, "thumbnailInfoColumnName":Ljava/lang/String;
    :goto_0
    iget-boolean v8, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v8, :cond_1

    const-string v2, "_id"

    .line 387
    .local v2, "idColumnName":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->userChanged()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 388
    iget-boolean v8, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v8, :cond_2

    const-string/jumbo v3, "shareAlbum"

    .line 390
    .local v3, "table":Ljava/lang/String;
    :goto_2
    iget-boolean v8, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v8, :cond_3

    const/16 v4, 0x1d

    .line 393
    .local v4, "thumbnailInfoColumnIndex":I
    :goto_3
    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "editColumnElement":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v8, :cond_4

    const-string v1, "editedColumns"

    .line 398
    .local v1, "editedColumnName":Ljava/lang/String;
    :goto_4
    const-string/jumbo v8, "update %s set %s=%s, %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=%d"

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v12

    aput-object v5, v9, v14

    const/4 v10, 0x2

    .line 401
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    const/4 v10, 0x4

    aput-object v1, v9, v10

    const/4 v10, 0x5

    aput-object v0, v9, v10

    const/4 v10, 0x6

    aput-object v0, v9, v10

    const/4 v10, 0x7

    aput-object v0, v9, v10

    const/16 v10, 0x8

    aput-object v2, v9, v10

    const/16 v10, 0x9

    iget-wide v12, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mGroupLocalId:J

    .line 404
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 398
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/gallery/util/GalleryUtils;->safeExec(Ljava/lang/String;)Z

    .line 415
    .end local v0    # "editColumnElement":Ljava/lang/String;
    .end local v1    # "editedColumnName":Ljava/lang/String;
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "thumbnailInfoColumnIndex":I
    :goto_5
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    const/4 v10, 0x0

    .line 416
    invoke-virtual {v8, v9, v10, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 417
    return-void

    .line 383
    .end local v2    # "idColumnName":Ljava/lang/String;
    .end local v5    # "thumbnailInfoColumnName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "thumbnailInfo"

    goto :goto_0

    .line 385
    .restart local v5    # "thumbnailInfoColumnName":Ljava/lang/String;
    :cond_1
    const-string v2, "_id"

    goto :goto_1

    .line 388
    .restart local v2    # "idColumnName":Ljava/lang/String;
    :cond_2
    const-string v3, "cloud"

    goto :goto_2

    .line 390
    .restart local v3    # "table":Ljava/lang/String;
    :cond_3
    const/16 v4, 0x42

    goto :goto_3

    .line 394
    .restart local v0    # "editColumnElement":Ljava/lang/String;
    .restart local v4    # "thumbnailInfoColumnIndex":I
    :cond_4
    const-string v1, "editedColumns"

    goto :goto_4

    .line 406
    .end local v0    # "editColumnElement":Ljava/lang/String;
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "thumbnailInfoColumnIndex":I
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-boolean v8, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mIsSharerAlbum:Z

    if-eqz v8, :cond_6

    sget-object v6, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    .line 410
    .local v6, "uri":Landroid/net/Uri;
    :goto_6
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s=?"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v2, v10, v12

    .line 411
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/String;

    iget-wide v10, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mGroupLocalId:J

    .line 412
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 410
    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 408
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_6
    sget-object v6, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_6
.end method

.method private thumbnailInfoTimeout()Z
    .locals 6

    .prologue
    .line 484
    const-wide/32 v0, 0x5265c00

    .line 485
    .local v0, "REQUEST_INTERVAL":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mLastTimeRequest:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private userChanged()Z
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    if-ne p0, p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v1

    .line 425
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 426
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 429
    check-cast v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 430
    .local v0, "another":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 431
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    .line 433
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    .line 434
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 435
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    .line 436
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    iget-object v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 437
    invoke-static {v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->equals(Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getBgPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    .line 249
    .local v0, "bgImageLocalId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v4, "serverId"

    iget-object v5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getItemId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 253
    :cond_0
    const/4 v2, 0x0

    .line 255
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v4, "_id"

    .line 257
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getItemCursor(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {p0, v2}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getItemPath(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 262
    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1
    :goto_0
    return-object v3

    .line 262
    :cond_2
    if-eqz v2, :cond_3

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_3
    const-string v3, ""

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public getFaceInfo(Z)Ljava/lang/String;
    .locals 6
    .param p1, "isOtherShared"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    const/4 v0, 0x0

    .line 449
    .local v0, "face":Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    new-array v1, v4, [Landroid/graphics/RectF;

    .line 451
    .local v1, "faceRegions":[Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getFaceByFaceId(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v0

    .line 452
    aget-object v5, v1, v3

    iput-object v5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceRegion:Landroid/graphics/RectF;

    .line 456
    .end local v1    # "faceRegions":[Landroid/graphics/RectF;
    :cond_0
    if-nez v0, :cond_4

    .line 457
    iget-object v5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 458
    .local v2, "isEmptyFaceUrl":Z
    if-eqz p1, :cond_5

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->thumbnailInfoTimeout()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    .line 460
    .local v3, "needRefreshThumbnailInfo":Z
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 461
    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getThumbnailInfoFromServer()V

    .line 464
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 465
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 469
    .end local v0    # "face":Ljava/lang/String;
    .end local v2    # "isEmptyFaceUrl":Z
    .end local v3    # "needRefreshThumbnailInfo":Z
    :cond_4
    :goto_1
    return-object v0

    .line 458
    .restart local v0    # "face":Ljava/lang/String;
    .restart local v2    # "isEmptyFaceUrl":Z
    :cond_5
    if-eqz v2, :cond_2

    .line 459
    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->thumbnailInfoTimeout()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 467
    .restart local v3    # "needRefreshThumbnailInfo":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFaceRegion()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceRegion:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFaceRegionFromFaceInfo()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 480
    .local v0, "facePos":Landroid/graphics/RectF;
    :goto_0
    return-object v0

    .line 478
    .end local v0    # "facePos":Landroid/graphics/RectF;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 479
    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->getFacePosition()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 359
    const-string v3, "localFile"

    .line 360
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 359
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    .end local v1    # "localPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 365
    .restart local v1    # "localPath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "thumbnailFile"

    .line 366
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 365
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v0

    .line 368
    goto :goto_0

    .line 371
    :cond_1
    const-string v3, "microthumbfile"

    .line 372
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 371
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "microThumb":Ljava/lang/String;
    move-object v1, v2

    .line 373
    goto :goto_0
.end method

.method public setBgImage(J)Ljava/lang/String;
    .locals 19
    .param p1, "photoId"    # J

    .prologue
    .line 288
    const-wide/16 v4, 0x3e9

    .line 289
    .local v4, "hiddenGroupId":J
    const-wide/16 v14, -0x3e9

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "hiddenGroupLocalId":Ljava/lang/String;
    sget-object v14, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v15, "_id"

    .line 291
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 290
    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getItemCursor(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    .local v8, "mediaCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_3

    .line 293
    :cond_0
    if-eqz v8, :cond_1

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_1
    const-string v12, ""

    .line 355
    :cond_2
    :goto_0
    return-object v12

    .line 298
    :cond_3
    const/4 v12, 0x0

    .line 299
    .local v12, "photoPath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 302
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "localFlag"

    .line 304
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 303
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 305
    .local v9, "originFlag":I
    if-eqz v9, :cond_6

    const/4 v14, 0x5

    if-eq v9, v14, :cond_6

    const/4 v14, 0x6

    if-eq v9, v14, :cond_6

    .line 311
    const-string v14, "ThumbnailInfo"

    const-string v15, "no server id, just insert as manual create"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v14, "localFlag"

    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    :goto_1
    const-string v14, "microthumbfile"

    const-string v15, "microthumbfile"

    .line 319
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 318
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 317
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v14, "thumbnailFile"

    const-string/jumbo v15, "thumbnailFile"

    .line 321
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 320
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v14, "localFile"

    const-string v15, "localFile"

    .line 323
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 322
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v14, "localGroupId"

    invoke-virtual {v13, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v14, "localImageId"

    const-string v15, "_id"

    .line 326
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 325
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getItemPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 328
    if-eqz v8, :cond_4

    .line 329
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_4
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v14

    const-string v15, "cloud"

    invoke-virtual {v14, v15, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 334
    .local v6, "id":J
    move-wide v10, v6

    .line 335
    .local v10, "newBgLocalId":J
    const-string v14, "ThumbnailInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mediaId1 : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    .line 340
    invoke-static {v14, v15}, Lcom/miui/gallery/cloud/CloudUtils;->deleteItemInHiddenAlbum(J)Z

    move-result v2

    .line 341
    .local v2, "deleted":Z
    if-nez v2, :cond_5

    .line 342
    const-string v14, "ThumbnailInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed to delete old bg, old local id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v2    # "deleted":Z
    :cond_5
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    .line 349
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 350
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->saveToDB()V

    goto/16 :goto_0

    .line 314
    .end local v6    # "id":J
    .end local v10    # "newBgLocalId":J
    :cond_6
    const-string v14, "ThumbnailInfo"

    const-string v15, "server id found, insert as copy from cloud"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v14, "localFlag"

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1
.end method

.method public setFaceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "faceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iput-object p1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 581
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 583
    .local v1, "thumbnailInfoJSON":Lorg/json/JSONObject;
    const-string v3, "coverImageId"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v3, "backgroundImageId"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v3, "faceId"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v3, "coverUrl"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v3, "faceUrl"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v3, "backgroundUrl"

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v4, "faceInfo"

    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    if-nez v3, :cond_2

    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 594
    const-string v3, "backgroundImageLocalId"

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mBgImageLocalId:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 598
    :cond_0
    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mLastTimeRequest:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 599
    const-string v3, "lastTimeRequest"

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mLastTimeRequest:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 603
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .end local v1    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 590
    .restart local v1    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 591
    invoke-virtual {v3}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->toJSON()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 604
    .end local v1    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
