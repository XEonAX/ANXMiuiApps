.class public Lcom/miui/gallery/provider/FaceManager;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;
    }
.end annotation


# static fields
.field private static final BASIC_PEOPLE_INFO_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_IMAGE_OF_FACE_PROJECTION:[Ljava/lang/String;

.field private static final FACE_COVER_ALIAS_DISPLAYABLE:Ljava/lang/String;

.field private static final GROUP_LOCAL_FLAG_SYNCED_CREATED_RENAME:Ljava/lang/String;

.field private static final ID_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final LEAST_FACE_COUNT_OF_DISPLAY_PEOPLE:I

.field private static final LOCAL_FILE_ALIAS:Ljava/lang/String;

.field private static final LOCAL_FLAG_SYNCED:Ljava/lang/String;

.field private static final MICRO_THUMBNAIL_ALIAS:Ljava/lang/String;

.field private static final Other_SHARED_GROUP_LOCAL_FLAG_SYNCED:Ljava/lang/String;

.field private static final PEOPLE_ALBUM_SERVER_ID_PROJECTION:[Ljava/lang/String;

.field public static final PEOPLE_RELATION_PROJECTION:[Ljava/lang/String;

.field public static final PEOPLE_USER_DEFINE_RELATION_SELECTION:Ljava/lang/String;

.field private static final PERSON_VISIBLE_CONDITION:Ljava/lang/String;

.field private static final PHOTO_LOCAL_FLAG_CREATE_MOVED_SYNCED:Ljava/lang/String;

.field private static final SQL_FACE_ALBUM_COVER:Ljava/lang/String;

.field private static final SQL_FACE_ALBUM_COVER_PROJECTION:[Ljava/lang/String;

.field private static final SQL_OLDEST_FACE_OF_ALBUM_PROJECTION:[Ljava/lang/String;

.field private static final SQL_ONE_PERSON_ALBUM_ITEM:Ljava/lang/String;

.field private static final SQL_ONE_PERSON_ALBUM_NORMAL:Ljava/lang/String;

.field private static final SQL_ONE_PERSON_ALBUM_RECOMMEND:Ljava/lang/String;

.field private static final SQL_PERSONS_ALBUM:Ljava/lang/String;

.field private static final SQL_PERSONS_ALBUM_ALL_BASIC:Ljava/lang/String;

.field private static final THUMBNAIL_ALIAS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 46
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s NOT NULL and %s != \'\')"

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "thumbnailFile"

    aput-object v5, v4, v7

    const-string/jumbo v5, "thumbnailFile"

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->THUMBNAIL_ALIAS:Ljava/lang/String;

    .line 47
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s NOT NULL and %s != \'\')"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "microthumbfile"

    aput-object v5, v4, v7

    const-string v5, "microthumbfile"

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->MICRO_THUMBNAIL_ALIAS:Ljava/lang/String;

    .line 48
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s NOT NULL and %s != \'\')"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "localFile"

    aput-object v5, v4, v7

    const-string v5, "localFile"

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->LOCAL_FILE_ALIAS:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CASE WHEN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/gallery/provider/FaceManager;->THUMBNAIL_ALIAS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " THEN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "thumbnailFile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "WHEN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/gallery/provider/FaceManager;->LOCAL_FILE_ALIAS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " THEN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "localFile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ELSE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "microthumbfile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "END "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->FACE_COVER_ALIAS_DISPLAYABLE:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo_id AS cover_id, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/gallery/provider/FaceManager;->FACE_COVER_ALIAS_DISPLAYABLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cover_path"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "sha1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cover_sha1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "faceXScale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "||\' \'||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "faceYScale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "||\' \'||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "faceWScale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "||\' \'||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "faceHScale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "||\' \'||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "exifOrientation"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "faceRect"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cover_sync_state"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "size"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cover_size"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_FACE_ALBUM_COVER:Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/miui/gallery/provider/FaceManager;->LEAST_FACE_COUNT_OF_DISPLAY_PEOPLE:I

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(visibilityType = 1 OR visibilityType = 4 OR faceCount >= %d AND (visibilityType IS NULL OR visibilityType = 0))"

    new-array v4, v1, [Ljava/lang/Object;

    sget v5, Lcom/miui/gallery/provider/FaceManager;->LEAST_FACE_COUNT_OF_DISPLAY_PEOPLE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->PERSON_VISIBLE_CONDITION:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SELECT _id, peopleName, se AS serverId,CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN cId ELSE covercId END AS photo_id, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN sha1 ELSE coversha1 END AS sha1, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN cm ELSE covercm END AS microthumbfile, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN ch ELSE coverch END AS thumbnailFile, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN cl ELSE covercl END AS localFile, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN co ELSE coverco END AS exifOrientation, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fx ELSE coverfx END AS faceXScale, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fy ELSE coverfy END AS faceYScale, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fw ELSE coverfw END AS faceWScale, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fh ELSE coverfh END AS faceHScale, relationType, relationText, visibilityType, sum(faceCount) as faceCount,CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN size ELSE coversize END AS size,  COUNT(*) FROM (   SELECT _id, peopleName, serverId as se, cId, sha1, cm, ch, cl, co, fx, fy, fw, fh, size, peopleFace.relationType, peopleFace.relationText, peopleFace.visibilityType, maxFaceScore, faceCount,(CASE WHEN NOT(peopleName IS NULL) THEN 1 ELSE 2 END) AS order_by_notnull_null FROM peopleFace  JOIN  (SELECT pg, COUNT(*) as faceCount, cId, sha1, cd, cm, ch, cl, co, fx, fy, fw, fh, size, MAX(faceCoverScore) as maxFaceScore FROM           (SELECT serverId, faceXScale AS fx, faceYScale AS fy, faceWScale AS fw, faceHScale AS fh, size, groupId AS pg, photo_id AS cId, sha1, mixedDateTime AS cd, microthumbfile AS cm, thumbnailFile AS ch, localFile AS cl, exifOrientation as co, faceCoverScore            FROM extended_faceImage           WHERE localFlag =0 AND serverStatus=\'normal\'            GROUP BY serverId            ORDER BY mixedDateTime DESC  ) temp1  GROUP BY pg  ) temp2  ON type = \'PEOPLE\' AND %s AND se = pg  UNION ALL SELECT _id, peopleName, serverId as se, cId asphoto_id, sha1, cm, ch, cl, co, fx, fy, fw, fh, size, peopleFace.relationType, peopleFace.relationText, peopleFace.visibilityType, maxFaceScore, faceCount,(CASE WHEN NOT(peopleName IS NULL) THEN 1 ELSE 2 END) AS order_by_notnull_null FROM  peopleFace  JOIN  (SELECT lpg, COUNT(*) as faceCount, cId, sha1, cd, cm, ch, cl, co, fx, fy, fw, fh, size, MAX(faceCoverScore) as maxFaceScore FROM           (SELECT serverId, faceXScale AS fx, faceYScale AS fy, faceWScale AS fw, faceHScale AS fh, localGroupId AS lpg, photo_id AS cId, sha1, mixedDateTime AS cd, microthumbfile AS cm, thumbnailFile AS ch, size, localFile AS cl, exifOrientation as co, faceCoverScore            FROM extended_faceImage           WHERE localFlag =5            GROUP BY serverId            ORDER BY mixedDateTime DESC )  temp1  GROUP BY lpg  ) temp2  ON type = \'PEOPLE\' AND %s AND _id = lpg )  LEFT JOIN (SELECT coverse, coverfx, coverfy, coverfw, coverfh, coverpg, covercId, coversha1, max(covercd), covercm, coverch, covercl, coversize, coverco FROM           (SELECT serverId AS coverse, faceXScale AS coverfx, faceYScale AS coverfy, faceWScale AS coverfw, faceHScale AS coverfh, groupId AS coverpg, photo_id AS covercId, sha1 AS coversha1, mixedDateTime AS covercd, microthumbfile AS covercm, thumbnailFile AS coverch, localFile AS covercl, size AS coversize, exifOrientation as coverco           FROM extended_faceImage           WHERE serverid in ( %s ) AND (localFlag =0 AND serverStatus=\'normal\')            GROUP BY serverId ) cover1 GROUP BY coverpg) cover2 ON se = cover2.coverpg GROUP BY _id ORDER BY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationOrderSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getUserDefineRelationOrderSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "order_by_notnull_null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "faceCount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM_ALL_BASIC:Ljava/lang/String;

    .line 156
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "(localFlag =0 AND serverStatus=\'normal\' AND groupId = \'%s\') OR (localFlag =5 AND localGroupId = %s)"

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_ONE_PERSON_ALBUM_NORMAL:Ljava/lang/String;

    .line 162
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "(localFlag =0 AND serverStatus=\'normal\' AND serverId IN (%s))"

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_ONE_PERSON_ALBUM_RECOMMEND:Ljava/lang/String;

    .line 168
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "serverId = \'%s\'"

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_ONE_PERSON_ALBUM_ITEM:Ljava/lang/String;

    .line 174
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "(localFlag =0 AND serverStatus=\'normal\' AND groupId in (%s)) OR (localFlag =5 AND localGroupId in (%s))"

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM:Ljava/lang/String;

    .line 177
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v0, v7

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->CLOUD_IMAGE_OF_FACE_PROJECTION:[Ljava/lang/String;

    .line 179
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v7

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->ID_COUNT_PROJECTION:[Ljava/lang/String;

    .line 181
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "serverId"

    aput-object v3, v0, v7

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->PEOPLE_ALBUM_SERVER_ID_PROJECTION:[Ljava/lang/String;

    .line 185
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CASE WHEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_THUMBNAIL_VALID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " THEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnailFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_ORIGIN_FILE_VALID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " THEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "localFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ELSE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "microthumbfile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cover_path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exifOrientation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "faceXScale"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "faceYScale"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "faceWScale"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "faceHScale"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "faceCoverScore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_FACE_ALBUM_COVER_PROJECTION:[Ljava/lang/String;

    .line 199
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, " min( CASE WHEN dateTaken NOT NULL THEN dateTaken ELSE mixedDateTime END) AS oldest_image_time"

    aput-object v3, v0, v7

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->SQL_OLDEST_FACE_OF_ALBUM_PROJECTION:[Ljava/lang/String;

    .line 522
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "relationType"

    aput-object v3, v0, v7

    const-string v3, "relationText"

    aput-object v3, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->PEOPLE_RELATION_PROJECTION:[Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relationType = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 528
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getUserDefineRelationIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "type = \'PEOPLE\' AND ( visibilityType = 1 OR visibilityType =4) AND localFlag NOT IN ( 13, 2)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(groupid IS NULL OR groupid = \'\' OR groupid = serverId)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " GROUP BY relationtext"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->PEOPLE_USER_DEFINE_RELATION_SELECTION:Ljava/lang/String;

    .line 600
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s = %d AND %s = \"%s\")"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "localFlag"

    aput-object v5, v4, v7

    .line 602
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "serverStatus"

    aput-object v5, v4, v2

    const-string v5, "custom"

    aput-object v5, v4, v8

    .line 600
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->LOCAL_FLAG_SYNCED:Ljava/lang/String;

    .line 605
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s OR %s = %d OR %s = %d)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/miui/gallery/provider/FaceManager;->LOCAL_FLAG_SYNCED:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "localFlag"

    aput-object v5, v4, v1

    const/16 v5, 0x8

    .line 608
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "localFlag"

    aput-object v5, v4, v8

    const/16 v5, 0xa

    .line 610
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 605
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->GROUP_LOCAL_FLAG_SYNCED_CREATED_RENAME:Ljava/lang/String;

    .line 612
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s = \"%s\" AND NOT (%s IS NULL))"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "serverStatus"

    aput-object v5, v4, v7

    const-string v5, "custom"

    aput-object v5, v4, v1

    const-string v5, "serverId"

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->Other_SHARED_GROUP_LOCAL_FLAG_SYNCED:Ljava/lang/String;

    .line 618
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%s OR %s = %d OR %s = %d OR %s = %d OR %s = %d)"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/miui/gallery/provider/FaceManager;->LOCAL_FLAG_SYNCED:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "localFlag"

    aput-object v5, v4, v1

    const/16 v5, 0x8

    .line 622
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "localFlag"

    aput-object v5, v4, v8

    const/4 v5, 0x5

    .line 624
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x6

    .line 626
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x9

    .line 628
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 619
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->PHOTO_LOCAL_FLAG_CREATE_MOVED_SYNCED:Ljava/lang/String;

    .line 961
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v7

    const-string v3, "serverId"

    aput-object v3, v0, v1

    const-string v1, "peopleName"

    aput-object v1, v0, v2

    const-string v1, "relationType"

    aput-object v1, v0, v8

    sput-object v0, Lcom/miui/gallery/provider/FaceManager;->BASIC_PEOPLE_INFO_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 70
    goto/16 :goto_0
.end method

.method private static buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "tempResultSet"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_4

    :cond_0
    const-string v0, "*"

    .line 246
    .local v0, "projectionStr":Ljava/lang/String;
    :goto_0
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v2, " FROM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 253
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "selectionArgs":[Ljava/lang/String;
    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_1
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 260
    const-string v2, " order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_3
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 244
    .end local v0    # "projectionStr":Ljava/lang/String;
    .restart local p2    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    const-string v2, ","

    .line 245
    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildIgnorePersonsQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 296
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM_ALL_BASIC:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "visibilityType = 2 AND (groupId IS NULL OR groupId = \'\' OR groupId = serverId)"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "visibilityType = 2 AND (groupId IS NULL OR groupId = \'\' OR groupId = serverId)"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getCoverIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/provider/FaceManager;->formatSelectionIn(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildImageFaceQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "faceServerId"    # Ljava/lang/String;
    .param p2, "imageServerId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 281
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SELECT p.serverId, p.faceXScale, p.faceYScale, p.faceWScale, p.faceHScale,    c._id as photo_id, c.serverId as photo_server_id, c.microthumbfile, c.thumbnailFile, c.localFile, c.sha1   FROM peopleface p JOIN facetoimages f JOIN cloud c   WHERE p.serverId=\'%s\' AND photo_server_id=\'%s\'   AND p.type = \'FACE\' AND (p.localFlag =0 AND p.serverStatus=\'normal\') AND p.serverId = faceId  AND imageServerId = c.serverId    AND (c.localFlag <>2 AND c.serverStatus=\'custom\') "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v4, v4, v0}, Lcom/miui/gallery/provider/FaceManager;->buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildOnePersonItemQuery([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "faceServerId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 313
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->SQL_ONE_PERSON_ALBUM_ITEM:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 314
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {p0, v4, v4, v4, v0}, Lcom/miui/gallery/provider/FaceManager;->buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildOnePersonQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;
    .param p3, "serverIdOfPerson"    # Ljava/lang/String;
    .param p4, "localIdOfPeople"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v0, 0x0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->SQL_ONE_PERSON_ALBUM_NORMAL:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    .line 302
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {p0, p1, v0, p2, v1}, Lcom/miui/gallery/provider/FaceManager;->buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildPeopleCoverQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 273
    if-eqz p1, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "serverId=\'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "selection":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(visibilityType = 1 OR visibilityType = 4 OR faceCount >= %d AND (visibilityType IS NULL OR visibilityType = 0))"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "visibleCondition":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v3, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM_ALL_BASIC:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v1, v4, v6

    const/4 v5, 0x2

    .line 277
    invoke-static {}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getCoverIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/provider/FaceManager;->formatSelectionIn(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {p0, v0, v8, v8, v2}, Lcom/miui/gallery/provider/FaceManager;->buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 273
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "visibleCondition":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v7

    .line 274
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildPeopleTagQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "SELECT serverId, eTag FROM (SELECT serverId FROM peopleface WHERE type = \'PEOPLE\' AND ( visibilityType = 1 OR visibilityType =4 OR (visibilityType =2 AND groupId is null)) AND localFlag NOT IN ( 2)) serverTable JOIN (SELECT groupId AS peopleId, MAX(eTag) as eTag FROM peopleface GROUP BY groupId) tagTable  ON serverTable.serverId = tagTable.peopleId"

    return-object v0
.end method

.method public static buildPersonsItemQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;
    .param p3, "serverIds"    # Ljava/lang/String;
    .param p4, "localIds"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v0, 0x0

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    .line 320
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {p0, p1, v0, p2, v1}, Lcom/miui/gallery/provider/FaceManager;->buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildPersonsQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 285
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM_ALL_BASIC:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/miui/gallery/provider/FaceManager;->PERSON_VISIBLE_CONDITION:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/miui/gallery/provider/FaceManager;->PERSON_VISIBLE_CONDITION:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getCoverIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/provider/FaceManager;->formatSelectionIn(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildRecommendFacesOfOnePersonQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "orderBy"    # Ljava/lang/String;
    .param p2, "inServerIds"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 307
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->SQL_ONE_PERSON_ALBUM_RECOMMEND:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 308
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {p0, v4, v4, p1, v0}, Lcom/miui/gallery/provider/FaceManager;->buildAlbumQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildTopFaceCoverQuery()Ljava/lang/String;
    .locals 6

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->SQL_FACE_ALBUM_COVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->SQL_PERSONS_ALBUM_ALL_BASIC:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/miui/gallery/provider/FaceManager;->PERSON_VISIBLE_CONDITION:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/miui/gallery/provider/FaceManager;->PERSON_VISIBLE_CONDITION:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 291
    invoke-static {}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getCoverIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/provider/FaceManager;->formatSelectionIn(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static changeCursorData2ContentValuesOfCloudTable(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "localGroupId"    # Ljava/lang/String;

    .prologue
    .line 1030
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "fileName"

    const-string v2, "fileName"

    .line 1033
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1032
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v1, "dateTaken"

    const-string v2, "dateTaken"

    .line 1036
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1035
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1034
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1037
    const-string v1, "dateModified"

    const-string v2, "dateModified"

    .line 1039
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1038
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1037
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1046
    const-string/jumbo v1, "size"

    const-string/jumbo v2, "size"

    .line 1047
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1046
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1048
    const-string v1, "mimeType"

    const-string v2, "mimeType"

    .line 1050
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1049
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1048
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    .line 1052
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1051
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v1, "sha1"

    const-string/jumbo v2, "sha1"

    .line 1054
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1053
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v1, "ubiSubImageCount"

    const-string/jumbo v2, "ubiSubImageCount"

    .line 1075
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1074
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1073
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    const-string/jumbo v1, "ubiSubIndex"

    const-string/jumbo v2, "ubiSubIndex"

    .line 1078
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1077
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1076
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    const-string/jumbo v1, "ubiFocusIndex"

    const-string/jumbo v2, "ubiFocusIndex"

    .line 1082
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1081
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1080
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    const-string v1, "localFlag"

    const/4 v2, 0x6

    .line 1091
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1090
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    const-string v1, "serverType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    const-string v1, "localGroupId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v1, "photo_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1100
    const-string v1, "localImageId"

    const-string v2, "photo_id"

    .line 1101
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_0
    const-string/jumbo v1, "thumbnailFile"

    .line 1109
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1108
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1110
    const-string/jumbo v1, "thumbnailFile"

    const-string/jumbo v2, "thumbnailFile"

    .line 1113
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1112
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_0
    const-string v1, "microthumbfile"

    .line 1117
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1116
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1118
    const-string v1, "microthumbfile"

    const-string v2, "microthumbfile"

    .line 1121
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1120
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1119
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_1
    return-object v0

    .line 1103
    :cond_2
    const-string v1, "localImageId"

    const-string v2, "_id"

    .line 1105
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1104
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static formatSelectionIn(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 1007
    const-string v0, "-1"

    invoke-static {p0, v0}, Lcom/miui/gallery/provider/FaceManager;->formatSelectionIn(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSelectionIn(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "invalidString"    # Ljava/lang/String;

    .prologue
    .line 1011
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1012
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1013
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1014
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1015
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1016
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1017
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1018
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 1019
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1014
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1023
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1025
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatSelectionIn([J)Ljava/lang/String;
    .locals 6
    .param p0, "ids"    # [J

    .prologue
    .line 995
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 996
    .local v2, "sb":Ljava/lang/StringBuffer;
    array-length v1, p0

    .line 997
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 998
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 999
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 1000
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 997
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getFacePositionRectOfCoverImage(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 464
    if-nez p0, :cond_0

    .line 465
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    .line 473
    :goto_0
    return-object v0

    .line 467
    :cond_0
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    const-string v1, "faceXScale"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    const-string v2, "faceYScale"

    .line 468
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const-string v3, "faceXScale"

    .line 469
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const-string v4, "faceWScale"

    .line 470
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v3, v4

    const-string v4, "faceYScale"

    .line 471
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const-string v5, "faceHScale"

    .line 472
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float/2addr v4, v5

    const-string v5, "exifOrientation"

    .line 473
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    goto :goto_0
.end method

.method public static getPeopleBasicInfoByIds([J)Ljava/util/ArrayList;
    .locals 10
    .param p0, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->BASIC_PEOPLE_INFO_PROJECTION:[Ljava/lang/String;

    .line 970
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 971
    invoke-static {p0}, Lcom/miui/gallery/provider/FaceManager;->formatSelectionIn([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 973
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "peopleFace"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 978
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 981
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    new-instance v0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 987
    if-eqz v8, :cond_0

    .line 988
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 991
    :cond_0
    :goto_1
    return-object v9

    .line 987
    :cond_1
    if-eqz v8, :cond_0

    .line 988
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 987
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 988
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPeopleLocalFlagByLocalID(Ljava/lang/String;)I
    .locals 7
    .param p0, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 882
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "localFlag"

    aput-object v3, v2, v5

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v5

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/provider/FaceManager$3;

    invoke-direct {v6}, Lcom/miui/gallery/provider/FaceManager$3;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPeopleLocalIdByServerId(Ljava/lang/String;)J
    .locals 7
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 857
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 858
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "serverId = ?"

    .line 859
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 862
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 864
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 868
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 874
    if-eqz v6, :cond_0

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_0
    :goto_0
    return-wide v0

    .line 874
    :cond_1
    if-eqz v6, :cond_2

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 874
    if-eqz v6, :cond_2

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 874
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final localCopyFaceImages2BabyAlbum(Landroid/content/ContentValues;Z)Z
    .locals 12
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "isOtherShared"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 756
    const-string v4, "exifGPSDateStamp"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "exifGpsDateStamp":Ljava/lang/String;
    const-string v4, "exifGPSTimeStamp"

    .line 758
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "exifGpsTimeStamp":Ljava/lang/String;
    const-string v4, "exifDateTime"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "exifDateTime":Ljava/lang/String;
    const-string v4, "dateTaken"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 761
    .local v8, "dateTaken":Ljava/lang/Long;
    const-string v4, "dateModified"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 763
    .local v0, "dateModified":Ljava/lang/Long;
    if-eqz v8, :cond_1

    .line 765
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 763
    :cond_0
    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/util/GalleryTimeUtils;->getTakenDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)J

    move-result-wide v10

    .line 767
    .local v10, "mixedDateTime":J
    const-string v4, "mixedDateTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 768
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz p1, :cond_2

    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    .line 769
    :goto_1
    invoke-virtual {v5, v4, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 770
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_3

    .line 771
    const/4 v4, 0x0

    .line 773
    :goto_2
    return v4

    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "mixedDateTime":J
    :cond_1
    move-wide v4, v6

    .line 765
    goto :goto_0

    .line 768
    .restart local v10    # "mixedDateTime":J
    :cond_2
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_1

    .line 773
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private static queryAStringColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "columnValue"    # Ljava/lang/String;
    .param p2, "projectColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "selection":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    aput-object p2, v2, v4

    .line 343
    .local v2, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 346
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "peopleFace"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 348
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 351
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 356
    if-eqz v8, :cond_0

    .line 357
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 356
    :cond_1
    if-eqz v8, :cond_2

    .line 357
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 360
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 356
    if-eqz v8, :cond_2

    .line 357
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 356
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 357
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static queryAllImagesOfOnePerson(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p0, "peopleServerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->CLOUD_IMAGE_OF_FACE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-string v7, "-1"

    aput-object v7, v4, v5

    move-object v5, v3

    .line 367
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryAllPeopleAlbumServerIds()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_URI:Landroid/net/Uri;

    .line 501
    .local v1, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v7, "serverIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 505
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->PEOPLE_ALBUM_SERVER_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "type = \'PEOPLE\' AND ( visibilityType = 1 OR visibilityType =4) AND localFlag NOT IN ( 13, 2)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 507
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 510
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 515
    if-eqz v6, :cond_0

    .line 516
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_0
    :goto_1
    return-object v7

    .line 515
    :cond_1
    if-eqz v6, :cond_0

    .line 516
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 515
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 516
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryAllUserDefineRelationsOfPeople(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_URI:Landroid/net/Uri;

    .line 535
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationOrderSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getUserDefineRelationOrderSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, "sortOrder":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->PEOPLE_RELATION_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/provider/FaceManager;->PEOPLE_USER_DEFINE_RELATION_SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Lcom/miui/gallery/provider/FaceManager$1;

    invoke-direct {v6}, Lcom/miui/gallery/provider/FaceManager$1;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 553
    .local v7, "relations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v7
.end method

.method public static queryBabyAlbumByPeopleId(Ljava/lang/String;)J
    .locals 10
    .param p0, "peopleServerId"    # Ljava/lang/String;

    .prologue
    .line 578
    const/4 v6, 0x0

    .line 579
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 580
    .local v8, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peopleId = ?  AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/FaceManager;->GROUP_LOCAL_FLAG_SYNCED_CREATED_RENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 585
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 588
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 593
    :cond_0
    if-eqz v6, :cond_1

    .line 594
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_1
    :goto_0
    return-wide v8

    .line 591
    :catch_0
    move-exception v0

    .line 593
    if-eqz v6, :cond_1

    .line 594
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 594
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryContactInfoOfOnePerson(J)Lcom/miui/gallery/model/PeopleContactInfo;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 324
    const-string v1, "_id"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "peopleContactJsonInfo"

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/provider/FaceManager;->queryAStringColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "contactInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 328
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo;->fromJson(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static queryCountOfPhotosOfOneRecommendAlbum(Ljava/lang/String;)I
    .locals 8
    .param p0, "inServerIds"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v6, 0x0

    .line 478
    .local v6, "count":I
    const/4 v7, 0x0

    .line 481
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->RECOMMEND_FACES_OF_ONE_PERSON_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->ID_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 483
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 487
    if-eqz v7, :cond_1

    .line 488
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 492
    .end local v6    # "count":I
    if-eqz v7, :cond_0

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_0
    :goto_0
    return v6

    .line 492
    .restart local v6    # "count":I
    :cond_1
    if-eqz v7, :cond_0

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 492
    if-eqz v7, :cond_0

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryCoverImageOfOneFace(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 8
    .param p0, "faceServerId"    # Ljava/lang/String;
    .param p1, "resultFaceRegion"    # [Landroid/graphics/RectF;

    .prologue
    .line 418
    const/4 v7, 0x0

    .line 419
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v6, ""

    .line 422
    .local v6, "coverPath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_ITEM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->SQL_FACE_ALBUM_COVER_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const-string v5, "dateTaken DESC "

    .line 424
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 427
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x0

    invoke-static {v7}, Lcom/miui/gallery/provider/FaceManager;->getFacePositionRectOfCoverImage(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v1

    aput-object v1, p1, v0

    .line 429
    const-string v0, "cover_path"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 433
    :cond_0
    if-eqz v7, :cond_1

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_1
    :goto_0
    return-object v6

    .line 431
    :catch_0
    move-exception v0

    .line 433
    if-eqz v7, :cond_1

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryCoverImageOfOnePerson(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 15
    .param p0, "peopleServerId"    # Ljava/lang/String;
    .param p1, "resultFaceRegion"    # [Landroid/graphics/RectF;

    .prologue
    .line 374
    const/4 v12, 0x0

    .line 375
    .local v12, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 376
    .local v8, "coverPath":Ljava/lang/String;
    const-string v6, ""

    .line 377
    .local v6, "coverId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 380
    .local v13, "isFound":Z
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->SQL_FACE_ALBUM_COVER_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-string v14, "-1"

    aput-object v14, v4, v5

    const-string v5, "faceCoverScore DESC, dateTaken DESC "

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 385
    const-string v0, "cover_path"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 386
    .local v9, "coverPathIndex":I
    const-string v0, "serverId"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 387
    .local v7, "coverIdIndex":I
    const-string v0, "faceCoverScore"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 388
    .local v10, "coverScoreIndex":I
    invoke-static {}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getCoverIds()Ljava/util/ArrayList;

    move-result-object v11

    .line 389
    .local v11, "covers":Ljava/util/ArrayList;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 392
    :cond_0
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    const/4 v0, 0x0

    invoke-static {v12}, Lcom/miui/gallery/provider/FaceManager;->getFacePositionRectOfCoverImage(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v1

    aput-object v1, p1, v0

    .line 395
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 396
    const/4 v13, 0x1

    .line 402
    :cond_1
    :goto_0
    if-nez v13, :cond_2

    .line 403
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    const/4 v0, 0x0

    invoke-static {v12}, Lcom/miui/gallery/provider/FaceManager;->getFacePositionRectOfCoverImage(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v1

    aput-object v1, p1, v0

    .line 405
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 410
    :cond_2
    if-eqz v12, :cond_3

    .line 411
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 414
    .end local v7    # "coverIdIndex":I
    .end local v9    # "coverPathIndex":I
    .end local v10    # "coverScoreIndex":I
    .end local v11    # "covers":Ljava/util/ArrayList;
    :cond_3
    :goto_1
    return-object v8

    .line 399
    .restart local v7    # "coverIdIndex":I
    .restart local v9    # "coverPathIndex":I
    .restart local v10    # "coverScoreIndex":I
    .restart local v11    # "covers":Ljava/util/ArrayList;
    :cond_4
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 408
    .end local v7    # "coverIdIndex":I
    .end local v9    # "coverPathIndex":I
    .end local v10    # "coverScoreIndex":I
    .end local v11    # "covers":Ljava/util/ArrayList;
    :catch_0
    move-exception v0

    .line 410
    if-eqz v12, :cond_3

    .line 411
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 410
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_5

    .line 411
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static queryPeopleIdOfRelation(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 557
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    new-instance v6, Lcom/miui/gallery/provider/FaceManager$2;

    invoke-direct {v6, p1}, Lcom/miui/gallery/provider/FaceManager$2;-><init>(I)V

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static queryPersonName(J)Ljava/lang/String;
    .locals 4
    .param p0, "localId"    # J

    .prologue
    .line 337
    const-string v0, "_id"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "peopleName"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/FaceManager;->queryAStringColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryPersonName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "serverId"

    const-string v1, "peopleName"

    invoke-static {v0, p0, v1}, Lcom/miui/gallery/provider/FaceManager;->queryAStringColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static querySharerInfoOfBabyAlbum(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 803
    const-string v3, "_id = ? "

    .line 804
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 808
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 810
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 813
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 823
    :cond_0
    if-eqz v6, :cond_1

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 827
    :cond_2
    :goto_0
    return-object v0

    .line 816
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    const-string/jumbo v0, "sharerInfo"

    .line 819
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 818
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 823
    if-eqz v6, :cond_2

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 823
    :cond_4
    if-eqz v6, :cond_5

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v0, v7

    .line 827
    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 823
    if-eqz v6, :cond_5

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 823
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static queryTimeOfOldestImagesOfOnePerson(Ljava/lang/String;)J
    .locals 10
    .param p0, "peopleServerId"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v6, 0x0

    .line 442
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 445
    .local v8, "time":J
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FaceManager;->SQL_OLDEST_FACE_OF_ALBUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-string v7, "-1"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 447
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 451
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "oldest_image_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 456
    :cond_0
    if-eqz v6, :cond_1

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_1
    :goto_0
    return-wide v8

    .line 454
    :catch_0
    move-exception v0

    .line 456
    if-eqz v6, :cond_1

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static safeUpdatePeopleFaceByIds(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    .local p1, "batchIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    .line 903
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "selection":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 907
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 908
    invoke-virtual {v1, v2, p0, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v1

    goto :goto_0
.end method
