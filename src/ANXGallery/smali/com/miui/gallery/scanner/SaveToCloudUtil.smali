.class public Lcom/miui/gallery/scanner/SaveToCloudUtil;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;,
        Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;,
        Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;,
        Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;
    }
.end annotation


# static fields
.field private static final CLOUD_PROJECTION:[Ljava/lang/String;

.field private static final ENSURE_INFO_PROJECTION_IMAGE:[Ljava/lang/String;

.field private static final ENSURE_INFO_PROJECTION_VIDEO:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "size"

    aput-object v1, v0, v4

    const-string v1, "fileName"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "serverStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "localFlag"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "serverId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/scanner/SaveToCloudUtil;->CLOUD_PROJECTION:[Ljava/lang/String;

    .line 128
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "latitude"

    aput-object v1, v0, v3

    const-string v1, "longitude"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/scanner/SaveToCloudUtil;->ENSURE_INFO_PROJECTION_IMAGE:[Ljava/lang/String;

    .line 132
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "latitude"

    aput-object v1, v0, v3

    const-string v1, "longitude"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/scanner/SaveToCloudUtil;->ENSURE_INFO_PROJECTION_VIDEO:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Landroid/database/Cursor;)Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .locals 1
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->toCloudEntry(Landroid/database/Cursor;)Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    move-result-object v0

    return-object v0
.end method

.method private static checkFileSize(Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;)I
    .locals 4
    .param p0, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    iget-object v2, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getMinFileSizeLimit(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 216
    const/4 v0, -0x6

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ensureLocation(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "isImage"    # Z
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 899
    if-eqz p2, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 902
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz p2, :cond_1

    sget-object v2, Lcom/miui/gallery/scanner/SaveToCloudUtil;->ENSURE_INFO_PROJECTION_IMAGE:[Ljava/lang/String;

    .line 905
    .local v2, "projection":[Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;

    invoke-direct {v6, p3}, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;-><init>(Landroid/content/ContentValues;)V

    .line 926
    .local v6, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;
    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 928
    return-void

    .line 899
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 902
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    sget-object v2, Lcom/miui/gallery/scanner/SaveToCloudUtil;->ENSURE_INFO_PROJECTION_VIDEO:[Ljava/lang/String;

    goto :goto_1
.end method

.method private static findEntry(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 947
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Lcom/miui/gallery/scanner/SaveToCloudUtil$2;

    invoke-direct {v6}, Lcom/miui/gallery/scanner/SaveToCloudUtil$2;-><init>()V

    .line 961
    .local v6, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;>;"
    if-eqz v0, :cond_0

    .line 963
    invoke-static/range {p2 .. p3}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getReadTableName(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/scanner/SaveToCloudUtil;->CLOUD_PROJECTION:[Ljava/lang/String;

    const-string v3, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR (localFile is not null AND localFile like ?)) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus=\'custom\' OR serverStatus=\'temp\')"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 964
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 962
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 967
    :goto_0
    return-object v1

    .line 968
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getReadUri(J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/scanner/SaveToCloudUtil;->CLOUD_PROJECTION:[Ljava/lang/String;

    const-string v10, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR (localFile is not null AND localFile like ?)) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus=\'custom\' OR serverStatus=\'temp\')"

    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 969
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x1

    aput-object p1, v11, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v12, 0x0

    move-object v7, p0

    move-object v13, v6

    .line 967
    invoke-static/range {v7 .. v13}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static findEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exifName"    # Ljava/lang/String;
    .param p3, "exifSha1"    # Ljava/lang/String;
    .param p4, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 976
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Lcom/miui/gallery/scanner/SaveToCloudUtil$3;

    invoke-direct {v6}, Lcom/miui/gallery/scanner/SaveToCloudUtil$3;-><init>()V

    .line 990
    .local v6, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;>;"
    if-eqz v0, :cond_0

    .line 992
    invoke-static/range {p4 .. p5}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getReadTableName(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/scanner/SaveToCloudUtil;->CLOUD_PROJECTION:[Ljava/lang/String;

    const-string v3, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR UPPER(fileName) = UPPER(?) OR sha1 = ?) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus=\'custom\' OR serverStatus=\'temp\')"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 993
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x0

    .line 991
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 996
    :goto_0
    return-object v1

    .line 997
    :cond_0
    invoke-static/range {p4 .. p5}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getReadUri(J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/scanner/SaveToCloudUtil;->CLOUD_PROJECTION:[Ljava/lang/String;

    const-string v10, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR UPPER(fileName) = UPPER(?) OR sha1 = ?) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus=\'custom\' OR serverStatus=\'temp\')"

    const/4 v1, 0x4

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 998
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x1

    aput-object p1, v11, v1

    const/4 v1, 0x2

    aput-object p2, v11, v1

    const/4 v1, 0x3

    aput-object p3, v11, v1

    const/4 v12, 0x0

    move-object v7, p0

    move-object v13, v6

    .line 996
    invoke-static/range {v7 .. v13}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static genUpdateValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;

    .prologue
    .line 689
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "size"

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    const-string v1, "dateModified"

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    const-string/jumbo v1, "sha1"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    const-string v1, "serverType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putValuesForImage(Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 701
    :cond_0
    :goto_0
    return-object v0

    .line 697
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    const-string v1, "serverType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-static {p0, v1, v2, v3, v0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putValuesForVideo(Landroid/content/Context;Ljava/lang/String;JLandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public static getDateTaken(Landroid/support/media/ExifInterface;J)J
    .locals 7
    .param p0, "exifInterface"    # Landroid/support/media/ExifInterface;
    .param p1, "modifyTime"    # J

    .prologue
    .line 748
    move-wide v2, p1

    .line 749
    .local v2, "time":J
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getGpsDate(Landroid/support/media/ExifInterface;)Ljava/util/Date;

    move-result-object v0

    .line 750
    .local v0, "gpsDate":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 753
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getDateTime(Landroid/support/media/ExifInterface;)J

    move-result-wide v2

    .line 754
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 755
    move-wide v2, p1

    .line 766
    :cond_0
    :goto_0
    return-wide v2

    .line 758
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getDate(Landroid/support/media/ExifInterface;)Ljava/util/Date;

    move-result-object v1

    .line 759
    .local v1, "localDate":Ljava/util/Date;
    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lcom/miui/gallery/util/GalleryDateUtils;->isSameDate(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 761
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static getReadTableName(J)Ljava/lang/String;
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 551
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v0, "shareImage"

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cloud"

    goto :goto_0
.end method

.method private static getReadUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 559
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    .line 562
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getUbiSubUri(J)Landroid/net/Uri;
    .locals 4
    .param p0, "albumId"    # J

    .prologue
    const/4 v2, 0x0

    .line 567
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getWriteUri(Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)Landroid/net/Uri;
    .locals 3
    .param p0, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    .line 545
    :goto_0
    return-object v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isBulkNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isValidSyncValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$CloudWriteBulkNotify;->CLOUD_WRITE_BULK_NOTIFY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isAlbumSyncable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 540
    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$CloudWriteBulkNotify;->CLOUD_WRITE_BULK_NOTIFY_URI:Landroid/net/Uri;

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isValidSyncValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isAlbumSyncable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_3
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static insert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .param p2, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    .prologue
    .line 610
    const-string v0, "SaveToCloudUtil"

    const-string v1, "insert %s"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    iget-object v0, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    if-eqz v0, :cond_0

    .line 612
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->insertUbi(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v0

    .line 614
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->insertImmediately(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static insert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/scanner/MediaBulkInserter;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .param p2, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;
    .param p3, "inserter"    # Lcom/miui/gallery/scanner/MediaBulkInserter;

    .prologue
    .line 619
    const-string v3, "SaveToCloudUtil"

    const-string v4, "bulk insert %s"

    iget-object v5, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    iget-object v3, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    if-eqz v3, :cond_0

    .line 621
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->insertUbi(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v4

    .line 632
    :goto_0
    return-wide v4

    .line 623
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 625
    .local v0, "start":J
    invoke-virtual {p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getLocalFlag()I

    move-result v3

    invoke-static {p0, p1, v4, v5, v3}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->toValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;JI)Landroid/content/ContentValues;

    move-result-object v2

    .line 629
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p3, p0, v2}, Lcom/miui/gallery/scanner/MediaBulkInserter;->insert(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 630
    const-wide/16 v4, -0x4

    goto :goto_0

    .line 632
    .end local v0    # "start":J
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->insertImmediately(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v4

    goto :goto_0
.end method

.method private static insertImmediately(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .param p2, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    .prologue
    .line 579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 580
    .local v12, "start":J
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v10

    .line 583
    .local v10, "originAlbumId":J
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getLocalFlag()I

    move-result v2

    invoke-static {p0, p1, v10, v11, v2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->toValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;JI)Landroid/content/ContentValues;

    move-result-object v9

    .line 587
    .local v9, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 588
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getWriteUri(Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2, v9}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 589
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 590
    const-wide/16 v4, -0x1

    .line 606
    :cond_0
    :goto_1
    return-wide v4

    .line 582
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v10    # "originAlbumId":J
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v10

    goto :goto_0

    .line 595
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v9    # "values":Landroid/content/ContentValues;
    .restart local v10    # "originAlbumId":J
    :cond_2
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 596
    .local v4, "mediaId":J
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 598
    new-instance v1, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    .line 599
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v2

    iget-object v6, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    iget-wide v7, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    invoke-direct/range {v1 .. v8}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;-><init>(JJLjava/lang/String;J)V

    .line 601
    .local v1, "entry":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->insertToRecentDB(Landroid/content/Context;[Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;)V

    .line 606
    .end local v1    # "entry":Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareMediaManager;->convertToMediaId(J)J

    move-result-wide v4

    goto :goto_1
.end method

.method private static insertUbi(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .param p2, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    .prologue
    .line 638
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getLocalFlag()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->toValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;JI)Landroid/content/ContentValues;

    move-result-object v18

    .line 639
    .local v18, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mSubFiles:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v12

    .line 640
    .local v12, "subSize":I
    const-string/jumbo v19, "ubiSubImageCount"

    add-int/lit8 v20, v12, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v19, "ubiFocusIndex"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mOuterIndexForCloud:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string/jumbo v19, "ubiSubIndex"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mMainIndexForCloud:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getWriteUri(Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 644
    .local v15, "uri":Landroid/net/Uri;
    if-nez v15, :cond_1

    .line 645
    const-wide/16 v8, -0x1

    .line 685
    :cond_0
    return-wide v8

    .line 647
    :cond_1
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 649
    .local v8, "localId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mSubFiles:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    .line 650
    .local v11, "subFile":Lcom/miui/gallery/data/LocalUbifocus$SubFile;
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v13, "subUbiFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 654
    iget v0, v11, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->mIndex:I

    move/from16 v20, v0

    invoke-static {}, Lcom/miui/gallery/data/LocalUbifocus;->getMainFileIndex()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 657
    invoke-virtual {v11}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    .line 658
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    .line 659
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    .line 660
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    .line 661
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    .line 662
    const/4 v10, 0x0

    .line 663
    .local v10, "sha1":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->needCheckExifSha1(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 665
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v6

    .line 666
    .local v6, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 671
    .end local v6    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_3
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 672
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mIsExifSha1:Z

    .line 673
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 677
    :goto_2
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    .line 678
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    .line 679
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getLocalFlag()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->toValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;JI)Landroid/content/ContentValues;

    move-result-object v14

    .line 680
    .local v14, "subValue":Landroid/content/ContentValues;
    iget v0, v11, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v12}, Lcom/miui/gallery/data/UbiIndexMapper;->localToCloud(II)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 681
    .local v16, "ubiSubIndex":J
    const-string/jumbo v20, "ubiLocalId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    const-string/jumbo v20, "ubiSubIndex"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getUbiSubUri(J)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 666
    .end local v14    # "subValue":Landroid/content/ContentValues;
    .end local v16    # "ubiSubIndex":J
    .restart local v6    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 667
    .end local v6    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :catch_0
    move-exception v7

    .line 668
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "SaveToCloudUtil"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 675
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mIsExifSha1:Z

    goto :goto_2
.end method

.method private static needCheckExifSha1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSaveToCloud(Ljava/io/File;)Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 196
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 207
    :goto_0
    return-object v0

    .line 199
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "scanPath":Ljava/lang/String;
    new-instance v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;

    invoke-direct {v0, v2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;-><init>(Lcom/miui/gallery/scanner/SaveToCloudUtil$1;)V

    .line 201
    .local v0, "saveToCloud":Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    .line 202
    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    .line 203
    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    .line 205
    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    goto :goto_0
.end method

.method private static prepareInsert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)I
    .locals 42
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .param p2, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;
    .param p3, "batchOperator"    # Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    .prologue
    .line 238
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->checkFileSize(Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;)I

    move-result v37

    .line 239
    .local v37, "status":I
    if-eqz v37, :cond_0

    .line 529
    .end local v37    # "status":I
    :goto_0
    return v37

    .line 242
    .restart local v37    # "status":I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 243
    .local v34, "scanPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 244
    .local v5, "exifSha1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 245
    .local v4, "exifName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->needCheckExifSha1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v13

    .line 248
    .local v13, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v13, :cond_1

    .line 249
    invoke-virtual {v13}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v5

    .line 250
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getFileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 258
    .end local v13    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mIsExifSha1:Z

    .line 259
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mIsExifSha1:Z

    if-eqz v2, :cond_e

    .line 263
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 264
    .local v38, "start":J
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->findEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 272
    .local v17, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 273
    const/16 v36, 0x0

    .line 274
    .local v36, "sha1":Ljava/lang/String;
    const/4 v12, 0x0

    .line 275
    .local v12, "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    .line 276
    .local v18, "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "thumbnailFile"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 287
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_3
    const/16 v37, -0x2

    goto/16 :goto_0

    .line 252
    .end local v12    # "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .end local v17    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    .end local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .end local v36    # "sha1":Ljava/lang/String;
    .end local v38    # "start":J
    :catch_0
    move-exception v16

    .line 253
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "SaveToCloudUtil"

    const-string v3, "exif exifSha1 read fail %s"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const/16 v37, -0x1

    goto/16 :goto_0

    .line 258
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 268
    :catch_1
    move-exception v16

    .line 269
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v2, "SaveToCloudUtil"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    const/16 v37, -0x1

    goto/16 :goto_0

    .line 288
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v12    # "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .restart local v17    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    .restart local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .restart local v36    # "sha1":Ljava/lang/String;
    .restart local v38    # "start":J
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSize:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_7

    .line 291
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "thumbnailFile"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 296
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    const/16 v37, -0x2

    goto/16 :goto_0

    .line 298
    :cond_7
    if-nez v36, :cond_8

    .line 299
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 301
    :cond_8
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 303
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    .line 304
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mIsExifSha1:Z

    .line 305
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 306
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v2, "localFile"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 310
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_9
    const-string v2, "SaveToCloudUtil"

    const-string/jumbo v3, "thumbnail is original %s"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    const/16 v37, -0x2

    goto/16 :goto_0

    .line 313
    :cond_a
    move-object/from16 v12, v18

    goto/16 :goto_2

    .line 318
    .end local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    :cond_b
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    .line 319
    if-eqz v12, :cond_c

    .line 320
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v31

    .line 321
    .local v31, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "albumPath"

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v34

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v2, "sha1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "media_scanner"

    const-string v3, "scanner_rename_conflict_thumbnail"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    invoke-static/range {v34 .. v34}, Lcom/miui/gallery/cloud/CloudUtils;->renameForPhotoConflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 325
    .local v35, "scanRenamePath":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    .line 326
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    .line 327
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    .line 328
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    .line 529
    .end local v12    # "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .end local v31    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "scanRenamePath":Ljava/lang/String;
    .end local v36    # "sha1":Ljava/lang/String;
    :cond_c
    :goto_3
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 331
    :cond_d
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    goto :goto_3

    .line 335
    .end local v17    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    .end local v38    # "start":J
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/data/LocalUbifocus;->isUbifocusImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 336
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 337
    .local v23, "mainFilePath":Ljava/lang/String;
    const/16 v24, -0x1

    .line 338
    .local v24, "mainIndex":I
    const/16 v29, -0x1

    .line 339
    .local v29, "outerIndexForCloud":I
    const/16 v25, -0x1

    .line 340
    .local v25, "mainIndexForCloud":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v41

    .line 341
    .local v41, "subUbiFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-static {v2, v0}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusSubFiles(Ljava/lang/String;Ljava/util/List;)I

    move-result v28

    .line 342
    .local v28, "outerIndex":I
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 343
    invoke-static {}, Lcom/miui/gallery/data/LocalUbifocus;->getMainFileIndex()I

    move-result v24

    .line 344
    move/from16 v0, v28

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    .line 345
    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    invoke-virtual {v2}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v23

    .line 347
    :cond_f
    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_10

    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_10

    .line 351
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    invoke-static {v0, v2}, Lcom/miui/gallery/data/UbiIndexMapper;->localToCloud(II)I

    move-result v29

    .line 353
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    invoke-static {v0, v2}, Lcom/miui/gallery/data/UbiIndexMapper;->localToCloud(II)I

    move-result v25

    .line 357
    :cond_10
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 359
    const/16 v37, -0x1

    goto/16 :goto_0

    .line 361
    :cond_11
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    .line 363
    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_12

    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_12

    .line 365
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 366
    new-instance v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;-><init>(Lcom/miui/gallery/scanner/SaveToCloudUtil$1;)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    .line 367
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move/from16 v0, v29

    iput v0, v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mOuterIndexForCloud:I

    .line 368
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move/from16 v0, v25

    iput v0, v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mMainIndexForCloud:I

    .line 369
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move-object/from16 v0, v41

    iput-object v0, v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mSubFiles:Ljava/util/List;

    .line 374
    .end local v19    # "file":Ljava/io/File;
    .end local v23    # "mainFilePath":Ljava/lang/String;
    .end local v24    # "mainIndex":I
    .end local v25    # "mainIndexForCloud":I
    .end local v28    # "outerIndex":I
    .end local v29    # "outerIndexForCloud":I
    .end local v41    # "subUbiFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    :cond_12
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 375
    .restart local v38    # "start":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getAlbumId()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v9}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->findEntry(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    .line 383
    .restart local v17    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    const/4 v12, 0x0

    .line 384
    .restart local v12    # "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 385
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    .line 386
    .restart local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSize:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_17

    .line 388
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .restart local v7    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 391
    const-string v2, "SaveToCloudUtil"

    const-string v3, "file %s sha1 is null, update sha1"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    .line 393
    const-string/jumbo v2, "sha1"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_14
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 396
    const-string v2, "localFile"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_15
    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 399
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 401
    :cond_16
    const/16 v37, -0x2

    goto/16 :goto_0

    .line 379
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v12    # "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .end local v17    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    .end local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .end local v38    # "start":J
    :catch_2
    move-exception v16

    .line 380
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v2, "SaveToCloudUtil"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    const/16 v37, -0x1

    goto/16 :goto_0

    .line 404
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v12    # "conflictEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .restart local v17    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;>;"
    .restart local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .restart local v38    # "start":J
    :cond_17
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 405
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    .line 407
    :cond_18
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 408
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 409
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v2, "localFile"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 413
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_19
    const/16 v37, -0x2

    goto/16 :goto_0

    .line 414
    :cond_1a
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->access$200(Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 417
    const-string v2, "SaveToCloudUtil"

    const-string v3, "file changed before sync: %s"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const-string v2, "SaveToCloudUtil"

    const-string v3, "original file: sha1 [%s] size [%d]"

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v3, v6, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    invoke-static/range {p0 .. p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->genUpdateValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;)Landroid/content/ContentValues;

    move-result-object v7

    .line 421
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v2, "SaveToCloudUtil"

    const-string/jumbo v3, "updated values: sha1 [%s] size [%d]"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v3, v6, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    move-object/from16 v6, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 424
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v30, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "path"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string/jumbo v2, "size_old_new"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSize:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v2, "media_scanner"

    const-string v3, "file_content_changed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    const/16 v37, -0x7

    goto/16 :goto_0

    .line 432
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v30    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 434
    move-object/from16 v12, v18

    goto/16 :goto_4

    .line 445
    .end local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    :cond_1c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->needCheckExifSha1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    const-wide/32 v8, 0x100000

    cmp-long v2, v2, v8

    if-gez v2, :cond_1e

    .line 446
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    .line 447
    .restart local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mThumbnailPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 448
    const-string v2, "SaveToCloudUtil"

    const-string v3, "%s maybe thumbnail"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 450
    .restart local v30    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "path"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v2, "size"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v2, "mappingServerId"

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v2, "mappingName"

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v2, "mappingSize"

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v2, "media_scanner"

    const-string/jumbo v3, "treat_as_thumbnail"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 457
    const/16 v37, -0x2

    goto/16 :goto_0

    .line 463
    .end local v18    # "entry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .end local v30    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 464
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    .line 467
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isInternalScanRequest()Z

    move-result v2

    if-nez v2, :cond_21

    .line 479
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 480
    .local v32, "parentFolder":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 481
    .local v33, "relativeFolder":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getStreamFileStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v40

    .line 482
    .local v40, "streamFile":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    if-eqz v40, :cond_20

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;->isStreamFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    mul-long v14, v2, v8

    .line 484
    .local v14, "currentTime":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    move-wide/from16 v26, v0

    .line 485
    .local v26, "modifyTime":J
    sub-long v2, v14, v26

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    .line 486
    .local v20, "interval":J
    invoke-virtual/range {v40 .. v40}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;->getDelayMilliseconds()J

    move-result-wide v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_21

    .line 487
    const-string v2, "SaveToCloudUtil"

    const-string v3, "scanning stream folder %s"

    move-object/from16 v0, v33

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const/16 v37, -0x1

    goto/16 :goto_0

    .line 490
    .end local v14    # "currentTime":J
    .end local v20    # "interval":J
    .end local v26    # "modifyTime":J
    :cond_20
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    cmp-long v2, v2, v8

    if-lez v2, :cond_21

    .line 492
    const-string v2, "SaveToCloudUtil"

    const-string v3, "maybe a stream folder %s"

    move-object/from16 v0, v33

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 494
    .restart local v31    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "folder"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v2, "media_scanner"

    const-string v3, "scanner_stream_file"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    .end local v31    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32    # "parentFolder":Ljava/lang/String;
    .end local v33    # "relativeFolder":Ljava/lang/String;
    .end local v40    # "streamFile":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    :cond_21
    if-eqz v12, :cond_22

    .line 500
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v31

    .line 501
    .restart local v31    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "albumPath"

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v34

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v2, "sha1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v2, "media_scanner"

    const-string v3, "scanner_rename_conflict_origin"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    invoke-static/range {v34 .. v34}, Lcom/miui/gallery/cloud/CloudUtils;->renameForPhotoConflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 505
    .restart local v35    # "scanRenamePath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    if-eqz v2, :cond_23

    .line 507
    invoke-static/range {v35 .. v35}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusSubFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 508
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    invoke-static {}, Lcom/miui/gallery/data/LocalUbifocus;->getMainFileIndex()I

    move-result v24

    .line 509
    .restart local v24    # "mainIndex":I
    if-eqz v22, :cond_22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-le v2, v0, :cond_22

    .line 510
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    invoke-virtual {v2}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    .line 511
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v19    # "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    .line 513
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    .line 514
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    .line 515
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;->mSubFiles:Ljava/util/List;

    .line 524
    .end local v19    # "file":Ljava/io/File;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    .end local v24    # "mainIndex":I
    .end local v31    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "scanRenamePath":Ljava/lang/String;
    :cond_22
    :goto_5
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    const-wide/16 v8, 0x3c

    cmp-long v2, v2, v8

    if-gez v2, :cond_c

    .line 525
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 526
    .restart local v31    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Sync"

    const-string/jumbo v3, "sync_photo_insert_in_one_minute"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 518
    .restart local v35    # "scanRenamePath":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    .line 520
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    .line 521
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    goto :goto_5
.end method

.method private static putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "exifInterface"    # Landroid/support/media/ExifInterface;
    .param p1, "exifkey"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "contentKey"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 745
    :goto_0
    return-void

    .line 741
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "SaveToCloudUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static putValuesForImage(Ljava/lang/String;Landroid/content/ContentValues;J)V
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "lastModified"    # J

    .prologue
    .line 771
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileMimeUtil;->hasExif(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 772
    new-instance v4, Landroid/support/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/support/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 773
    .local v4, "exifInterface":Landroid/support/media/ExifInterface;
    const-string v14, "ImageWidth"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    .line 774
    .local v12, "width":I
    const-string v14, "ImageLength"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 775
    .local v5, "height":I
    if-lez v12, :cond_0

    if-gtz v5, :cond_1

    .line 777
    :cond_0
    invoke-static/range {p0 .. p0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 778
    .local v2, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 779
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 781
    .end local v2    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const-string v14, "exifImageWidth"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string v14, "exifImageLength"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const-string v14, "exifOrientation"

    const-string v15, "Orientation"

    const/16 v16, 0x0

    .line 784
    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 783
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v14, "exifGPSLatitude"

    const-string v15, "GPSLatitude"

    .line 786
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 785
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v14, "exifGPSLongitude"

    const-string v15, "GPSLongitude"

    .line 788
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 787
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v14, "exifMake"

    const-string v15, "Make"

    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v14, "exifModel"

    const-string v15, "Model"

    .line 791
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 790
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v14, "Flash"

    const-string v15, "exifFlash"

    move-object/from16 v0, p1

    invoke-static {v4, v14, v0, v15}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 794
    const-string v14, "exifGPSLatitudeRef"

    const-string v15, "GPSLatitudeRef"

    .line 795
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 794
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v14, "exifGPSLongitudeRef"

    const-string v15, "GPSLongitudeRef"

    .line 797
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 796
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v14, "exifExposureTime"

    const-string v15, "ExposureTime"

    .line 799
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 798
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v14, "exifFNumber"

    const-string v15, "FNumber"

    .line 801
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 800
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v14, "exifISOSpeedRatings"

    const-string v15, "ISOSpeedRatings"

    .line 803
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 802
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v14, "exifGPSAltitude"

    const-string v15, "GPSAltitude"

    .line 805
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 804
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v14, "GPSAltitudeRef"

    const-string v15, "exifGPSAltitudeRef"

    move-object/from16 v0, p1

    invoke-static {v4, v14, v0, v15}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 808
    const-string v14, "exifGPSTimeStamp"

    const-string v15, "GPSTimeStamp"

    .line 809
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 808
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v14, "exifGPSDateStamp"

    const-string v15, "GPSDateStamp"

    .line 811
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 810
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v14, "WhiteBalance"

    const-string v15, "exifWhiteBalance"

    move-object/from16 v0, p1

    invoke-static {v4, v14, v0, v15}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 814
    const-string v14, "exifFocalLength"

    const-string v15, "FocalLength"

    .line 815
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 814
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v14, "exifGPSProcessingMethod"

    const-string v15, "GPSProcessingMethod"

    .line 817
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 816
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v14, "exifDateTime"

    const-string v15, "DateTime"

    .line 819
    invoke-virtual {v4, v15}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 818
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getDateTaken(Landroid/support/media/ExifInterface;J)J

    move-result-wide v10

    .line 821
    .local v10, "time":J
    const-string v14, "dateTaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 822
    const-string v14, "mixedDateTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->parseFlagsForImage(Ljava/lang/String;)J

    move-result-wide v8

    .line 825
    .local v8, "specialTypeFlags":J
    const-string/jumbo v14, "specialTypeFlags"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    invoke-static {v8, v9}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendNewPhotoStatic(J)V

    .line 828
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SampleStatistic;->hasUploadUserInfo()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    if-nez v14, :cond_3

    .line 829
    const/4 v6, 0x0

    .line 831
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/ExifUtil;->getXiaomiComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 832
    .local v13, "xiaomiComment":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 833
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 834
    .local v7, "json":Lorg/json/JSONObject;
    const-string v14, "sensor_type"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "front"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 835
    const-string v14, "imeimd5"

    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v15

    invoke-virtual {v15}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/miui/gallery/util/Encode;->MD5Encode([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    .line 837
    const-string/jumbo v14, "user_info"

    const-string v15, "self_shoot"

    invoke-static {v14, v15, v13}, Lcom/miui/gallery/util/GalleryStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/miui/gallery/preference/GalleryPreferences$SampleStatistic;->setUploadedUserInfo(Z)V

    .line 840
    const-string v14, "SaveToCloudUtil"

    const-string/jumbo v15, "upload xiaomi comment %s"

    invoke-static {v14, v15, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    .end local v7    # "json":Lorg/json/JSONObject;
    :cond_2
    if-eqz v6, :cond_3

    .line 847
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 864
    .end local v4    # "exifInterface":Landroid/support/media/ExifInterface;
    .end local v5    # "height":I
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v8    # "specialTypeFlags":J
    .end local v10    # "time":J
    .end local v12    # "width":I
    .end local v13    # "xiaomiComment":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 843
    .restart local v4    # "exifInterface":Landroid/support/media/ExifInterface;
    .restart local v5    # "height":I
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "specialTypeFlags":J
    .restart local v10    # "time":J
    .restart local v12    # "width":I
    :catch_0
    move-exception v3

    .line 844
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v14, "SaveToCloudUtil"

    invoke-static {v14, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 846
    if-eqz v6, :cond_3

    .line 847
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 861
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "exifInterface":Landroid/support/media/ExifInterface;
    .end local v5    # "height":I
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v8    # "specialTypeFlags":J
    .end local v10    # "time":J
    .end local v12    # "width":I
    :catch_1
    move-exception v3

    .line 862
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v14, "SaveToCloudUtil"

    const-string v15, "media scanner exif error %s"

    invoke-static {v14, v15, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 846
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "exifInterface":Landroid/support/media/ExifInterface;
    .restart local v5    # "height":I
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "specialTypeFlags":J
    .restart local v10    # "time":J
    .restart local v12    # "width":I
    :catchall_0
    move-exception v14

    if-eqz v6, :cond_4

    .line 847
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v14

    .line 852
    .end local v4    # "exifInterface":Landroid/support/media/ExifInterface;
    .end local v5    # "height":I
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v8    # "specialTypeFlags":J
    .end local v10    # "time":J
    .end local v12    # "width":I
    :cond_5
    invoke-static/range {p0 .. p0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 853
    .restart local v2    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 854
    .restart local v12    # "width":I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 855
    .restart local v5    # "height":I
    const-string v14, "exifImageWidth"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v14, "exifImageLength"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v14, "exifOrientation"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v14, "dateTaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    const-string v14, "mixedDateTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method private static putValuesForVideo(Landroid/content/Context;Ljava/lang/String;JLandroid/content/ContentValues;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 868
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/VideoAttrsReader;->read(Ljava/lang/String;)Lcom/miui/gallery/util/VideoAttrsReader;

    move-result-object v11

    .line 869
    .local v11, "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    const-string/jumbo v2, "title"

    invoke-virtual {v11}, Lcom/miui/gallery/util/VideoAttrsReader;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v11}, Lcom/miui/gallery/util/VideoAttrsReader;->getDuration()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long v3, v6, v12

    .line 871
    .local v3, "duration":J
    const-string v2, "duration"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 872
    const-string v2, "exifImageWidth"

    invoke-virtual {v11}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v2, "exifImageLength"

    invoke-virtual {v11}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    invoke-virtual {v11}, Lcom/miui/gallery/util/VideoAttrsReader;->getDateTaken()J

    move-result-wide v8

    .line 875
    .local v8, "dateTaken":J
    const-string v2, "dateTaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 876
    const-string v2, "mixedDateTime"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {p0, p1, v2, v0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->ensureLocation(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/ContentValues;)V

    .line 878
    const-string/jumbo v2, "specialTypeFlags"

    invoke-static {p1}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->parseFlagsForVideo(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    .line 880
    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->statVideoInfo(Landroid/content/Context;JLjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v3    # "duration":J
    .end local v8    # "dateTaken":J
    .end local v11    # "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v10

    .line 882
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "SaveToCloudUtil"

    const-string v5, "media scanner exif video error %s"

    invoke-static {v2, v5, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static requestSync(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 187
    new-instance v1, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 188
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v0

    .line 192
    .local v0, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 193
    return-void
.end method

.method public static saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const-wide/16 v4, -0x3

    .line 162
    :goto_0
    return-wide v4

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->parseSaveToCloud(Ljava/io/File;)Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;

    move-result-object v0

    .line 151
    .local v0, "saveToCloud":Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    if-nez v0, :cond_1

    .line 152
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 155
    .local v2, "start":J
    const/4 v4, 0x0

    invoke-static {p0, v0, p1, v4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->prepareInsert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)I

    move-result v1

    .line 159
    .local v1, "status":I
    const/4 v4, -0x7

    if-ne v4, v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isAlbumSyncable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    invoke-static {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->requestSync(Landroid/content/Context;)V

    .line 162
    :cond_2
    if-nez v1, :cond_3

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->insert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    int-to-long v4, v1

    goto :goto_0
.end method

.method public static saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/scanner/MediaBulkInserter;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;
    .param p2, "inserter"    # Lcom/miui/gallery/scanner/MediaBulkInserter;
    .param p3, "batchOperator"    # Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const-wide/16 v4, -0x3

    .line 183
    :goto_0
    return-wide v4

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->getSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->parseSaveToCloud(Ljava/io/File;)Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;

    move-result-object v0

    .line 171
    .local v0, "saveToCloud":Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    if-nez v0, :cond_1

    .line 172
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 175
    .local v2, "start":J
    invoke-static {p0, v0, p1, p3}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->prepareInsert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)I

    move-result v1

    .line 180
    .local v1, "status":I
    if-nez p2, :cond_2

    const/4 v4, -0x7

    if-ne v4, v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;->isAlbumSyncable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-static {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->requestSync(Landroid/content/Context;)V

    .line 183
    :cond_2
    if-nez v1, :cond_3

    invoke-static {p0, v0, p1, p2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->insert(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/scanner/MediaBulkInserter;)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    int-to-long v4, v1

    goto :goto_0
.end method

.method private static statVideoInfo(Landroid/content/Context;JLjava/lang/String;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 887
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 889
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "duration"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v1, "path"

    invoke-static {p0, p3}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string/jumbo v1, "size"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1fM"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-float v6, p4

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v1, "media_scanner"

    const-string/jumbo v2, "video_duration"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 895
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static toCloudEntry(Landroid/database/Cursor;)Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 931
    new-instance v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;-><init>(Lcom/miui/gallery/scanner/SaveToCloudUtil$1;)V

    .line 932
    .local v0, "cloudEntry":Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mID:J

    .line 933
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSize:J

    .line 934
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mName:Ljava/lang/String;

    .line 935
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mServerStatus:Ljava/lang/String;

    .line 936
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalFlag:I

    .line 937
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mSha1:Ljava/lang/String;

    .line 938
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalPath:Ljava/lang/String;

    .line 939
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mThumbnailPath:Ljava/lang/String;

    .line 940
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mServerId:Ljava/lang/String;

    .line 941
    return-object v0
.end method

.method private static toValues(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;JI)Landroid/content/ContentValues;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveToCloud"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
    .param p2, "albumId"    # J
    .param p4, "localFlag"    # I

    .prologue
    .line 705
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 706
    .local v0, "map":Landroid/content/ContentValues;
    const-string/jumbo v1, "size"

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const-string v1, "dateModified"

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 708
    const-string v1, "mimeType"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string/jumbo v1, "title"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v1, "fileName"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v1, "localFlag"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    iget-boolean v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mIsExifSha1:Z

    if-eqz v1, :cond_1

    .line 714
    const-string/jumbo v1, "thumbnailFile"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v1, "localFile"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_0
    const-string/jumbo v1, "sha1"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v1, "localGroupId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 723
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    const-string v1, "serverType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mLastModify:J

    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putValuesForImage(Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 730
    :cond_0
    :goto_1
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/data/LocationManager;->appendExtraGpsInfo(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 731
    return-object v0

    .line 719
    :cond_1
    const-string v1, "localFile"

    iget-object v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_2
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v1, "serverType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    iget-object v1, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mPath:Ljava/lang/String;

    iget-wide v2, p1, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;->mSize:J

    invoke-static {p0, v1, v2, v3, v0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->putValuesForVideo(Landroid/content/Context;Ljava/lang/String;JLandroid/content/ContentValues;)V

    goto :goto_1
.end method

.method private static update(Landroid/content/Context;Landroid/content/ContentValues;JLcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;Lcom/miui/gallery/provider/ContentProviderBatchOperator;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "id"    # J
    .param p4, "saveParams"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;
    .param p5, "batchOperator"    # Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-static {p4}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getWriteUri(Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p5, :cond_0

    .line 226
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    .line 227
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 225
    invoke-virtual {p5, p0, v1}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->add(Landroid/content/Context;Landroid/content/ContentProviderOperation;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v1, "_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v0, p1, v1, v2}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
