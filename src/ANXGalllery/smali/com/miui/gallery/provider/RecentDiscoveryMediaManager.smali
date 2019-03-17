.class public Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;
.super Ljava/lang/Object;
.source "RecentDiscoveryMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;,
        Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    }
.end annotation


# static fields
.field private static final ALIAS_MICRO_VALID:Ljava/lang/String;

.field private static final ALIAS_THUMBNAIL_VALID:Ljava/lang/String;

.field private static final COVER_ALIAS_DISPLAYABLE:Ljava/lang/String;

.field private static final SQL_ALBUM_COVER:Ljava/lang/String;

.field private static final SQL_INCLUDE_LOCAL:Ljava/lang/String;

.field private static sRecentDiscoveryMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    .line 50
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "mediaId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "sha1"

    const-string/jumbo v2, "sha1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "localGroupId"

    const-string v2, "localGroupId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "microthumbfile"

    const-string v2, "microthumbfile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "thumbnailFile"

    const-string/jumbo v2, "thumbnailFile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "localFile"

    const-string v2, "localFile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "serverType"

    const-string v2, "serverType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "description"

    const-string v2, "description"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "size"

    const-string/jumbo v2, "size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "mimeType"

    const-string v2, "mimeType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "location"

    const-string v2, "location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLatitude"

    const-string v2, "exifGPSLatitude"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLatitudeRef"

    const-string v2, "exifGPSLatitudeRef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLongitude"

    const-string v2, "exifGPSLongitude"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLongitudeRef"

    const-string v2, "exifGPSLongitudeRef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_micro_thumbnail"

    sget-object v2, Lcom/miui/gallery/provider/InternalContract$RecentDiscoveredMedia;->ALIAS_MICRO_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_create_time"

    const-string v2, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_create_date"

    const-string v2, "STRFTIME(\'%Y%m%d\', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, \'unixepoch\', \'localtime\')"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_sync_state"

    const-string v2, " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "secretKey"

    const-string v2, "secretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "exifImageWidth"

    const-string v2, "exifImageWidth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "exifImageLength"

    const-string v2, "exifImageLength"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "serverId"

    const-string v2, "serverId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "serverTag"

    const-string v2, "serverTag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "creatorId"

    const-string v2, "creatorId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "dateAdded"

    const-string v2, "dateAdded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_julianday"

    const-string v2, "CAST(JULIANDAY(dateModified/1000, \'unixepoch\', \'localtime\', \'start of day\') AS int)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "dateModified"

    const-string v2, "dateModified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "babyInfoJson"

    const-string v2, "babyInfoJson"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_clear_thumbnail"

    sget-object v2, Lcom/miui/gallery/provider/InternalContract$RecentDiscoveredMedia;->ALIAS_CLEAR_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_is_favorite"

    const-string v2, "isFavorite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "specialTypeFlags"

    const-string/jumbo v2, "specialTypeFlags"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    const-string v1, "alias_sort_time"

    const-string v2, "dateModified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_MEDIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->SQL_INCLUDE_LOCAL:Ljava/lang/String;

    .line 98
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s NOT NULL and %s != \'\')"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "microthumbfile"

    aput-object v3, v2, v4

    const-string v3, "microthumbfile"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->ALIAS_MICRO_VALID:Ljava/lang/String;

    .line 100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s NOT NULL and %s != \'\')"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "thumbnailFile"

    aput-object v3, v2, v4

    const-string/jumbo v3, "thumbnailFile"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->ALIAS_THUMBNAIL_VALID:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CASE WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->ALIAS_MICRO_VALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "microthumbfile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->ALIAS_THUMBNAIL_VALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->COVER_ALIAS_DISPLAYABLE:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id AS cover_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->COVER_ALIAS_DISPLAYABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sha1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_sha1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alias_sync_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_sync_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->SQL_ALBUM_COVER:Ljava/lang/String;

    return-void
.end method

