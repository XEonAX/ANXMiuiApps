.class public Lcom/miui/gallery/provider/GalleryOpenProvider;
.super Landroid/content/ContentProvider;
.source "GalleryOpenProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    }
.end annotation


# static fields
.field private static final CLOUD_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final NEED_RETURN_CONTENT_URI_SYSTEM_APPS:[Ljava/lang/String;

.field private static final PRIVACY_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const-class v0, Lcom/miui/gallery/provider/GalleryOpenProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.bluetooth"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->NEED_RETURN_CONTENT_URI_SYSTEM_APPS:[Ljava/lang/String;

    .line 186
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "serverType"

    aput-object v1, v0, v4

    const-string v1, "exifGPSLatitude"

    aput-object v1, v0, v5

    const-string v1, "exifGPSLatitudeRef"

    aput-object v1, v0, v6

    const-string v1, "exifGPSLongitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateTaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dateModified"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->CLOUD_COLUMNS:[Ljava/lang/String;

    .line 233
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "picasa_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "isprivate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "album"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mini_thumb_data"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "media_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 267
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "latitude"

    aput-object v1, v0, v3

    const-string v1, "longitude"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->PRIVACY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 63
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 311
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/provider/GalleryOpenProvider;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/GalleryOpenProvider;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentValues;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/miui/gallery/provider/GalleryOpenProvider;->filterPrivateColumns(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static filterPrivateColumns(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 304
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 305
    .local v1, "filterValues":Landroid/content/ContentValues;
    sget-object v3, Lcom/miui/gallery/provider/GalleryOpenProvider;->PRIVACY_COLUMNS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 306
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.open"

    const-string v2, "raw/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method private static isNeedReturnContentUriApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 721
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 729
    :cond_0
    :goto_0
    return v1

    .line 724
    :cond_1
    sget-object v4, Lcom/miui/gallery/provider/GalleryOpenProvider;->NEED_RETURN_CONTENT_URI_SYSTEM_APPS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 725
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 724
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "pkg":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 729
    goto :goto_0
.end method

.method private static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    sget-object v5, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v6, "no package name"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :goto_0
    return v4

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 740
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 741
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v2, v5

    .line 742
    .local v2, "isSystem":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 743
    sget-object v6, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "system app: %s"

    invoke-static {v6, v7, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 744
    goto :goto_0

    .end local v2    # "isSystem":Z
    :cond_1
    move v2, v4

    .line 741
    goto :goto_1

    .line 746
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    sget-object v5, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v6, "data app: %s"

    invoke-static {v5, v6, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static needReturnContentUri()Z
    .locals 2

    .prologue
    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needReturnContentUri(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 701
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    const/4 v2, 0x1

    .line 717
    :goto_0
    return v2

    .line 705
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 708
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 712
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 714
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no packageName assigned to intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 717
    :cond_2
    invoke-static {p0, v1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->isNeedReturnContentUriApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static needReturnContentUri(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->isNeedReturnContentUriApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prepareDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 602
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 603
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "CREATE TABLE media (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT UNIQUE COLLATE NOCASE,_size INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,media_type INTEGER,width INTEGER,height INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const-string v1, "CREATE VIEW image AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height FROM media WHERE media_type=1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 655
    const-string v1, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height FROM media WHERE media_type=2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    return-object v0
.end method

.method private query(Landroid/net/Uri;)Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    const/4 v8, 0x0

    .line 167
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    new-instance v9, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;-><init>(Lcom/miui/gallery/provider/GalleryOpenProvider;Lcom/miui/gallery/provider/GalleryOpenProvider$1;)V

    .line 168
    .local v9, "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9, v8}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->init(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "translate cursor to MediaInfo success: %s"

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v8, :cond_1

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    :cond_1
    :goto_1
    return-object v9

    .line 157
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v1, "internal query for file: %s"

    invoke-static {v0, v1, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/GalleryOpenProvider;->CLOUD_COLUMNS:[Ljava/lang/String;

    const-string v3, "microthumbfile=? OR thumbnailFile = ? OR localFile = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    const/4 v6, 0x1

    aput-object v10, v4, v6

    const/4 v6, 0x2

    aput-object v10, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 171
    .restart local v9    # "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v9, v10}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->init(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "translate file to MediaInfo success: %s"

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    if-eqz v8, :cond_1

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 175
    :cond_3
    :try_start_2
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "translate into MediaInfo failed: %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    if-eqz v8, :cond_4

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v5

    goto :goto_1

    .line 179
    .end local v9    # "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateToContent(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string v1, "content://com.miui.gallery.open/raw"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 687
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 688
    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 689
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    sget-object v1, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "query type for %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->query(Landroid/net/Uri;)Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;

    move-result-object v0

    .line 128
    .local v0, "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, v0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 132
    :goto_0
    return-object v1

    .line 131
    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "query type for %s failed."

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v1, "*/*"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryOpenProvider;->initialize()V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v1, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "open file for: %s"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "query uri: %s, %s, %s"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, p1, v3, p3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mCacheDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->prepareDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mCacheDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->query(Landroid/net/Uri;)Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;

    move-result-object v10

    .line 90
    .local v10, "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    if-nez v10, :cond_1

    .line 91
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "query failed, return a empty"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 105
    :goto_0
    return-object v0

    .line 86
    .end local v10    # "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    .restart local v10    # "info":Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mCacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "media"

    const/4 v3, 0x0

    invoke-virtual {v10}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->toContentValue()Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    .local v8, "id":J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_3

    .line 94
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "insert cache success: %d"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget v0, v10, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 97
    const-string v1, "image"

    .line 101
    .local v1, "table":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider;->mCacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "_id=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 102
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    .line 101
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 99
    .end local v1    # "table":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "video"

    .restart local v1    # "table":Ljava/lang/String;
    goto :goto_1

    .line 104
    .end local v1    # "table":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenProvider;->TAG:Ljava/lang/String;

    const-string v2, "insert failed, return null"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
