.class Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;
.super Ljava/lang/Object;
.source "ThumbnailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceInfo"
.end annotation


# instance fields
.field private final eyeLeftXScale:D

.field private final eyeLeftYScale:D

.field private final eyeRightXScale:D

.field private final eyeRightYScale:D

.field private final faceHScale:D

.field private final faceRegionOrientation:I

.field private final faceWScale:D

.field private final faceXScale:D

.field private final faceYScale:D


# direct methods
.method private constructor <init>(DDDDDDDDI)V
    .locals 3
    .param p1, "eyeLeftXScale"    # D
    .param p3, "eyeLeftYScale"    # D
    .param p5, "eyeRightXScale"    # D
    .param p7, "eyeRightYScale"    # D
    .param p9, "faceXScale"    # D
    .param p11, "faceYScale"    # D
    .param p13, "faceWScale"    # D
    .param p15, "faceHScale"    # D
    .param p17, "faceRegionOrientation"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-wide p1, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftXScale:D

    .line 103
    iput-wide p3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftYScale:D

    .line 104
    iput-wide p5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightXScale:D

    .line 105
    iput-wide p7, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightYScale:D

    .line 107
    iput-wide p9, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceXScale:D

    .line 108
    iput-wide p11, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceYScale:D

    .line 109
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceWScale:D

    .line 110
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceHScale:D

    .line 111
    move/from16 v0, p17

    iput v0, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceRegionOrientation:I

    .line 112
    return-void
.end method

.method static equals(Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;)Z
    .locals 1
    .param p0, "lhs"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;
    .param p1, "rhs"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .prologue
    .line 162
    if-nez p0, :cond_1

    .line 163
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static from(Ljava/lang/String;)Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;
    .locals 21
    .param p0, "faceInfoStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const/4 v3, 0x0

    .line 184
    :goto_0
    return-object v3

    .line 174
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "faceInfoJSON":Lorg/json/JSONObject;
    new-instance v3, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    const-string v4, "eyeLeftXScale"

    .line 176
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "eyeLeftYScale"

    .line 177
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "eyeRightXScale"

    .line 178
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "eyeRightYScale"

    .line 179
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v12, "faceXScale"

    .line 180
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "faceYScale"

    .line 181
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-string v16, "faceWScale"

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v18, "faceHScale"

    .line 183
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    const-string v20, "faceOrientation"

    .line 184
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-direct/range {v3 .. v20}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;-><init>(DDDDDDDDI)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 144
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 147
    check-cast v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;

    .line 148
    .local v0, "another":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;
    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftXScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftXScale:D

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftYScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftYScale:D

    .line 149
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightXScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightXScale:D

    .line 150
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightYScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightYScale:D

    .line 152
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceXScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceXScale:D

    .line 154
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceYScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceYScale:D

    .line 155
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceWScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceWScale:D

    .line 156
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceHScale:D

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceHScale:D

    .line 157
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceRegionOrientation:I

    iget v4, v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceRegionOrientation:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method getFacePosition()Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 132
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceXScale:D

    double-to-float v1, v2

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceYScale:D

    double-to-float v2, v2

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceXScale:D

    iget-wide v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceWScale:D

    add-double/2addr v4, v6

    double-to-float v3, v4

    iget-wide v4, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceYScale:D

    iget-wide v6, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceHScale:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceRegionOrientation:I

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    return-object v0
.end method

.method toJSON()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v0, "faceInfoJSON":Lorg/json/JSONObject;
    const-string v1, "eyeLeftXScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftXScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v1, "eyeLeftYScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeLeftYScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v1, "eyeRightXScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightXScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 120
    const-string v1, "eyeRightYScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->eyeRightYScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 122
    const-string v1, "faceXScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceXScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 123
    const-string v1, "faceYScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceYScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 124
    const-string v1, "faceWScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceWScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 125
    const-string v1, "faceHScale"

    iget-wide v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceHScale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    const-string v1, "faceOrientation"

    iget v2, p0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo$FaceInfo;->faceRegionOrientation:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