.method private static addOneRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 6
    .param p0, "fromCursor"    # Landroid/database/Cursor;
    .param p1, "toCursor"    # Landroid/database/MatrixCursor;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 492
    array-length v1, p2

    .line 493
    .local v1, "columnsLen":I
    new-array v0, v1, [Ljava/lang/Object;

    .line 494
    .local v0, "columns":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 495
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 494
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :pswitch_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 500
    :pswitch_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 503
    :pswitch_2
    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_1

    .line 506
    :pswitch_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 509
    :pswitch_4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 513
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 514
    return-void

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static cleanupInvalidRecords()V
    .locals 6

    .prologue
    .line 203
    const-string v2, "DELETE FROM recentDiscoveredMedia WHERE mediaId IN  (SELECT mediaId FROM (SELECT mediaId, cloud._id AS _id, localFlag, serverStatus FROM (recentDiscoveredMedia LEFT OUTER JOIN cloud ON cloud._id = mediaId)) WHERE (localFlag IN (11, -1, 2) OR (localFlag=0 AND serverStatus<>\'custom\')) OR (_id IS NULL))"

    .line 211
    .local v2, "sqlDeleteInvalidMedia":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 212
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/database/SQLException;
    const-string v3, "RecentDiscoveryMediaManager"

    const-string v4, "Something wrong happened when cleanup recent table: %s"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private static generateAlbumCover(Landroid/database/sqlite/SQLiteDatabase;IZ)Landroid/os/Bundle;
    .locals 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "count"    # I
    .param p2, "removeDuplicateItems"    # Z

    .prologue
    const/4 v0, 0x0

    .line 276
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->SQL_ALBUM_COVER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " FROM "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 278
    invoke-static {p2}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getRecentDiscoveryTable(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ORDER BY "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "dateModified"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " DESC "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {p0, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 283
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v7, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    const-string v10, "cover_id"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 285
    .local v2, "coverIdIndex":I
    const-string v10, "cover_path"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 286
    .local v3, "coverPathIndex":I
    const-string v10, "cover_sha1"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 287
    .local v4, "coverSha1Index":I
    const-string v10, "cover_sync_state"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 288
    .local v6, "coverSyncStateIndex":I
    const-string v10, "cover_size"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 289
    .local v5, "coverSizeIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 290
    new-instance v1, Lcom/miui/gallery/model/BaseAlbumCover;

    invoke-direct {v1}, Lcom/miui/gallery/model/BaseAlbumCover;-><init>()V

    .line 291
    .local v1, "cover":Lcom/miui/gallery/model/BaseAlbumCover;
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/miui/gallery/model/BaseAlbumCover;->coverId:J

    .line 292
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/miui/gallery/model/BaseAlbumCover;->coverPath:Ljava/lang/String;

    .line 293
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/miui/gallery/model/BaseAlbumCover;->coverSha1:Ljava/lang/String;

    .line 294
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v1, Lcom/miui/gallery/model/BaseAlbumCover;->coverSyncState:I

    .line 295
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/miui/gallery/model/BaseAlbumCover;->coverSize:J

    .line 296
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, p1, :cond_0

    .line 302
    .end local v1    # "cover":Lcom/miui/gallery/model/BaseAlbumCover;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "album_covers"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 304
    const-string v10, "album_photo_count"

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "coverIdIndex":I
    .end local v3    # "coverPathIndex":I
    .end local v4    # "coverSha1Index":I
    .end local v5    # "coverSizeIndex":I
    .end local v6    # "coverSyncStateIndex":I
    .end local v7    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    :cond_2
    return-object v0

    .line 307
    :catchall_0
    move-exception v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v10
.end method

.method private static getAlbumId(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 544
    const-string v0, "localGroupId"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDateModified(Landroid/database/Cursor;)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 539
    const-string v0, "dateModified"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDateModified(Landroid/database/Cursor;I)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I

    .prologue
    .line 532
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->moveCursorToPosition(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "dateModified"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 535
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static getDaysWithinSelection(I)Ljava/lang/String;
    .locals 5
    .param p0, "days"    # I

    .prologue
    .line 163
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " AND ( CASE WHEN DATE(dateModified/1000, \'unixepoch\', \'localtime\') == DATE(\'now\', \'localtime\') THEN 0 ELSE CAST(JULIANDAY(\'now\', \'localtime\', \'start of day\') - JULIANDAY(dateModified/1000, \'unixepoch\', \'localtime\') AS int) + 1 END < %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExcludeBabyAlbumSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->isInLocalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND babyInfoJson IS NULL )) "

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getExcludeHiddenAlbumSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->isInShowHiddenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND attributes&16=0)) "

    goto :goto_0
.end method

.method private static getIncludeLocalSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->isInLocalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->SQL_INCLUDE_LOCAL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getJulianday(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 555
    const-string v0, "alias_julianday"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static getNotInHiddenAlbumSelection(J)Ljava/lang/String;
    .locals 6
    .param p0, "albumId"    # J

    .prologue
    .line 167
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->isInShowHiddenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " AND (%s in (SELECT _id FROM cloud WHERE serverType=0 AND attributes&16=0))"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getNotSecretSelection(J)Ljava/lang/String;
    .locals 6
    .param p0, "albumId"    # J

    .prologue
    .line 175
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s !=-1000)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentDiscoveryTable(Z)Ljava/lang/String;
    .locals 5
    .param p0, "removeDuplicateItems"    # Z

    .prologue
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v1, "sqlRecentMediaColumns":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->sRecentDiscoveryMediaMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v3, " AS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v2, "sqlTable":Ljava/lang/StringBuilder;
    const-string v3, "(SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM ("

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recentDiscoveredMedia"

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " JOIN "

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extended_cloud"

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extended_cloud"

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mediaId"

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(localGroupId!=-1000)"

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getExcludeHiddenAlbumSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getIncludeLocalSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    invoke-static {}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getExcludeBabyAlbumSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1e

    .line 251
    invoke-static {v4}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getDaysWithinSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_2

    const-string v3, " GROUP BY sha1"

    .line 253
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 251
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method private static insertItemToGroupList(JIJILjava/util/ArrayList;)V
    .locals 12
    .param p0, "dateAdded"    # J
    .param p2, "julianday"    # I
    .param p3, "albumId"    # J
    .param p5, "cursorPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p6, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;>;"
    invoke-static/range {p6 .. p6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    const/4 v11, 0x1

    .line 426
    .local v11, "isFirstItem":Z
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_3

    .line 427
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;

    .line 428
    .local v9, "group":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    iget-wide v2, v9, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->endDate:J

    sub-long/2addr v2, p0

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 429
    if-eqz v11, :cond_0

    iget-wide v2, v9, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->albumId:J

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    iget v2, v9, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->julianday:I

    if-ne p2, v2, :cond_0

    .line 430
    move/from16 v0, p5

    invoke-static {p0, p1, v0, v9}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->mergeItemToGroup(JILcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;)V

    .line 450
    .end local v9    # "group":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    .end local v10    # "i":I
    .end local v11    # "isFirstItem":Z
    :goto_1
    return-void

    .line 432
    .restart local v9    # "group":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    .restart local v10    # "i":I
    .restart local v11    # "isFirstItem":Z
    :cond_0
    new-instance v2, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;

    move-wide v3, p0

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;-><init>(JIJI)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    :cond_1
    iget-wide v2, v9, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->albumId:J

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 437
    move/from16 v0, p5

    invoke-static {p0, p1, v0, v9}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->mergeItemToGroup(JILcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;)V

    goto :goto_1

    .line 441
    :cond_2
    const/4 v11, 0x0

    .line 426
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 443
    .end local v9    # "group":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    :cond_3
    new-instance v2, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;

    move-wide v3, p0

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;-><init>(JIJI)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 445
    .end local v10    # "i":I
    .end local v11    # "isFirstItem":Z
    :cond_4
    if-nez p6, :cond_5

    .line 446
    new-instance p6, Ljava/util/ArrayList;

    .end local p6    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;>;"
    invoke-direct/range {p6 .. p6}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .restart local p6    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;>;"
    :cond_5
    new-instance v2, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;

    move-wide v3, p0

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;-><init>(JIJI)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static varargs insertToRecentDB(Landroid/content/Context;[Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveEntries"    # [Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    .prologue
    .line 562
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    if-gtz v18, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v7, "entryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v5, p1, v18

    .line 567
    .local v5, "entry":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    invoke-virtual {v5}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->getThumbPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "albumRelativePath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 569
    const-string v18, "RecentDiscoveryMediaManager"

    const-string v19, "Could\'t get album path for %s"

    invoke-virtual {v5}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->getThumbPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 573
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    if-nez v10, :cond_3

    .line 574
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    invoke-virtual {v7, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_3
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 580
    .end local v4    # "albumRelativePath":Ljava/lang/String;
    .end local v5    # "entry":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v12, "validEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v14, "validThumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 583
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;>;"
    const-string v20, "DCIM/Camera"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 585
    .local v9, "isCameraAlbum":Z
    if-nez v9, :cond_7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->isAlbumInWhiteList(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 586
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 587
    .local v15, "value":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    invoke-static {v15}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 588
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 590
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->access$000(Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->isMediaCanShowInMessage(J)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 591
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    .line 592
    .local v11, "recentMediaEntry":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    invoke-virtual {v11}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->getDateModified()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/GalleryDateUtils;->daysBeforeToday(J)J

    move-result-wide v20

    const-wide/16 v22, 0x1e

    cmp-long v20, v20, v22

    if-gez v20, :cond_6

    .line 593
    invoke-virtual {v11}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->getThumbPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 598
    .end local v11    # "recentMediaEntry":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    .end local v15    # "value":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;"
    :cond_7
    if-nez v9, :cond_5

    .line 599
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->recordNotInWhiteListAlbum(Ljava/lang/String;)V

    goto :goto_2

    .line 602
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;>;>;"
    .end local v9    # "isCameraAlbum":Z
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 603
    .local v13, "validSize":I
    if-eqz v13, :cond_0

    .line 605
    new-array v0, v13, [Landroid/content/ContentValues;

    move-object/from16 v17, v0

    .line 606
    .local v17, "valuesArray":[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v13, :cond_9

    .line 607
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v16, "values":Landroid/content/ContentValues;
    const-string v19, "mediaId"

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;->getMediaId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string v18, "dateAdded"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    const-string/jumbo v18, "source"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    aput-object v16, v17, v8

    .line 606
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 613
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 614
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 615
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v18

    const/16 v19, 0x1

    new-instance v20, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;

    .line 617
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentSaveParams;-><init>(ILjava/util/ArrayList;)V

    .line 615
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->saveMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static isAlbumInWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "albumRelativePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 633
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumsInWhiteList()Ljava/util/ArrayList;

    move-result-object v2

    .line 634
    .local v2, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 650
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return v4

    .line 642
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumWhiteListPatterns()Ljava/util/ArrayList;

    move-result-object v3

    .line 643
    .local v3, "whiteListPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 644
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 645
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 650
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isInLocalMode()Z
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    return v0
.end method

.method private static isInShowHiddenMode()Z
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;->isShowHiddenAlbum()Z

    move-result v0

    return v0
.end method

.method private static isMediaCanShowInMessage(J)Z
    .locals 6
    .param p0, "albumId"    # J

    .prologue
    const/4 v2, 0x0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getNotSecretSelection(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getNotInHiddenAlbumSelection(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 189
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 193
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    :goto_0
    return v2

    .line 193
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static mergeItemToGroup(JILcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;)V
    .locals 2
    .param p0, "dateAdded"    # J
    .param p2, "cursorPos"    # I
    .param p3, "group"    # Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;

    .prologue
    .line 453
    iput-wide p0, p3, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->endDate:J

    .line 454
    iget-object v0, p3, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method private static moveCursorToPosition(Landroid/database/Cursor;I)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I

    .prologue
    .line 517
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 18
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "removeDuplicateItems"    # Z
    .param p7, "generateHeaders"    # Z

    .prologue
    .line 321
    if-eqz p7, :cond_4

    .line 322
    if-eqz p1, :cond_3

    .line 323
    const/4 v13, 0x0

    .line 324
    .local v13, "needAppendProjection":Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v14, "projections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "localGroupId"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    const-string v2, "localGroupId"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v13, 0x1

    .line 329
    :cond_0
    const-string v2, "dateModified"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    const-string v2, "dateModified"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const/4 v13, 0x1

    .line 333
    :cond_1
    const-string v2, "alias_julianday"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 334
    const-string v2, "alias_julianday"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/4 v13, 0x1

    .line 337
    :cond_2
    if-eqz v13, :cond_3

    .line 338
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p1, v0

    .line 339
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 340
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v12

    .line 339
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 345
    .end local v12    # "i":I
    .end local v13    # "needAppendProjection":Z
    .end local v14    # "projections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string p5, "dateModified DESC "

    .line 347
    :cond_4
    invoke-static/range {p6 .. p6}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getRecentDiscoveryTable(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 348
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    if-eqz p7, :cond_5

    .line 350
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 351
    .local v16, "start":J
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->resortAndGenerateHeaders(Landroid/database/Cursor;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 352
    .local v15, "ret":Landroid/database/Cursor;
    const-string v2, "RecentDiscoveryMediaManager"

    const-string v3, "resortAndGenerateHeaders cost %d ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 362
    .end local v15    # "ret":Landroid/database/Cursor;
    .end local v16    # "start":J
    :goto_1
    return-object v15

    .line 354
    :catch_0
    move-exception v11

    .line 355
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "RecentDiscoveryMediaManager"

    const-string v3, "resortAndGenerateHeaders failed."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    const/4 v15, 0x0

    .line 359
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :cond_5
    move-object v15, v10

    .line 362
    goto :goto_1
.end method

.method public static queryAlbumCover(Landroid/database/sqlite/SQLiteDatabase;IZ)Landroid/database/Cursor;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "count"    # I
    .param p2, "removeDuplicateItems"    # Z

    .prologue
    .line 259
    new-instance v0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$1;

    invoke-direct {v0}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$1;-><init>()V

    .line 271
    .local v0, "cursor":Landroid/database/AbstractCursor;
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->generateAlbumCover(Landroid/database/sqlite/SQLiteDatabase;IZ)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 272
    return-object v0
.end method

.method private static recordNotInWhiteListAlbum(Ljava/lang/String;)V
    .locals 3
    .param p0, "albumRelativePath"    # Ljava/lang/String;

    .prologue
    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 624
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "album_relative_path"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "media_scanner"

    const-string v2, "scanner_directory_not_in_white_list"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 630
    return-void
.end method

.method private static resortAndGenerateHeaders(Landroid/database/Cursor;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 366
    if-eqz p0, :cond_0

    .line 367
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, "dateModified"

    .line 368
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    const-string v7, "alias_julianday"

    .line 369
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    const-string v7, "localGroupId"

    .line 370
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_1

    .line 371
    :cond_0
    const/4 v14, 0x0

    .line 413
    :goto_0
    return-object v14

    .line 374
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v8, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;>;"
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 376
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getDateModified(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 377
    .local v2, "dateModified":J
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getAlbumId(Landroid/database/Cursor;)J

    move-result-wide v5

    .line 378
    .local v5, "albumId":J
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getJulianday(Landroid/database/Cursor;)I

    move-result v4

    .line 379
    .local v4, "julianday":I
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->insertItemToGroupList(JIJILjava/util/ArrayList;)V

    goto :goto_1

    .line 382
    .end local v2    # "dateModified":J
    .end local v4    # "julianday":I
    .end local v5    # "albumId":J
    :cond_2
    new-instance v14, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 384
    .local v14, "ret":Landroid/database/MatrixCursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v9, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v15, "startPosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v16, "timeLabelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 389
    .local v12, "index":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;

    .line 390
    .local v11, "group":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    iget-object v7, v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->getDateModified(Landroid/database/Cursor;I)J

    move-result-wide v18

    .line 391
    .local v18, "timeMillis":J
    const/4 v7, 0x0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v7}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v7, v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v7, v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v12, v7

    .line 396
    iget-object v7, v11, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 397
    .local v13, "pos":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->moveCursorToPosition(Landroid/database/Cursor;I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v14, v1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->addOneRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    goto :goto_2

    .line 403
    .end local v11    # "group":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
    .end local v13    # "pos":Ljava/lang/Integer;
    .end local v18    # "timeMillis":J
    :cond_5
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v10, "extras":Landroid/os/Bundle;
    const-string v7, "extra_timeline_item_count_in_group"

    invoke-virtual {v10, v7, v9}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    const-string v7, "extra_timeline_group_start_pos"

    invoke-virtual {v10, v7, v15}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 410
    const-string v7, "extra_timeline_group_time_labels"

    move-object/from16 v0, v16

    invoke-virtual {v10, v7, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 412
    invoke-virtual {v14, v10}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
