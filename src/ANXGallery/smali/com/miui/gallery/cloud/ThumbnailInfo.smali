.class public Lcom/miui/gallery/cloud/ThumbnailInfo;
.super Ljava/lang/Object;
.source "ThumbnailInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;
    }
.end annotation


# instance fields
.field private mBgImageId:Ljava/lang/String;

.field private mBgImageLocalId:J

.field private mBgUrl:Ljava/lang/String;

.field private mCoverImageId:Ljava/lang/String;

.field private mCoverUrl:Ljava/lang/String;

.field private mFaceId:Ljava/lang/String;

.field private mFaceInfo:Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

.field private mFaceUrl:Ljava/lang/String;

.field private final mGroupLocalId:I

.field private final mIsSharerAlbum:Z

.field private mLastTimeRequest:J


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 2
    .param p1, "groupLocalId"    # I
    .param p2, "isSharerAlbum"    # Z
    .param p3, "thumbnailInfoStr"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    .line 183
    iput p1, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mGroupLocalId:I

    .line 184
    iput-boolean p2, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mIsSharerAlbum:Z

    .line 186
    invoke-direct {p0, p3}, Lcom/miui/gallery/cloud/ThumbnailInfo;->initBy(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private initBy(Ljava/lang/String;)V
    .locals 10
    .param p1, "thumbnailInfoStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    :goto_0
    return-void

    .line 195
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v5, "thumbnailInfoJSON":Lorg/json/JSONObject;
    const-string v6, "coverImageId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    .line 198
    const-string v6, "backgroundImageId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 199
    const-string v6, "backgroundImageLocalId"

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    .line 201
    const-string v6, "faceId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    .line 202
    const-string v6, "coverUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    .line 203
    const-string v6, "faceUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 204
    const-string v6, "backgroundUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    .line 206
    const-string v6, "faceInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "faceInfoStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 208
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "faceInfoObject":Lorg/json/JSONObject;
    const-string v6, "faceExif"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 210
    .local v1, "exifInfoObject":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 212
    .local v4, "orientation":I
    :goto_1
    const-string v6, "faceOrientation"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .end local v1    # "exifInfoObject":Lorg/json/JSONObject;
    .end local v2    # "faceInfoObject":Lorg/json/JSONObject;
    .end local v4    # "orientation":I
    :cond_1
    invoke-static {v3}, Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;->from(Ljava/lang/String;)Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

    .line 217
    const-string v6, "lastTimeRequest"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mLastTimeRequest:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v3    # "faceInfoStr":Ljava/lang/String;
    .end local v5    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 220
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

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "exifInfoObject":Lorg/json/JSONObject;
    .restart local v2    # "faceInfoObject":Lorg/json/JSONObject;
    .restart local v3    # "faceInfoStr":Ljava/lang/String;
    .restart local v5    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v6, "orientation"

    const/4 v7, -0x1

    .line 211
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
    .line 423
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    if-ne p0, p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/cloud/ThumbnailInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 285
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 288
    check-cast v0, Lcom/miui/gallery/cloud/ThumbnailInfo;

    .line 289
    .local v0, "another":Lcom/miui/gallery/cloud/ThumbnailInfo;
    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    .line 290
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    iget-wide v6, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    .line 292
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    .line 293
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    .line 294
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    .line 295
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

    iget-object v4, v0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

    .line 296
    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;->equals(Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method getBgImageLocalId()J
    .locals 2

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    return-wide v0
.end method

.method public getFaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 395
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 397
    .local v1, "thumbnailInfoJSON":Lorg/json/JSONObject;
    const-string v3, "coverImageId"

    iget-object v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverImageId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v3, "backgroundImageId"

    iget-object v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v3, "faceId"

    iget-object v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v3, "coverUrl"

    iget-object v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mCoverUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v3, "faceUrl"

    iget-object v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v3, "backgroundUrl"

    iget-object v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailInfo;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v4, "faceInfo"

    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

    if-nez v3, :cond_2

    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    iget-wide v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 406
    const-string v3, "backgroundImageLocalId"

    iget-wide v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mBgImageLocalId:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 409
    :cond_0
    iget-wide v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mLastTimeRequest:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 410
    const-string v3, "lastTimeRequest"

    iget-wide v4, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mLastTimeRequest:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 413
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .end local v1    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 403
    .restart local v1    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/cloud/ThumbnailInfo;->mFaceInfo:Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/ThumbnailInfo$FaceInfo;->toJSON()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 415
    .end local v1    # "thumbnailInfoJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
