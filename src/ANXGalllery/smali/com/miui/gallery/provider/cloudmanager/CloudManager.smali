.class public Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;,
        Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    }
.end annotation


# static fields
.field private static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_COPYABLE_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;

.field private static final PUBLIC_COPYABLE_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_BY_PATH_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sha1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "size"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->QUERY_BY_PATH_PROJECTION:[Ljava/lang/String;

    .line 3047
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "groupId"

    aput-object v1, v0, v4

    const-string v1, "localFlag"

    aput-object v1, v0, v5

    const-string v1, "localGroupId"

    aput-object v1, v0, v6

    const-string v1, "serverId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ubiSubImageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "secretKey"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "albumId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dateModified"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dateTaken"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "serverTag"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "serverStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "downloadFile"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "sortBy"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "localImageId"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "downloadFileStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "downloadFileTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "exifMake"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "exifModel"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "exifFlash"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "exifExposureTime"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "exifFNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "exifISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "exifGPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "exifGPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "exifGPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "exifGPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "exifWhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "exifFocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "exifGPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "exifDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "creatorId"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "ubiFocusIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "ubiSubIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "editedColumns"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "fromLocalGroupId"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "extraGPS"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    .line 3124
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "thumbnailFile"

    aput-object v1, v0, v3

    const-string v1, "downloadFile"

    aput-object v1, v0, v4

    const-string v1, "localFile"

    aput-object v1, v0, v5

    const-string v1, "microthumbfile"

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PRIVATE_COPYABLE_PROJECTION:[Ljava/lang/String;

    .line 3131
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    aput-object v1, v0, v3

    const-string v1, "dateTaken"

    aput-object v1, v0, v4

    const-string v1, "dateModified"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string v1, "serverType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "appKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "babyInfoJson"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "extraGPS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "exifMake"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "exifModel"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exifFlash"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "exifExposureTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "exifFNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "exifISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "exifGPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "exifGPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "exifGPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "exifGPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "exifWhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "exifFocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "exifGPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "exifDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "ubiSubImageCount"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "ubiFocusIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "ubiSubIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PUBLIC_COPYABLE_PROJECTION:[Ljava/lang/String;

    .line 3178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    .line 3179
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "create_album"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3180
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "add_to_album"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3181
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "delete"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3182
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string/jumbo v1, "set_album_attributes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3183
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "force_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3184
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string/jumbo v1, "unforce_top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3185
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "add_remove_secret"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3186
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "rename_album"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3187
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "delete_album"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3188
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    const-string v1, "add_remove_favorite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3189
    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->isSystemAlbum(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentValues;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->desensitization(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PUBLIC_COPYABLE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->copyOf([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PRIVATE_COPYABLE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # [J
    .param p5, "x5"    # I

    .prologue
    .line 62
    invoke-static/range {p0 .. p5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # [J
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/util/ArrayList;
    .param p7, "x7"    # I

    .prologue
    .line 62
    invoke-static/range {p0 .. p7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JLjava/util/ArrayList;I)[J
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # [J
    .param p5, "x5"    # Ljava/util/ArrayList;
    .param p6, "x6"    # I

    .prologue
    .line 62
    invoke-static/range {p0 .. p6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->cloudDelete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JLjava/util/ArrayList;I)[J

    move-result-object v0

    return-object v0
.end method

.method private static addRemoveFavoritesById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JI)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "id"    # J
    .param p6, "operationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JI)J"
        }
    .end annotation

    .prologue
    .line 731
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;

    move-object v1, p0

    move-object v2, p3

    move v3, p6

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IJ)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 734
    :goto_0
    return-wide v0

    .line 732
    :catch_0
    move-exception v6

    .line 733
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "CloudManager"

    const-string v1, "Add or remove favorites by id with error: %s"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method private static addRemoveFavoritesByPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Ljava/lang/String;I)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "operationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I)J"
        }
    .end annotation

    .prologue
    .line 721
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;

    invoke-direct {v1, p0, p3, p5, p4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 724
    :goto_0
    return-wide v2

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    const-string v2, "Add or remove favorites by path with error: %s"

    invoke-static {v1, v2, p4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 724
    const-wide/16 v2, -0x64

    goto :goto_0
.end method

.method private static addRemoveFavoritesSha1(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Ljava/lang/String;I)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "operationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I)J"
        }
    .end annotation

    .prologue
    .line 711
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;

    invoke-direct {v1, p0, p3, p5, p4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 714
    :goto_0
    return-wide v2

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    const-string v2, "Add or remove favorites by sha1 with error: %s"

    invoke-static {v1, v2, p4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    const-wide/16 v2, -0x64

    goto :goto_0
.end method

.method private static addToSecret(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 683
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;-><init>(Landroid/content/Context;Ljava/util/ArrayList;J)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 686
    :goto_0
    return-wide v2

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    const-string v2, "add to secret error %d, %s"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 686
    const-wide/16 v2, -0x64

    goto :goto_0
.end method

.method private static addToSecret(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Landroid/net/Uri;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 692
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;

    invoke-direct {v1, p0, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 695
    :goto_0
    return-wide v2

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    const-string v2, "add to secret error %s"

    invoke-static {v1, v2, p4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    const-wide/16 v2, -0x64

    goto :goto_0
.end method

.method public static call(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 66
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 85
    new-instance v60, Landroid/os/Bundle;

    invoke-direct/range {v60 .. v60}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v60, "result":Landroid/os/Bundle;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v7, "syncDirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "add_to_album"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 88
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/miui/gallery/util/Numbers;->parse(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 89
    .local v8, "albumId":J
    const-string v4, "extra_src_type"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v64

    .line 90
    .local v64, "srcType":I
    const-string v4, "extra_type"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v58

    .line 91
    .local v58, "operationType":I
    const/4 v4, 0x1

    move/from16 v0, v64

    if-ne v0, v4, :cond_7

    .line 92
    const-string v4, "extra_src_uris"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v65

    .line 93
    .local v65, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v65, :cond_0

    invoke-static {v8, v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->isVirtualAlbum(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    :cond_0
    const-string v4, "CloudManager"

    const-string v5, "error, albumId is %s, uris is %s"

    move-object/from16 v0, p4

    move-object/from16 v1, v65

    invoke-static {v4, v5, v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    .end local v8    # "albumId":J
    .end local v58    # "operationType":I
    .end local v64    # "srcType":I
    .end local v65    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    :goto_0
    return-object v60

    .line 97
    .restart local v8    # "albumId":J
    .restart local v58    # "operationType":I
    .restart local v64    # "srcType":I
    .restart local v65    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v33, v0

    .line 98
    .local v33, "ids":[J
    const/16 v56, 0x0

    .line 99
    .local v56, "i":I
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 100
    .local v10, "uri":Landroid/net/Uri;
    if-nez v58, :cond_4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 101
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->copyByUri(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JLandroid/net/Uri;)J

    move-result-wide v4

    aput-wide v4, v33, v56

    .line 105
    :cond_3
    :goto_2
    add-int/lit8 v56, v56, 0x1

    .line 106
    goto :goto_1

    .line 102
    :cond_4
    const/4 v4, 0x1

    move/from16 v0, v58

    if-ne v0, v4, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 103
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->moveByUri(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JLandroid/net/Uri;)J

    move-result-wide v4

    aput-wide v4, v33, v56

    goto :goto_2

    .line 107
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "ids"

    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 284
    .end local v8    # "albumId":J
    .end local v33    # "ids":[J
    .end local v56    # "i":I
    .end local v58    # "operationType":I
    .end local v64    # "srcType":I
    .end local v65    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    if-eqz p5, :cond_27

    const-string/jumbo v4, "should_operate_sync"

    const/4 v5, 0x0

    .line 286
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 285
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v4, v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->startUpdater(Landroid/content/Context;ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 108
    .restart local v8    # "albumId":J
    .restart local v58    # "operationType":I
    .restart local v64    # "srcType":I
    :cond_7
    if-nez v64, :cond_6

    .line 109
    const-string v4, "extra_dup_type"

    const/4 v5, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 111
    .local v20, "dupType":I
    const-string v4, "extra_src_media_ids"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v57

    .line 113
    .local v57, "mediaIds":[J
    if-eqz v57, :cond_9

    if-eqz v58, :cond_8

    const/4 v4, 0x1

    move/from16 v0, v58

    if-ne v0, v4, :cond_9

    .line 115
    :cond_8
    invoke-static {v8, v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->isVirtualAlbum(J)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 116
    :cond_9
    const-string v4, "CloudManager"

    const-string v5, "error, albumId is %s, mediaIds is %s"

    move-object/from16 v0, p4

    move-object/from16 v1, v57

    invoke-static {v4, v5, v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 119
    :cond_a
    move-object/from16 v0, v57

    array-length v4, v0

    new-array v0, v4, [J

    move-object/from16 v33, v0

    .line 120
    .restart local v33    # "ids":[J
    const/16 v56, 0x0

    .line 121
    .restart local v56    # "i":I
    move-object/from16 v0, v57

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_d

    aget-wide v18, v57, v4

    .line 122
    .local v18, "id":J
    if-nez v58, :cond_c

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v7

    move-wide/from16 v16, v8

    .line 123
    invoke-static/range {v12 .. v20}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->copy(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JJI)J

    move-result-wide v12

    aput-wide v12, v33, v56

    .line 127
    :cond_b
    :goto_6
    add-int/lit8 v56, v56, 0x1

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 124
    :cond_c
    const/4 v6, 0x1

    move/from16 v0, v58

    if-ne v0, v6, :cond_b

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v7

    move-wide/from16 v16, v8

    .line 125
    invoke-static/range {v12 .. v20}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->move(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JJI)J

    move-result-wide v12

    aput-wide v12, v33, v56

    goto :goto_6

    .line 129
    .end local v18    # "id":J
    :cond_d
    const-string v4, "ids"

    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_3

    .line 131
    .end local v8    # "albumId":J
    .end local v20    # "dupType":I
    .end local v33    # "ids":[J
    .end local v56    # "i":I
    .end local v57    # "mediaIds":[J
    .end local v58    # "operationType":I
    .end local v64    # "srcType":I
    :cond_e
    const-string v4, "delete_album"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 132
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v27, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "extra_delete_options"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 135
    .local v26, "deleteOptions":I
    const-string v4, "extra_delete_reason"

    const/16 v5, 0x15

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 136
    .local v28, "deleteReason":I
    const-string v4, "extra_album_ids"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v25

    .local v25, "albumIds":[J
    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, v7

    .line 137
    invoke-static/range {v21 .. v28}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->deleteAlbum(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J

    move-result-object v61

    .line 138
    .local v61, "results":[J
    const-string v4, "ids"

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/util/MiscUtil;->ListToArray(Ljava/util/List;)[J

    move-result-object v5

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_3

    .line 139
    .end local v25    # "albumIds":[J
    .end local v26    # "deleteOptions":I
    .end local v27    # "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v28    # "deleteReason":I
    .end local v61    # "results":[J
    :cond_f
    const-string v4, "delete"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 140
    const/16 v61, 0x0

    .line 141
    .restart local v61    # "results":[J
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .restart local v27    # "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "delete_by"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v55

    .line 143
    .local v55, "deleteBy":I
    const-string v4, "extra_delete_options"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 144
    .restart local v26    # "deleteOptions":I
    const-string v4, "extra_delete_reason"

    const/16 v5, 0x18

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 145
    .restart local v28    # "deleteReason":I
    if-nez v55, :cond_11

    .line 146
    const-string v4, "extra_dup_type"

    const/4 v5, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 147
    .restart local v20    # "dupType":I
    const-string v4, "extra_ids"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .restart local v33    # "ids":[J
    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v32, v7

    move/from16 v34, v20

    move/from16 v35, v26

    move-object/from16 v36, v27

    move/from16 v37, v28

    .line 148
    invoke-static/range {v29 .. v37}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->deleteById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JIILjava/util/ArrayList;I)[J

    move-result-object v61

    .line 149
    const-string v4, "ids"

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/util/MiscUtil;->ListToArray(Ljava/util/List;)[J

    move-result-object v5

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 163
    .end local v20    # "dupType":I
    .end local v33    # "ids":[J
    :cond_10
    :goto_7
    const-string v4, "count"

    invoke-static/range {v61 .. v61}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->getValidCount([J)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 150
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v55

    if-ne v0, v4, :cond_12

    .line 151
    const-string v4, "extra_paths"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .local v38, "paths":[Ljava/lang/String;
    move-object/from16 v34, p0

    move-object/from16 v35, p1

    move-object/from16 v36, p2

    move-object/from16 v37, v7

    move/from16 v39, v26

    move-object/from16 v40, v27

    move/from16 v41, v28

    .line 152
    invoke-static/range {v34 .. v41}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->deleteByPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[Ljava/lang/String;ILjava/util/ArrayList;I)[J

    move-result-object v61

    .line 153
    const-string v4, "ids"

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/util/MiscUtil;->ListToArray(Ljava/util/List;)[J

    move-result-object v5

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_7

    .line 154
    .end local v38    # "paths":[Ljava/lang/String;
    :cond_12
    const/4 v4, 0x2

    move/from16 v0, v55

    if-ne v0, v4, :cond_13

    .line 155
    const-string v4, "extra_sha1s"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, "sha1s":[Ljava/lang/String;
    const-string v4, "extra_keep_dup"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .local v16, "keepDup":Z
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v7

    move/from16 v17, v28

    .line 157
    invoke-static/range {v11 .. v17}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->deleteBySha1(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[Ljava/lang/String;ZI)[J

    move-result-object v61

    .line 158
    goto :goto_7

    .end local v15    # "sha1s":[Ljava/lang/String;
    .end local v16    # "keepDup":Z
    :cond_13
    const/4 v4, 0x3

    move/from16 v0, v55

    if-ne v0, v4, :cond_10

    .line 159
    const-string v4, "extra_paths"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .restart local v38    # "paths":[Ljava/lang/String;
    move-object/from16 v34, p0

    move-object/from16 v35, p1

    move-object/from16 v36, p2

    move-object/from16 v37, v7

    move-object/from16 v39, v27

    move/from16 v40, v28

    .line 160
    invoke-static/range {v34 .. v40}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->deleteCloudByPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/ArrayList;I)[J

    move-result-object v61

    .line 161
    const-string v4, "ids"

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/util/MiscUtil;->ListToArray(Ljava/util/List;)[J

    move-result-object v5

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_7

    .line 164
    .end local v26    # "deleteOptions":I
    .end local v27    # "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v28    # "deleteReason":I
    .end local v38    # "paths":[Ljava/lang/String;
    .end local v55    # "deleteBy":I
    .end local v61    # "results":[J
    :cond_14
    const-string v4, "create_album"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v7, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->createAlbum(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v54

    .line 166
    .local v54, "createAlbumResult":Landroid/os/Bundle;
    if-eqz v54, :cond_15

    .line 167
    move-object/from16 v0, v60

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 169
    :cond_15
    const-string v4, "id"

    const-wide/16 v12, -0x65

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 171
    .end local v54    # "createAlbumResult":Landroid/os/Bundle;
    :cond_16
    const-string v4, "rename_album"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 172
    const-string v4, "album_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .restart local v8    # "albumId":J
    move-object/from16 v40, p0

    move-object/from16 v41, p1

    move-object/from16 v42, p2

    move-object/from16 v43, v7

    move-wide/from16 v44, v8

    move-object/from16 v46, p4

    .line 173
    invoke-static/range {v40 .. v46}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->renameAlbum(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v59

    .line 174
    .local v59, "renameAlbumResult":Landroid/os/Bundle;
    if-eqz v59, :cond_17

    .line 175
    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 176
    const-string v4, "id"

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_6

    .line 177
    const-string/jumbo v4, "should_request_sync"

    const/4 v5, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 180
    :cond_17
    const-string v4, "id"

    const-wide/16 v12, -0x65

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 182
    .end local v8    # "albumId":J
    .end local v59    # "renameAlbumResult":Landroid/os/Bundle;
    :cond_18
    const-string/jumbo v4, "set_album_attributes"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 183
    const-string v4, "album_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .line 184
    .restart local v33    # "ids":[J
    const-string v4, "attributes_bit"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 185
    .local v34, "attributesBit":J
    const-string v4, "set"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v36

    .line 186
    .local v36, "set":Z
    const-string v4, "manual"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    .local v37, "manual":Z
    move-object/from16 v31, p1

    move-object/from16 v32, p2

    .line 187
    invoke-static/range {v31 .. v37}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->setAlbumAttributes(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[JJZZ)V

    .line 188
    const-wide/16 v4, 0x1

    cmp-long v4, v34, v4

    if-nez v4, :cond_6

    .line 189
    const-string/jumbo v4, "should_request_sync"

    const-string v5, "set"

    .line 190
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 189
    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 192
    .end local v33    # "ids":[J
    .end local v34    # "attributesBit":J
    .end local v36    # "set":Z
    .end local v37    # "manual":Z
    :cond_19
    const-string v4, "force_top"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 193
    const-string v4, "album_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .line 194
    .restart local v33    # "ids":[J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->forceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)V

    goto/16 :goto_3

    .line 195
    .end local v33    # "ids":[J
    :cond_1a
    const-string/jumbo v4, "unforce_top"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 196
    const-string v4, "album_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .line 197
    .restart local v33    # "ids":[J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->unforceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)V

    goto/16 :goto_3

    .line 198
    .end local v33    # "ids":[J
    :cond_1b
    const-string v4, "add_remove_secret"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 199
    const-string v4, "operation_type"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 200
    .local v44, "type":I
    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_22

    .line 201
    const-string v4, "extra_src_media_ids"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .line 202
    .restart local v33    # "ids":[J
    if-nez v33, :cond_1f

    .line 203
    const-string v4, "extra_src_uris"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v65

    .line 204
    .restart local v65    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v65, :cond_1d

    .line 205
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v33, v0

    .line 206
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_8
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v56

    if-ge v0, v4, :cond_1c

    .line 207
    move-object/from16 v0, v65

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v7, v4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->addToSecret(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Landroid/net/Uri;)J

    move-result-wide v4

    aput-wide v4, v33, v56

    .line 206
    add-int/lit8 v56, v56, 0x1

    goto :goto_8

    .line 209
    :cond_1c
    const-string v4, "ids"

    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 217
    .end local v44    # "type":I
    .end local v56    # "i":I
    .end local v65    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1d
    :goto_9
    const/16 v63, 0x0

    .line 218
    .local v63, "shouldSync":Z
    move-object/from16 v0, v33

    array-length v5, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v5, :cond_1e

    aget-wide v18, v33, v4

    .line 219
    .restart local v18    # "id":J
    const-wide/16 v12, 0x0

    cmp-long v6, v18, v12

    if-lez v6, :cond_21

    .line 220
    const/16 v63, 0x1

    .line 224
    .end local v18    # "id":J
    :cond_1e
    const-string/jumbo v4, "should_request_sync"

    move-object/from16 v0, v60

    move/from16 v1, v63

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 212
    .end local v63    # "shouldSync":Z
    .restart local v44    # "type":I
    :cond_1f
    const/16 v56, 0x0

    .end local v44    # "type":I
    .restart local v56    # "i":I
    :goto_b
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v56

    if-ge v0, v4, :cond_20

    .line 213
    aget-wide v44, v33, v56

    move-object/from16 v40, p0

    move-object/from16 v41, p1

    move-object/from16 v42, p2

    move-object/from16 v43, v7

    invoke-static/range {v40 .. v45}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->addToSecret(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;J)J

    move-result-wide v4

    aput-wide v4, v33, v56

    .line 212
    add-int/lit8 v56, v56, 0x1

    goto :goto_b

    .line 215
    :cond_20
    const-string v4, "ids"

    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_9

    .line 218
    .end local v56    # "i":I
    .restart local v18    # "id":J
    .restart local v63    # "shouldSync":Z
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 225
    .end local v18    # "id":J
    .end local v33    # "ids":[J
    .end local v63    # "shouldSync":Z
    .restart local v44    # "type":I
    :cond_22
    const/4 v4, 0x2

    move/from16 v0, v44

    if-ne v0, v4, :cond_6

    .line 226
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/miui/gallery/util/Numbers;->parse(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 227
    .restart local v8    # "albumId":J
    const-string v4, "extra_src_media_ids"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .line 228
    .restart local v33    # "ids":[J
    if-eqz v33, :cond_6

    .line 229
    const/16 v56, 0x0

    .end local v44    # "type":I
    .restart local v56    # "i":I
    :goto_c
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v56

    if-ge v0, v4, :cond_23

    .line 230
    aget-wide v46, v33, v56

    move-object/from16 v40, p0

    move-object/from16 v41, p1

    move-object/from16 v42, p2

    move-object/from16 v43, v7

    move-wide/from16 v44, v8

    invoke-static/range {v40 .. v47}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->removeFromSecret(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JJ)J

    move-result-wide v4

    aput-wide v4, v33, v56

    .line 229
    add-int/lit8 v56, v56, 0x1

    goto :goto_c

    .line 232
    :cond_23
    const-string v4, "ids"

    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_3

    .line 235
    .end local v8    # "albumId":J
    .end local v33    # "ids":[J
    .end local v56    # "i":I
    :cond_24
    const-string v4, "add_remove_favorite"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 236
    const-string v4, "add_remove_by"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v53

    .line 237
    .local v53, "addRemoveBy":I
    const-string v4, "operation_type"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 239
    .restart local v44    # "type":I
    const/16 v61, 0x0

    .line 240
    .restart local v61    # "results":[J
    packed-switch v53, :pswitch_data_0

    .line 271
    :cond_25
    const-string v4, "ids"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_3

    .line 242
    :pswitch_0
    const-string v4, "extra_src_sha1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v62

    .line 243
    .local v62, "sha1":[Ljava/lang/String;
    if-eqz v62, :cond_25

    .line 244
    move-object/from16 v0, v62

    array-length v4, v0

    new-array v0, v4, [J

    move-object/from16 v61, v0

    .line 245
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_d
    move-object/from16 v0, v62

    array-length v4, v0

    move/from16 v0, v56

    if-ge v0, v4, :cond_25

    .line 246
    aget-object v43, v62, v56

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, p2

    move-object/from16 v42, v7

    invoke-static/range {v39 .. v44}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->addRemoveFavoritesSha1(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v61, v56

    .line 245
    add-int/lit8 v56, v56, 0x1

    goto :goto_d

    .line 252
    .end local v56    # "i":I
    .end local v62    # "sha1":[Ljava/lang/String;
    :pswitch_1
    const-string v4, "extra_src_paths"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 253
    .restart local v38    # "paths":[Ljava/lang/String;
    if-eqz v38, :cond_26

    .line 254
    move-object/from16 v0, v38

    array-length v4, v0

    new-array v0, v4, [J

    move-object/from16 v61, v0

    .line 255
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_e
    move-object/from16 v0, v38

    array-length v4, v0

    move/from16 v0, v56

    if-ge v0, v4, :cond_26

    .line 256
    aget-object v43, v38, v56

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, p2

    move-object/from16 v42, v7

    invoke-static/range {v39 .. v44}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->addRemoveFavoritesByPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v61, v56

    .line 255
    add-int/lit8 v56, v56, 0x1

    goto :goto_e

    .line 261
    .end local v38    # "paths":[Ljava/lang/String;
    .end local v56    # "i":I
    :cond_26
    :pswitch_2
    const-string v4, "extra_src_media_ids"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v33

    .line 262
    .restart local v33    # "ids":[J
    if-eqz v33, :cond_25

    .line 263
    move-object/from16 v0, v33

    array-length v4, v0

    new-array v0, v4, [J

    move-object/from16 v61, v0

    .line 264
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_f
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v56

    if-ge v0, v4, :cond_25

    .line 265
    aget-wide v50, v33, v56

    move-object/from16 v46, p0

    move-object/from16 v47, p1

    move-object/from16 v48, p2

    move-object/from16 v49, v7

    move/from16 v52, v44

    invoke-static/range {v46 .. v52}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->addRemoveFavoritesById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JI)J

    move-result-wide v4

    aput-wide v4, v61, v56

    .line 264
    add-int/lit8 v56, v56, 0x1

    goto :goto_f

    .line 286
    .end local v33    # "ids":[J
    .end local v44    # "type":I
    .end local v53    # "addRemoveBy":I
    .end local v56    # "i":I
    .end local v61    # "results":[J
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static cloudDelete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JLjava/util/ArrayList;I)[J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "ids"    # [J
    .param p6, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 537
    .local p3, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p5, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JZI)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v6

    .line 538
    .local v6, "results":[J
    if-eqz p5, :cond_0

    .line 539
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 541
    :cond_0
    return-object v6
.end method

.method private static copy(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JJI)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "album"    # J
    .param p6, "media"    # J
    .param p8, "dupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJI)J"
        }
    .end annotation

    .prologue
    .line 347
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p4, v3, v4

    const/4 v4, 0x1

    aput-wide p6, v3, v4

    invoke-static {v3}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 348
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_0

    .line 349
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;

    move-object v4, p0

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJI)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v4

    .line 355
    :goto_0
    return-wide v4

    .line 351
    :cond_0
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;

    move-object v4, p0

    move-object v5, p3

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CloudManager"

    invoke-static {v3, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    const-wide/16 v4, -0x64

    goto :goto_0
.end method

.method private static copyByUri(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JLandroid/net/Uri;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "album"    # J
    .param p6, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 375
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p6

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 377
    :goto_0
    return-wide v0

    .line 376
    :catch_0
    move-exception v6

    .line 377
    .local v6, "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method private static copyOf([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 739
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 740
    .local v0, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 742
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .local v6, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 744
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 743
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    :cond_1
    const-string v7, "babyInfoJson"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 751
    const-string v7, "CloudManager"

    const-string v8, "catch column(%s), remove local_flag "

    invoke-static {v7, v8, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, "raw":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 755
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 756
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v7, "localFlag"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 757
    const-string v7, "localFlag"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    :cond_2
    const-string v7, "babyInfoJson"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 761
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "raw":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 767
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 778
    :pswitch_0
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 769
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 772
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 775
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 781
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 785
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    return-object v6

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static createAlbum(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 391
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 393
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 394
    const-wide/16 v4, -0x64

    .line 405
    .local v4, "resultId":J
    :cond_0
    :goto_0
    const-string v6, "id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 406
    return-object v0

    .line 396
    .end local v4    # "resultId":J
    :cond_1
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;

    invoke-direct {v1, p0, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 397
    .local v1, "createAlbumTask":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;
    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v4

    .line 398
    .restart local v4    # "resultId":J
    const-wide/16 v6, -0x67

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    const-wide/16 v6, -0x69

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 399
    :cond_2
    invoke-virtual {v1, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->getConflictAlbumId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 400
    .local v2, "conflictAlbumId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 401
    const-string v6, "conflict_album_id"

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static createDeleteRecord(ILandroid/database/Cursor;Ljava/lang/String;)Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .locals 2
    .param p0, "deleteReason"    # I
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 3013
    if-eqz p1, :cond_1

    .line 3014
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3015
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3016
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3018
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3019
    new-instance v1, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3022
    .end local v0    # "filePath":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "ids"    # [J
    .param p5, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JI)[J"
        }
    .end annotation

    .prologue
    .line 505
    .local p3, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J

    move-result-object v0

    return-object v0
.end method

.method private static delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "ids"    # [J
    .param p5, "deleteOptions"    # I
    .param p7, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 516
    .local p3, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p6, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    .line 517
    array-length v3, p4

    new-array v9, v3, [J

    .line 518
    .local v9, "results":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_1

    .line 519
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;

    aget-wide v6, p4, v2

    move-object v4, p0

    move-object v5, p3

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v4

    aput-wide v4, v9, v2

    .line 520
    aget-wide v4, v9, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    if-eqz p6, :cond_0

    .line 521
    aget-wide v4, p4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v9

    .line 530
    .end local v2    # "i":I
    .end local v9    # "results":[J
    .local v10, "results":[J
    :goto_1
    return-object v10

    .line 526
    .end local v10    # "results":[J
    :cond_2
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/Delete;

    move/from16 v0, p7

    invoke-direct {v3, p0, p3, p4, v0}, Lcom/miui/gallery/provider/cloudmanager/Delete;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/Delete;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v9

    .line 527
    .restart local v9    # "results":[J
    if-eqz p6, :cond_3

    .line 528
    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v10, v9

    .line 530
    .end local v9    # "results":[J
    .restart local v10    # "results":[J
    goto :goto_1
.end method

.method private static deleteAlbum(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "albumIds"    # [J
    .param p5, "deleteOptions"    # I
    .param p7, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 438
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p6, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {p4}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 439
    array-length v1, p4

    new-array v8, v1, [J

    .line 440
    .local v8, "results":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p4

    if-ge v7, v1, :cond_2

    .line 441
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    .line 442
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;

    aget-wide v4, p4, v7

    move-object v2, p0

    move-object v3, p3

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v2

    aput-wide v2, v8, v7

    .line 446
    :goto_1
    aget-wide v2, v8, v7

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 447
    aget-wide v2, p4, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 444
    :cond_1
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;

    aget-wide v4, p4, v7

    move-object v2, p0

    move-object v3, p3

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v2

    aput-wide v2, v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 451
    .end local v7    # "i":I
    .end local v8    # "results":[J
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    const/4 v1, 0x1

    new-array v8, v1, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x64

    aput-wide v2, v8, v1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8
.end method

.method private static deleteById(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JIILjava/util/ArrayList;I)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "ids"    # [J
    .param p5, "dupType"    # I
    .param p6, "deleteOptions"    # I
    .param p8, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 491
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p7, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {p4}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 492
    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 493
    invoke-static/range {p0 .. p8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->dupDelete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JIILjava/util/ArrayList;I)[J

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 495
    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v8

    .line 498
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "CloudManager"

    invoke-static {v0, v8}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x64

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method private static deleteByPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[Ljava/lang/String;ILjava/util/ArrayList;I)[J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "paths"    # [Ljava/lang/String;
    .param p5, "deleteOptions"    # I
    .param p7, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 461
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p6, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    array-length v0, p4

    new-array v9, v0, [J

    .line 462
    .local v9, "results":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p4

    if-ge v8, v0, :cond_0

    .line 463
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;

    aget-object v3, p4, v8

    move-object v1, p0

    move-object v2, p3

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/ArrayList;I)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    aput-wide v0, v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 466
    .end local v8    # "i":I
    .end local v9    # "results":[J
    :catch_0
    move-exception v7

    .line 467
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CloudManager"

    invoke-static {v0, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    const/4 v0, 0x1

    new-array v9, v0, [J

    const/4 v0, 0x0

    const-wide/16 v2, -0x64

    aput-wide v2, v9, v0

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v9
.end method

.method private static deleteBySha1(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[Ljava/lang/String;ZI)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "sha1s"    # [Ljava/lang/String;
    .param p5, "keepDup"    # Z
    .param p6, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            "ZI)[J"
        }
    .end annotation

    .prologue
    .line 569
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    array-length v0, p4

    new-array v8, v0, [J

    .line 570
    .local v8, "results":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p4

    if-ge v7, v0, :cond_0

    .line 571
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;

    aget-object v3, p4, v7

    move-object v1, p0

    move-object v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZI)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    aput-wide v0, v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 574
    .end local v7    # "i":I
    .end local v8    # "results":[J
    :catch_0
    move-exception v6

    .line 575
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "CloudManager"

    invoke-static {v0, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    const/4 v0, 0x1

    new-array v8, v0, [J

    const/4 v0, 0x0

    const-wide/16 v2, -0x64

    aput-wide v2, v8, v0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v8
.end method

.method private static deleteCloudByPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/ArrayList;I)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "paths"    # [Ljava/lang/String;
    .param p6, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p5, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    array-length v0, p4

    new-array v8, v0, [J

    .line 477
    .local v8, "results":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p4

    if-ge v7, v0, :cond_0

    .line 478
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;

    aget-object v3, p4, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    aput-wide v0, v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 481
    .end local v7    # "i":I
    .end local v8    # "results":[J
    :catch_0
    move-exception v6

    .line 482
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "CloudManager"

    invoke-static {v0, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    const/4 v0, 0x1

    new-array v8, v0, [J

    const/4 v0, 0x0

    const-wide/16 v2, -0x64

    aput-wide v2, v8, v0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v8
.end method

.method private static desensitization(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3192
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 3199
    :goto_0
    return-object v0

    .line 3193
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3194
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3195
    const-string v1, "exifGPSLatitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3196
    const-string v1, "exifGPSLongitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3197
    const-string v1, "extraGPS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3198
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static dupDelete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JIILjava/util/ArrayList;I)[J
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "ids"    # [J
    .param p5, "dupType"    # I
    .param p6, "deleteOptions"    # I
    .param p8, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)[J"
        }
    .end annotation

    .prologue
    .line 547
    .local p3, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p7, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    .line 548
    move-object/from16 v0, p4

    array-length v2, v0

    new-array v11, v2, [J

    .line 549
    .local v11, "results":[J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v10, v2, :cond_1

    .line 550
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;

    aget-wide v6, p4, v10

    move-object v4, p0

    move-object/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JII)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v2

    aput-wide v2, v11, v10

    .line 551
    aget-wide v2, v11, v10

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-eqz p7, :cond_0

    .line 552
    aget-wide v2, p4, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object v12, v11

    .line 561
    .end local v10    # "i":I
    .end local v11    # "results":[J
    .local v12, "results":[J
    :goto_1
    return-object v12

    .line 557
    .end local v12    # "results":[J
    :cond_2
    new-instance v2, Lcom/miui/gallery/provider/cloudmanager/DupDelete;

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/provider/cloudmanager/DupDelete;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JII)V

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DupDelete;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v11

    .line 558
    .restart local v11    # "results":[J
    if-eqz p7, :cond_3

    .line 559
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v12, v11

    .line 561
    .end local v11    # "results":[J
    .restart local v12    # "results":[J
    goto :goto_1
.end method

.method private static forceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/gallery/provider/cache/MediaManager;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # J
    .param p4, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p5, "forceTop"    # Z

    .prologue
    .line 594
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 595
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p5, :cond_2

    .line 596
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getNextForceTopTime()J

    move-result-wide v2

    .line 597
    .local v2, "nextForceTopTime":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, p2, v6

    if-eqz v5, :cond_0

    const-wide/32 v6, 0x7ffffffe

    cmp-long v5, p2, v6

    if-eqz v5, :cond_0

    const-wide/32 v6, 0x7ffffffd

    cmp-long v5, p2, v6

    if-eqz v5, :cond_0

    const-wide/32 v6, 0x7ffffffc

    cmp-long v5, p2, v6

    if-eqz v5, :cond_0

    const-wide/32 v6, 0x7ffffffa

    cmp-long v5, p2, v6

    if-nez v5, :cond_1

    .line 602
    :cond_0
    invoke-static {p2, p3, v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setVirtualAlbumSortBy(JJ)V

    .line 647
    .end local v2    # "nextForceTopTime":J
    :goto_0
    return-void

    .line 605
    .restart local v2    # "nextForceTopTime":J
    :cond_1
    const-string/jumbo v5, "sortBy"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    .end local v2    # "nextForceTopTime":J
    :goto_1
    invoke-static {p2, p3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 638
    invoke-static {p2, p3}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide p2

    .line 639
    const-string/jumbo v5, "shareAlbum"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    .line 640
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 641
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 639
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_2
    const-wide/16 v0, 0x0

    .line 609
    .local v0, "dateTaken":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, p2, v6

    if-nez v5, :cond_3

    .line 610
    const-wide/16 v6, -0x3e6

    invoke-static {p2, p3, v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setVirtualAlbumSortBy(JJ)V

    goto :goto_0

    .line 612
    :cond_3
    const-wide/32 v6, 0x7ffffffe

    cmp-long v5, p2, v6

    if-nez v5, :cond_4

    .line 613
    const-wide/16 v6, -0x3e5

    invoke-static {p2, p3, v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setVirtualAlbumSortBy(JJ)V

    goto :goto_0

    .line 615
    :cond_4
    const-wide/32 v6, 0x7ffffffd

    cmp-long v5, p2, v6

    if-nez v5, :cond_5

    .line 616
    const-wide/16 v6, -0x3e2

    invoke-static {p2, p3, v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setVirtualAlbumSortBy(JJ)V

    goto :goto_0

    .line 618
    :cond_5
    const-wide/32 v6, 0x7ffffffc

    cmp-long v5, p2, v6

    if-nez v5, :cond_6

    .line 619
    const-wide/16 v6, -0x3e9

    invoke-static {p2, p3, v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setVirtualAlbumSortBy(JJ)V

    goto :goto_0

    .line 621
    :cond_6
    const-wide/32 v6, 0x7ffffffa

    cmp-long v5, p2, v6

    if-nez v5, :cond_7

    .line 622
    const-wide/16 v6, -0x3e8

    invoke-static {p2, p3, v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setVirtualAlbumSortBy(JJ)V

    goto :goto_0

    .line 624
    :cond_7
    const-wide/16 v6, 0x1

    cmp-long v5, p2, v6

    if-nez v5, :cond_9

    .line 625
    const-wide/16 v0, -0x3e7

    .line 630
    :cond_8
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_a

    .line 631
    const-string/jumbo v5, "sortBy"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 626
    :cond_9
    const-wide/16 v6, 0x2

    cmp-long v5, p2, v6

    if-nez v5, :cond_8

    .line 627
    const-wide/16 v0, -0x3e3

    goto :goto_2

    .line 633
    :cond_a
    const-string/jumbo v5, "sortBy"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 643
    .end local v0    # "dateTaken":J
    :cond_b
    const-string v5, "cloud"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    .line 644
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 645
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 643
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static forceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "ids"    # [J

    .prologue
    .line 581
    array-length v0, p3

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 582
    aget-wide v2, p3, v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->forceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/gallery/provider/cache/MediaManager;Z)V

    .line 581
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method

.method static genRelativePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "albumName"    # Ljava/lang/String;
    .param p1, "isOtherShareAlbum"    # Z

    .prologue
    .line 820
    if-eqz p1, :cond_0

    .line 821
    invoke-static {}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getShareFolderRelativePathInCloud()Ljava/lang/String;

    move-result-object v0

    .line 823
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFolderRelativePathInCloud(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static varargs getValidCount([J)I
    .locals 10
    .param p0, "results"    # [J

    .prologue
    const/4 v4, 0x0

    .line 3003
    const/4 v0, 0x0

    .line 3004
    .local v0, "count":I
    if-eqz p0, :cond_1

    .line 3005
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-wide v2, p0, v5

    .line 3006
    .local v2, "result":J
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    .line 3005
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    move v1, v4

    .line 3006
    goto :goto_1

    .line 3009
    .end local v2    # "result":J
    :cond_1
    return v0
.end method

.method private static isSystemAlbum(J)Z
    .locals 2
    .param p0, "serverId"    # J

    .prologue
    .line 798
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVirtualAlbum(J)Z
    .locals 8
    .param p0, "localGroupId"    # J

    .prologue
    const/4 v1, 0x0

    .line 789
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_VIRTUAL_ALBUM_IDS:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 790
    .local v0, "albumId":I
    int-to-long v6, v0

    cmp-long v5, p0, v6

    if-nez v5, :cond_1

    .line 791
    const/4 v1, 0x1

    .line 794
    .end local v0    # "albumId":I
    :cond_0
    return v1

    .line 789
    .restart local v0    # "albumId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static move(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JJI)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "album"    # J
    .param p6, "media"    # J
    .param p8, "dupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJI)J"
        }
    .end annotation

    .prologue
    .line 362
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p4, v3, v4

    const/4 v4, 0x1

    aput-wide p6, v3, v4

    invoke-static {v3}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 363
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_0

    .line 364
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;

    move-object v4, p0

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJI)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v4

    .line 369
    :goto_0
    return-wide v4

    .line 366
    :cond_0
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;

    move-object v4, p0

    move-object v5, p3

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v4, -0x64

    goto :goto_0
.end method

.method private static moveByUri(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JLandroid/net/Uri;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "album"    # J
    .param p6, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 383
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p6

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 385
    :goto_0
    return-wide v0

    .line 384
    :catch_0
    move-exception v6

    .line 385
    .local v6, "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method public static queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 307
    const/4 v14, 0x0

    .line 308
    .local v14, "exifSha1":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v12

    .line 311
    .local v12, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 318
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "albumPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    const-string v1, "CloudManager"

    const-string v2, "Could\'t get album path for %s"

    move-object/from16 v0, p2

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    const/4 v11, 0x0

    .line 341
    .end local v9    # "albumPath":Ljava/lang/String;
    .end local v12    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v14    # "exifSha1":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v11

    .line 311
    .restart local v12    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .restart local v14    # "exifSha1":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 312
    .end local v12    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :catch_0
    move-exception v13

    .line 313
    .local v13, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    const-string v2, "exif exifSha1 read fail %s"

    invoke-static {v1, v2, v13}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    const/4 v11, 0x0

    goto :goto_1

    .line 323
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v9    # "albumPath":Ljava/lang/String;
    .restart local v12    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const-string v2, "cloud"

    sget-object v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->QUERY_BY_PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "fileName LIKE ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    aput-object v9, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_1

    .line 328
    :cond_3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v10, "bundle":Landroid/os/Bundle;
    const-string v1, "is_thumbnail"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string v2, "cloud"

    sget-object v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->QUERY_BY_PATH_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "sha1=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v5, v1

    const/4 v1, 0x1

    aput-object v9, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 331
    .local v11, "cursor":Landroid/database/Cursor;
    instance-of v1, v11, Landroid/database/AbstractCursor;

    if-eqz v1, :cond_0

    move-object v1, v11

    .line 332
    check-cast v1, Landroid/database/AbstractCursor;

    invoke-virtual {v1, v10}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_1

    .line 338
    .end local v9    # "albumPath":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_4
    const-string v2, "cloud"

    sget-object v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->QUERY_BY_PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "(localFile LIKE ? or thumbnailFile LIKE ?) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_1

    .line 341
    .end local v14    # "exifSha1":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private static removeFromSecret(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JJ)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "albumId"    # J
    .param p6, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 701
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p6

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 704
    :goto_0
    return-wide v2

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CloudManager"

    const-string v2, "remove from secret error %d"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    const-wide/16 v2, -0x64

    goto :goto_0
.end method

.method private static renameAlbum(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;JLjava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "albumId"    # J
    .param p6, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "dirtyIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 412
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    const-wide/16 v10, -0x64

    .line 430
    .local v10, "resultId":J
    :cond_0
    :goto_0
    const-string v2, "id"

    invoke-virtual {v0, v2, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 431
    return-object v0

    .line 416
    .end local v10    # "resultId":J
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-static {v2}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 417
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;

    move-object v2, p0

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JLjava/lang/String;)V

    .line 418
    .local v1, "renameAlbumTask":Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;
    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v10

    .line 419
    .restart local v10    # "resultId":J
    const-wide/16 v2, -0x67

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x69

    cmp-long v2, v10, v2

    if-nez v2, :cond_0

    .line 420
    :cond_2
    invoke-virtual {v1, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->getConflictAlbumId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v8

    .line 421
    .local v8, "conflictAlbumId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_0

    .line 422
    const-string v2, "conflict_album_id"

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v1    # "renameAlbumTask":Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;
    .end local v8    # "conflictAlbumId":J
    .end local v10    # "resultId":J
    :catch_0
    move-exception v7

    .line 426
    .local v7, "e":Ljava/lang/Exception;
    const-string v2, "CloudManager"

    invoke-static {v2, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    const-wide/16 v10, -0x64

    .restart local v10    # "resultId":J
    goto :goto_0
.end method

.method private static setAlbumAttributes(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[JJZZ)V
    .locals 17
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p2, "ids"    # [J
    .param p3, "attributesBit"    # J
    .param p5, "set"    # Z
    .param p6, "manual"    # Z

    .prologue
    .line 651
    invoke-static/range {p3 .. p6}, Lcom/miui/gallery/provider/AlbumManager;->packageAttributeBit(JZZ)J

    move-result-wide v12

    .line 652
    .local v12, "packageAttributeBit":J
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v3, v6}, Lcom/miui/gallery/provider/AlbumManager;->packageAttributeBit(JZZ)J

    move-result-wide v10

    .line 653
    .local v10, "attributeBitMask":J
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-wide v4, p2, v15

    .line 654
    .local v4, "id":J
    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 655
    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v4

    .line 656
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "UPDATE %s SET %s = (%s & ~%d) | %d WHERE %s = %s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "shareAlbum"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "attributes"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "attributes"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 659
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    .line 660
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 656
    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    :goto_1
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_0

    .line 662
    :cond_0
    const-string v2, ""

    .line 663
    .local v2, "editedColumnsElement":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getAlbumSyncAttributes()Ljava/util/List;

    move-result-object v14

    .line 664
    .local v14, "syncAttrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v14}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 665
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 668
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "UPDATE %s SET %s = (%s & ~%d) | %d, %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') WHERE %s IN (%s)"

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "cloud"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "attributes"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "attributes"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 671
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "editedColumns"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "editedColumns"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v2, v7, v8

    const/16 v8, 0x8

    aput-object v2, v7, v8

    const/16 v8, 0x9

    aput-object v2, v7, v8

    const/16 v8, 0xa

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    .line 674
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 668
    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move-object/from16 v3, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 676
    invoke-virtual/range {v3 .. v9}, Lcom/miui/gallery/provider/cache/MediaManager;->updateAttributes(JJZZ)V

    goto :goto_1

    .line 679
    .end local v2    # "editedColumnsElement":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v14    # "syncAttrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private static startUpdater(Landroid/content/Context;ZLjava/util/ArrayList;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executeSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p2, "bulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->execute(Landroid/content/Context;ZLjava/util/List;)V

    .line 829
    return-void
.end method

.method private static unforceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "ids"    # [J

    .prologue
    .line 587
    array-length v0, p3

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 588
    aget-wide v2, p3, v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->forceTop(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/gallery/provider/cache/MediaManager;Z)V

    .line 587
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method
