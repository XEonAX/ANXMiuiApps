.class public final Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharerInfo"
.end annotation


# instance fields
.field public final mAlbumNickName:Ljava/lang/String;

.field public final mFaceRelativePos:Landroid/graphics/RectF;

.field public final mOwnerRelationText:Ljava/lang/String;

.field public final mSharerRelationText:Ljava/lang/String;

.field public final mThumbnailUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "albumNickName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mAlbumNickName:Ljava/lang/String;

    .line 203
    const-string v6, "ownerRelationText"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mOwnerRelationText:Ljava/lang/String;

    .line 204
    const-string/jumbo v6, "sharerRelationText"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mSharerRelationText:Ljava/lang/String;

    .line 205
    const-string/jumbo v6, "thumbnail"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 206
    const-string/jumbo v6, "thumbnailFaceInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    .local v0, "faceInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 208
    const-string v6, "faceXScale"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    .line 209
    .local v4, "x":F
    const-string v6, "faceYScale"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    .line 210
    .local v5, "y":F
    const-string v6, "faceWScale"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v3, v6

    .line 211
    .local v3, "w":F
    const-string v6, "faceHScale"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v1, v6

    .line 212
    .local v1, "h":F
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v4, v3

    add-float v8, v5, v1

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mFaceRelativePos:Landroid/graphics/RectF;

    .line 217
    .end local v1    # "h":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mFaceRelativePos:Landroid/graphics/RectF;

    goto :goto_0
.end method
