.class public Lcom/miui/gallery/util/face/PeopleCursorHelper;
.super Ljava/lang/Object;
.source "PeopleCursorHelper.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "peopleName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "faceXScale"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "faceYScale"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "faceWScale"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "faceHScale"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "relationType"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "relationText"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "visibilityType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "faceCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static add2MatrixCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 3
    .param p0, "mc"    # Landroid/database/MatrixCursor;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 138
    sget-object v2, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 139
    .local v1, "objs":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 140
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public static getCoverId(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCoverSize(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 134
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFaceCount(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 130
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0xa

    const/16 v3, 0x9

    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 60
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 61
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0xb

    .line 62
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 63
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0xc

    .line 64
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float/2addr v4, v5

    const/16 v5, 0x8

    .line 65
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    goto :goto_0
.end method

.method public static getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string v0, ""

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPeopleServerId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 102
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelationText(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelationType(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 110
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getThumbnailDownloadType(Landroid/database/Cursor;)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 85
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 86
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0
.end method

.method public static getThumbnailDownloadUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getCoverId(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 69
    const/4 v1, 0x6

    .line 70
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "thumbnail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/4 v1, 0x5

    .line 76
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2
    return-object v0
.end method

.method public static getVisibilityType(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 118
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static toPeople(Landroid/database/Cursor;)Lcom/miui/gallery/people/model/People;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 146
    new-instance v0, Lcom/miui/gallery/people/model/People;

    invoke-direct {v0}, Lcom/miui/gallery/people/model/People;-><init>()V

    .line 147
    .local v0, "people":Lcom/miui/gallery/people/model/People;
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/people/model/People;->setId(J)V

    .line 148
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleServerId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setServerId(Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setName(Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getCoverId(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/people/model/People;->setCoverImageId(J)V

    .line 151
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setCoverPath(Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailDownloadType(Landroid/database/Cursor;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setCoverType(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 153
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationType(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setRelationType(I)V

    .line 154
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setRelationText(Ljava/lang/String;)V

    .line 155
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setCoverFaceRect(Landroid/graphics/RectF;)V

    .line 156
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getVisibilityType(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setVisibilityType(I)V

    .line 157
    invoke-static {p0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getFaceCount(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/model/People;->setFaceCount(I)V

    .line 158
    return-object v0
.end method
