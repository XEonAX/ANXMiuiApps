.class public Lcom/miui/gallery/provider/GalleryDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;,
        Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;
    }
.end annotation


# static fields
.field private static final sCloudControlTables:[Ljava/lang/String;

.field private static final sCloudTables:[Ljava/lang/String;

.field private static sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

.field private static final sPeopleFaceTables:[Ljava/lang/String;

.field private static sViewNameVersionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumCoverKeyColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudCacheColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudControlColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudSettingColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudUserColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mDiscoveryMessageColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mEventColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mEventPhotoColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mFace2ImagesColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalUbifocusColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mNewFlagCacheColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mOldVersion:I

.field private mOwnerSubUbiImageColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleFaceColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleRecommendColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoGpsCacheColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mShareAlbumColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mShareImageColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mShareSubUbiImageColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mShareUserColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfoColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListLastModifyColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sViewNameVersionMap:Ljava/util/HashMap;

    .line 159
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sViewNameVersionMap:Ljava/util/HashMap;

    const-string v1, "extended_cloud"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sViewNameVersionMap:Ljava/util/HashMap;

    const-string v1, "extended_faceImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cloud"

    aput-object v1, v0, v4

    const-string/jumbo v1, "shareAlbum"

    aput-object v1, v0, v3

    const-string/jumbo v1, "shareUser"

    aput-object v1, v0, v6

    const-string/jumbo v1, "shareImage"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "cloudUser"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cloudCache"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "newFlagCache"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "userInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ownerSubUbifocus"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "peopleFace"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "faceToImages"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "peopleRecommend"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "shareSubUbifocus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "event"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "eventPhoto"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "albumCoverKey"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "recent_discovered_media"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "discovery_message"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cloudSetting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudTables:[Ljava/lang/String;

    .line 208
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cloudControl"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudControlTables:[Ljava/lang/String;

    .line 211
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "peopleFace"

    aput-object v1, v0, v4

    const-string v1, "faceToImages"

    aput-object v1, v0, v3

    const-string v1, "peopleRecommend"

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sPeopleFaceTables:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    const-string v0, "gallery.db"

    const/4 v1, 0x0

    const/16 v2, 0x5c

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    .line 288
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/GalleryDBHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillLocalFileAndAttributes(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableColumn"    # Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1407
    const/4 v2, 0x0

    .line 1408
    .local v2, "sqlAddColumnString":Ljava/lang/String;
    iget-object v3, p2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mDefault:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1409
    const-string v3, "ALTER TABLE %s ADD COLUMN %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v5, p2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    return-void

    .line 1415
    :cond_0
    const-string v3, "ALTER TABLE %s ADD COLUMN %s %s DEFAULT %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v5, p2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mDefault:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v1

    .line 1426
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "sql"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string v3, "dbversion"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    const-string v3, "exception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    const-string v3, "db_helper"

    const-string v4, "db_add_columns"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1430
    new-instance v3, Landroid/database/SQLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private addRecordsForCameraAndScreenshots(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2547
    new-instance v0, Lcom/miui/gallery/provider/GalleryDBHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$2;-><init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->addRecordsForCameraAndScreenshots(Lcom/miui/gallery/cloud/CloudUtils$Insertable;)V

    .line 2555
    return-void
.end method

.method private addUniqueIndexs(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo35(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1216
    return-void
.end method

.method private cleanCloudData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3062
    sget-object v3, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudTables:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 3064
    .local v1, "tableName":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3062
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3065
    :catch_0
    move-exception v0

    .line 3066
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GalleryDBHelper"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3069
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "tableName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private clearColumnList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 838
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    .line 842
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 843
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    .line 844
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 845
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    .line 846
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 847
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    .line 848
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 849
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    .line 850
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 851
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    .line 852
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 853
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    .line 854
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 855
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    .line 856
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 857
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    .line 858
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    .line 860
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 861
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    .line 862
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 863
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    .line 864
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 865
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    .line 866
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    .line 868
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    .line 870
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 871
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    .line 872
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 873
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    .line 874
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 875
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    .line 876
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    .line 878
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 879
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    .line 880
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    .line 882
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 883
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    .line 884
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 885
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    .line 886
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 887
    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    .line 888
    return-void
.end method

.method private createIndexOnCloudCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1198
    const-string v0, "create index index_cloudCache_serverId on %s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cloudCache"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "serverId"

    aput-object v3, v1, v2

    .line 1199
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1201
    return-void
.end method

.method private createIndexOnCloudTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_19(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1167
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_20(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1168
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_21(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1169
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1170
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1171
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1172
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_70(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1173
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_75(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1174
    return-void
.end method

.method private createIndexOnCloudTable_19(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1066
    const-string v0, "create index index_fileName on cloud (fileName)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1070
    const-string v0, "create index index_sort on cloud (dateModified DESC ,_id DESC)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1073
    return-void
.end method

.method private createIndexOnCloudTable_20(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1063
    return-void
.end method

.method private createIndexOnCloudTable_21(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1078
    const-string v0, "create index index_localFlag on cloud (localFlag)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1082
    const-string v0, "create index index_fileName_NOCASE on cloud (fileName COLLATE NOCASE)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1084
    const-string v0, "create index index_cloud_albumId on cloud (albumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1085
    return-void
.end method

.method private createIndexOnCloudTable_43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1088
    const-string v0, "create index if not exists index_mixed_datetime on cloud (mixedDateTime)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1089
    return-void
.end method

.method private createIndexOnCloudTable_51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1092
    const-string v0, "drop index index_mixed_datetime"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1093
    const-string v0, "create index if not exists index_cloud_mixed_exif_datetime on cloud (mixedDateTime, exifDateTime)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1094
    return-void
.end method

.method private createIndexOnCloudTable_53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1102
    const-string v0, "create index if not exists index_cloud_size on cloud (size)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1103
    return-void
.end method

.method private createIndexOnCloudTable_70(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1106
    const-string v0, "create index if not exists index_microthumbnail on cloud (groupId DESC, dateModified DESC)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1108
    return-void
.end method

.method private createIndexOnCloudTable_75(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1111
    const-string v0, "create index if not exists index_cloud_sha1 on cloud (sha1)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1112
    return-void
.end method

.method private createIndexOnCloudUserTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1194
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudUserTable_22(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1195
    return-void
.end method

.method private createIndexOnCloudUserTable_22(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1158
    const-string v0, "create index index_cloudUser_albumId on cloudUser (albumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1160
    const-string v0, "create index index_cloudUser_userId on cloudUser (userId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1162
    const-string v0, "create index index_cloudUser_localAlbumId on cloudUser (localAlbumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1163
    return-void
.end method

.method private createIndexOnFaceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2342
    const-string v0, "create index if not exists index_serverId_peopleFace on peopleFace (serverId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2343
    const-string v0, "create index if not exists index_groupId_peopleFace on peopleFace (groupId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2344
    const-string v0, "create index if not exists index_faceId_faceToImages on faceToImages (faceId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2345
    const-string v0, "create index if not exists index_imageServerId_faceToImages on faceToImages (imageServerId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2346
    return-void
.end method

.method private createIndexOnNewFlagCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1204
    const-string v0, "create index index_newFlagCache_albumId on %s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "newFlagCache"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "albumId"

    aput-object v3, v1, v2

    .line 1205
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1204
    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1207
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo32(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1208
    return-void
.end method

.method private createIndexOnPeopleRecommendTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2349
    const-string v0, "create index if not exists index_peopleServerID_peopleRecommend on peopleRecommend (peopleServerId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2350
    return-void
.end method

.method private createIndexOnShareAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareAlbumTable_21(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1178
    return-void
.end method

.method private createIndexOnShareAlbumTable_21(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1115
    const-string v0, "create index index_shareAlbum_albumId on shareAlbum (albumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1117
    const-string v0, "create index index_shareAlbum_creatorId on shareAlbum (creatorId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1118
    return-void
.end method

.method private createIndexOnShareImageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_21(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1187
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1188
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1189
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1190
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_70(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1191
    return-void
.end method

.method private createIndexOnShareImageTable_21(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1127
    const-string v0, "create index index_shareImage_albumId on shareImage (albumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1129
    const-string v0, "create index index_shareImage_creatorId on shareImage (creatorId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1130
    return-void
.end method

.method private createIndexOnShareImageTable_43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1133
    const-string v0, "create index if not exists index_mixed_datetime on shareImage (mixedDateTime)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1134
    return-void
.end method

.method private createIndexOnShareImageTable_51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1137
    const-string v0, "drop index index_mixed_datetime"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1138
    const-string v0, "create index if not exists index_shareimage_mixed_exif_datetime on shareimage (mixedDateTime, exifDateTime)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1139
    return-void
.end method

.method private createIndexOnShareImageTable_53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1144
    const-string v0, "create index if not exists index_shareimage_size on shareimage (size)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1145
    return-void
.end method

.method private createIndexOnShareImageTable_70(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1152
    const-string v0, "create index if not exists index_shareimage_microthumbnail on shareImage (groupId DESC, dateModified DESC)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1155
    return-void
.end method

.method private createIndexOnShareUserTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1181
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareUserTable_21(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1182
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareUserTable_22(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1183
    return-void
.end method

.method private createIndexOnShareUserTable_21(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1121
    const-string v0, "create index index_shareUser_albumId on shareUser (albumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1123
    const-string v0, "create index index_shareUser_userId on shareUser (userId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1124
    return-void
.end method

.method private createIndexOnShareUserTable_22(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1148
    const-string v0, "create index index_shareUser_localAlbumId on shareUser (localAlbumId)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1149
    return-void
.end method

.method private createIndexOnWhiteListLastModifyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1211
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_path ON whiteListLastModify (path)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1212
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "tableColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1223
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    .line 1224
    .local v1, "column":Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;
    iget-object v3, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mDefault:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1225
    const-string v3, " %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :goto_1
    iget-boolean v3, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->isUnique:Z

    if-eqz v3, :cond_0

    .line 1231
    const-string v3, " UNIQUE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :cond_0
    if-nez v2, :cond_1

    .line 1235
    const-string v3, " PRIMARY KEY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    :cond_1
    const-string v3, "_id"

    iget-object v4, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1239
    const-string v3, " AUTOINCREMENT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 1243
    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1227
    :cond_4
    const-string v3, " %s %s DEFAULT %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mDefault:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1248
    .end local v1    # "column":Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;
    :cond_5
    const-string v3, "CREATE TABLE IF NOT EXISTS %s (%s)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v6

    .line 1249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1248
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1251
    const-string v3, "cloud"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1252
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1272
    :cond_6
    :goto_2
    return-void

    .line 1253
    :cond_7
    const-string/jumbo v3, "shareAlbum"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1254
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1255
    :cond_8
    const-string/jumbo v3, "shareUser"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1256
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareUserTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1257
    :cond_9
    const-string/jumbo v3, "shareImage"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1258
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1259
    :cond_a
    const-string v3, "cloudUser"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1260
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudUserTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1261
    :cond_b
    const-string v3, "cloudCache"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1262
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1263
    :cond_c
    const-string v3, "newFlagCache"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1264
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnNewFlagCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1265
    :cond_d
    const-string/jumbo v3, "whiteListLastModify"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1266
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnWhiteListLastModifyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1267
    :cond_e
    const-string v3, "faceToImages"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1268
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnFaceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 1269
    :cond_f
    const-string v3, "peopleRecommend"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1270
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnPeopleRecommendTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2
.end method

.method private static createViewByName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "viewName"    # Ljava/lang/String;

    .prologue
    .line 1275
    const-string v0, "extended_cloud"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    invoke-static {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->createViewExtendedCloud(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    const-string v0, "extended_faceImage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-static {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->createViewExtendedFaceImage(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private static createViewExtendedCloud(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1286
    const-string v2, "DROP VIEW IF EXISTS extended_cloud;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1288
    const-string v0, "cloud._id AS _id,cloud.sha1 AS sha1,microthumbfile AS microthumbfile,thumbnailFile AS thumbnailFile,localFile AS localFile,serverType AS serverType,title AS title,duration AS duration,description AS description,location AS location,size AS size,localGroupId AS localGroupId,mimeType AS mimeType,exifGPSLatitude AS exifGPSLatitude,exifGPSLatitudeRef AS exifGPSLatitudeRef,exifGPSLongitude AS exifGPSLongitude,exifGPSLongitudeRef AS exifGPSLongitudeRef,exifOrientation AS exifOrientation,secretKey AS secretKey,localFlag AS localFlag,mixedDateTime AS mixedDateTime,dateTaken AS dateTaken,exifImageWidth AS exifImageWidth,exifImageLength AS exifImageLength,serverStatus AS serverStatus,dateModified AS dateModified,creatorId AS creatorId,serverTag AS serverTag,serverId AS serverId,fileName AS fileName,groupId AS groupId,ubiSubImageCount AS ubiSubImageCount,ubiSubIndex AS ubiSubIndex,ubiFocusIndex AS ubiFocusIndex,babyInfoJson AS babyInfoJson,isFavorite AS isFavorite,specialTypeFlags AS specialTypeFlags"

    .line 1326
    .local v0, "columns":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "favorites"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "favorites"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, "select":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE VIEW extended_cloud AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method public static createViewExtendedFaceImage(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 1337
    const-string v2, "DROP VIEW IF EXISTS extended_faceImage;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1339
    const-string v0, "peopleFace._id AS _id,peopleFace.serverId AS serverId,peopleFace.groupId AS groupId,peopleFace.localGroupId AS localGroupId,microthumbfile AS microthumbfile,thumbnailFile AS thumbnailFile,dateTaken AS dateTaken,mixedDateTime AS mixedDateTime,mimeType AS mimeType,duration AS duration,location AS location,size AS size,exifImageWidth AS exifImageWidth,exifImageLength AS exifImageLength,exifOrientation AS exifOrientation,exifGPSLatitude AS exifGPSLatitude,exifGPSLatitudeRef AS exifGPSLatitudeRef,exifGPSLongitude AS exifGPSLongitude,exifGPSLongitudeRef AS exifGPSLongitudeRef,serverType AS serverType,localFile AS localFile,specialTypeFlags AS specialTypeFlags,fileName AS fileName,sha1 AS sha1,title AS title,dateModified AS dateModified,ubiSubImageCount AS ubiSubImageCount,ubiSubIndex AS ubiSubIndex,ubiFocusIndex AS ubiFocusIndex,secretKey AS secretKey,faceXScale AS faceXScale,faceYScale AS faceYScale,faceWScale AS faceWScale,faceHScale AS faceHScale,leftEyeXScale AS leftEyeXScale,leftEyeYScale AS leftEyeYScale,RightEyeXScale AS RightEyeXScale,RightEyeYScale AS RightEyeYScale,peopleFace.localFlag AS localFlag,peopleFace.serverStatus AS serverStatus,cloud._id AS photo_id,cloud.serverId AS photo_server_id,faceCoverScore AS faceCoverScore"

    .line 1383
    .local v0, "columns":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "peopleFace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "faceToImages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "peopleFace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "faceId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imageServerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "groupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, -0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, "select":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE VIEW extended_faceImage AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method private createViewIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "forceCreate"    # Z

    .prologue
    .line 1919
    sget-object v2, Lcom/miui/gallery/provider/GalleryDBHelper;->sViewNameVersionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1920
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$DataBase;->getViewVerison(Ljava/lang/String;)I

    move-result v1

    .line 1921
    .local v1, "oldVersion":I
    if-nez p2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1922
    :cond_1
    const-string v2, "GalleryDBHelper"

    const-string v3, "recreate view: [%s], oldVersion: [%d], newVersion: [%d]"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v3, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1923
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->createViewByName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1924
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$DataBase;->setViewVersion(Ljava/lang/String;I)V

    goto :goto_0

    .line 1927
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "oldVersion":I
    :cond_2
    sget-object v2, Lcom/miui/gallery/provider/GalleryDBHelper;->sViewNameVersionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1928
    return-void
.end method

.method private deleteVideoThumbnailFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2988
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/gallery/provider/GalleryDBHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$6;-><init>(Lcom/miui/gallery/provider/GalleryDBHelper;Ljava/util/ArrayList;)V

    .line 3007
    invoke-virtual {v0}, Lcom/miui/gallery/provider/GalleryDBHelper$6;->run()V

    .line 3008
    return-void
.end method

.method private fixCameraAlbumAttributes(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v8, 0x10

    .line 1886
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1887
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "attributes"

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1888
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%d and (%s & %d)=%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "serverId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "attributes"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1889
    .local v1, "where":Ljava/lang/String;
    const-string v2, "cloud"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getCloudControlTables()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3058
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudControlTables:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudControlTables:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCloudTables()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3054
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudTables:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/provider/GalleryDBHelper;->sCloudTables:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnIndex"    # I

    .prologue
    .line 3126
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3127
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;
    .locals 2

    .prologue
    .line 283
    const-class v1, Lcom/miui/gallery/provider/GalleryDBHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const-class v1, Lcom/miui/gallery/provider/GalleryDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/provider/GalleryDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    .line 279
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPeopleFaceTables()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3050
    sget-object v0, Lcom/miui/gallery/provider/GalleryDBHelper;->sPeopleFaceTables:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/provider/GalleryDBHelper;->sPeopleFaceTables:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getVideosExceptCreated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "whereCause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3012
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "sha1"

    aput-object v0, v2, v1

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3016
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 3018
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    .local v9, "sha1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3020
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3025
    .end local v9    # "sha1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9    # "sha1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3028
    .end local v9    # "sha1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v9

    :cond_1
    move-object v9, v4

    goto :goto_1
.end method

.method private initCloudColumns()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 292
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "groupId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "size"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mimeType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "description"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fileName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateTaken"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "duration"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageWidth"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageLength"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifOrientation"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifMake"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifModel"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFlash"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifExposureTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFNumber"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifISOSpeedRatings"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitudeRef"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSTimeStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSDateStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifWhiteBalance"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFocalLength"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSProcessingMethod"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifDateTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "thumbnailFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sha1"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sortBy"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "microthumbfile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localImageId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "canModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareUrl"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumUserTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "newImageFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "newUserFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "creatorId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "isPublic"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "publicUrl"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileStatus"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mixedDateTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiSubImageCount"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiFocusIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiSubIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "editedColumns"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fromLocalGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "secretKey"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "appKey"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "babyInfoJson"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "peopleId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "lables"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "thumbnailInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "location"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "attributes"

    const-string v3, "integer"

    .line 390
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "extraGPS"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "address"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "specialTypeFlags"

    const-string v3, "integer"

    .line 398
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private refillBabyAlbumDataTaken(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2672
    const-string v1, "cloud"

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " NOT ( %s is null )"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "peopleId"

    aput-object v6, v5, v7

    .line 2673
    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/provider/GalleryDBHelper$3;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$3;-><init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, p1

    move-object v5, v4

    .line 2672
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 2699
    return-void
.end method

.method private refillIsFavorite(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 2920
    new-instance v6, Lcom/miui/gallery/provider/GalleryDBHelper$5;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$5;-><init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2949
    .local v6, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/lang/Void;>;"
    const-string v1, "cloud"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "description"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "sha1"

    aput-object v3, v2, v0

    const-string v3, "serverType IN (1,2) AND description NOT NULL AND description != \'\' AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 2960
    return-void
.end method

.method private refillLocalFileAndAttributes(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # I
    .param p3, "localFile"    # Ljava/lang/String;
    .param p4, "autoUpload"    # Z
    .param p5, "showInPhotosTab"    # Z

    .prologue
    .line 2631
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v0

    .line 2634
    .local v0, "transformed":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "update %s set %s=\'%s\', %s=((%s & ~%d) | %d | %d), %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=%d"

    const/16 v2, 0xf

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cloud"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "localFile"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object p3, v5, v2

    const/4 v2, 0x3

    const-string v3, "attributes"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "attributes"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    const-wide/16 v6, 0x5

    .line 2640
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v6, 0x6

    if-eqz p4, :cond_0

    const-wide/16 v2, 0x1

    .line 2642
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v6, 0x7

    if-eqz p5, :cond_1

    const-wide/16 v2, 0x4

    .line 2643
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/16 v2, 0x8

    const-string v3, "editedColumns"

    aput-object v3, v5, v2

    const/16 v2, 0x9

    const-string v3, "editedColumns"

    aput-object v3, v5, v2

    const/16 v2, 0xa

    aput-object v0, v5, v2

    const/16 v2, 0xb

    aput-object v0, v5, v2

    const/16 v2, 0xc

    aput-object v0, v5, v2

    const/16 v2, 0xd

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/16 v2, 0xe

    .line 2647
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 2634
    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2648
    return-void

    .line 2640
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 2642
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public static refillLocalGroupId(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "fillOwner"    # Z
    .param p2, "fillSharer"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2597
    if-eqz p1, :cond_0

    .line 2598
    const-string v1, "cloud"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "serverId"

    aput-object v0, v2, v9

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%s AND %s=\'%s\'"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "serverType"

    aput-object v6, v5, v8

    .line 2605
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "serverStatus"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    const-string v7, "custom"

    aput-object v7, v5, v6

    .line 2604
    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;

    const-string v0, "cloud"

    const-string v5, "groupId"

    invoke-direct {v6, p0, v0, v5}, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, v4

    .line 2598
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 2613
    :cond_0
    if-eqz p2, :cond_1

    .line 2614
    const-string/jumbo v1, "shareAlbum"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "albumId"

    aput-object v0, v2, v9

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=\'%s\'"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "serverStatus"

    aput-object v6, v5, v8

    const-string v6, "custom"

    aput-object v6, v5, v9

    .line 2620
    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;

    const-string/jumbo v0, "shareImage"

    const-string v5, "albumId"

    invoke-direct {v6, p0, v0, v5}, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, v4

    .line 2614
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 2627
    :cond_1
    return-void
.end method

.method private refillLocalGroupId(Landroid/database/sqlite/SQLiteDatabase;ZZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z
    .param p4, "isReCreateShareAlbumTable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2592
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    :goto_1
    invoke-static {p1, v2, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillLocalGroupId(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 2594
    return-void

    :cond_0
    move v2, v1

    .line 2592
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private refillRelationTypeOfPeople(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2702
    const-string v1, "peopleFace"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "peopleContactJsonInfo"

    aput-object v0, v2, v5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " NOT ( %s is null )"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "peopleContactJsonInfo"

    aput-object v6, v5, v7

    .line 2704
    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/provider/GalleryDBHelper$4;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$4;-><init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, p1

    move-object v5, v4

    .line 2702
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 2733
    return-void
.end method

.method private replaceHongMiFilePath(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 2075
    sget-boolean v5, Lcom/miui/os/Device;->IS_HONGMI:Z

    if-eqz v5, :cond_0

    .line 2078
    new-array v3, v12, [Ljava/lang/String;

    const-string v5, "localFile"

    aput-object v5, v3, v6

    const-string/jumbo v5, "thumbnailFile"

    aput-object v5, v3, v10

    const-string v5, "microthumbfile"

    aput-object v5, v3, v11

    .line 2083
    .local v3, "filePathColumnNamesInCloud":[Ljava/lang/String;
    const-string/jumbo v4, "update %s set %s = substr(%s, 0, 16) || (substr(%s, 10, 7) = \'sdcard0\') ||  substr(%s, 17) where substr(%s, 10, 7) = \'sdcard1\' OR substr(%s, 10, 7) = \'sdcard0\' "

    .line 2086
    .local v4, "sqlFormatString":Ljava/lang/String;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v3, v5

    .line 2087
    .local v2, "filePathColumnName":Ljava/lang/String;
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "cloud"

    aput-object v9, v8, v6

    aput-object v2, v8, v10

    aput-object v2, v8, v11

    aput-object v2, v8, v12

    aput-object v2, v8, v13

    const/4 v9, 0x5

    aput-object v2, v8, v9

    const/4 v9, 0x6

    aput-object v2, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2091
    .local v0, "covertCloud":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2093
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "shareImage"

    aput-object v9, v8, v6

    aput-object v2, v8, v10

    aput-object v2, v8, v11

    aput-object v2, v8, v12

    aput-object v2, v8, v13

    const/4 v9, 0x5

    aput-object v2, v8, v9

    const/4 v9, 0x6

    aput-object v2, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2097
    .local v1, "covertShareImage":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2086
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2100
    .end local v0    # "covertCloud":Ljava/lang/String;
    .end local v1    # "covertShareImage":Ljava/lang/String;
    .end local v2    # "filePathColumnName":Ljava/lang/String;
    .end local v3    # "filePathColumnNamesInCloud":[Ljava/lang/String;
    .end local v4    # "sqlFormatString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 1040
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    const/4 v1, 0x1

    .line 1045
    :goto_0
    return v1

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GalleryDBHelper"

    const-string v2, "fail to execSQL: %s , detail: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1045
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setAllSyncTagAsDefault(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3032
    const-string v1, "GalleryDBHelperConvertOldData"

    const-string v2, "setAllSyncTagAsDefault, url != 2.1"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3035
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "syncTag"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3037
    const-string/jumbo v1, "shareSyncTagAlbumList"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3038
    const-string/jumbo v1, "shareSyncTagAlbumInfo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3039
    const-string/jumbo v1, "shareSyncTagImageList"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3040
    const-string v1, "cloudSetting"

    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3042
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3044
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "albumImageTag"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3045
    const-string/jumbo v1, "shareAlbum"

    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3046
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 3047
    return-void
.end method

.method private updateCameraAlbumValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v10, -0x3e7

    .line 2899
    const-wide/16 v0, -0x3e7

    .line 2900
    .local v0, "CAMERA_RECORD_TIME":J
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "UPDATE %s SET %s=%d, %s=%d, %s=(CASE WHEN %s=null THEN null WHEN %s>%d THEN %d ELSE %s END) WHERE %s=%d"

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cloud"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "dateTaken"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 2907
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "mixedDateTime"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 2909
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "sortBy"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "sortBy"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "sortBy"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-wide/16 v8, -0x3ea

    .line 2912
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "sortBy"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "serverId"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-wide/16 v8, 0x1

    .line 2913
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2900
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2916
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2917
    return-void
.end method

.method private upgradeTo21(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateCloudSettingsTable"    # Z

    .prologue
    .line 1932
    if-nez p2, :cond_0

    .line 1934
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1935
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1936
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1937
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_21(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1939
    :cond_0
    if-nez p3, :cond_1

    .line 1941
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1942
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1943
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1944
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1946
    :cond_1
    const-string/jumbo v0, "shareAlbum"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1947
    const-string/jumbo v0, "shareImage"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1948
    const-string/jumbo v0, "shareUser"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1949
    return-void
.end method

.method private upgradeTo22(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateShareUserTable"    # Z
    .param p3, "isReCreateCloudSettingsTable"    # Z

    .prologue
    .line 1952
    if-nez p2, :cond_0

    .line 1954
    const-string/jumbo v1, "shareUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1955
    const-string/jumbo v1, "shareUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1956
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareUserTable_22(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1958
    :cond_0
    if-nez p3, :cond_1

    .line 1959
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1961
    :cond_1
    const-string v0, "cloudUser"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1962
    return-void
.end method

.method private upgradeTo23(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateShareAlbumTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 1966
    if-nez p2, :cond_0

    .line 1967
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1968
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1969
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1970
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1972
    :cond_0
    if-nez p3, :cond_1

    .line 1973
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1975
    :cond_1
    return-void
.end method

.method private upgradeTo24(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateShareAlbumTable"    # Z

    .prologue
    .line 1978
    if-nez p2, :cond_0

    .line 1979
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1981
    :cond_0
    return-void
.end method

.method private upgradeTo25(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloud"    # Z

    .prologue
    .line 1984
    if-nez p2, :cond_0

    .line 1985
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1987
    :cond_0
    return-void
.end method

.method private upgradeTo26(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloud"    # Z
    .param p3, "isReCreateShareAlbum"    # Z

    .prologue
    .line 1990
    if-nez p2, :cond_0

    .line 1991
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1992
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1994
    :cond_0
    if-nez p3, :cond_1

    .line 1995
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1997
    :cond_1
    return-void
.end method

.method private upgradeTo27(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloud"    # Z

    .prologue
    .line 2000
    if-nez p2, :cond_0

    .line 2001
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2003
    :cond_0
    return-void
.end method

.method private upgradeTo28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2006
    const-string v0, "cloudCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2007
    return-void
.end method

.method private upgradeTo29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2010
    const-string v0, "newFlagCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2011
    return-void
.end method

.method private upgradeTo31(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloud"    # Z
    .param p3, "isReCreateShareAlbum"    # Z

    .prologue
    .line 2026
    if-nez p2, :cond_0

    .line 2027
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2028
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2030
    :cond_0
    if-nez p3, :cond_1

    .line 2031
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2032
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2040
    :cond_1
    iget v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2041
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->cleanCloudData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2043
    :cond_2
    return-void
.end method

.method private upgradeTo32(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2014
    const-string v0, "CREATE INDEX index_cloud_server_type on cloud (serverType)"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2015
    return-void
.end method

.method private upgradeTo33(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2018
    const-string/jumbo v0, "userInfo"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2019
    return-void
.end method

.method private upgradeTo34(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2022
    const-string/jumbo v0, "whiteListLastModify"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2023
    return-void
.end method

.method private upgradeTo35(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2046
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_serverId ON %s (%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "cloud"

    aput-object v2, v1, v3

    const-string v2, "serverId"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2049
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_albumId ON %s (%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "shareAlbum"

    aput-object v2, v1, v3

    const-string v2, "albumId"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2052
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_shareId ON %s (%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "shareImage"

    aput-object v2, v1, v3

    const-string/jumbo v2, "shareId"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2055
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS index_path ON %s (%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "whiteListLastModify"

    aput-object v2, v1, v3

    const-string v2, "path"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2057
    return-void
.end method

.method private upgradeTo36(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloud"    # Z
    .param p3, "isReCreateShareImage"    # Z

    .prologue
    .line 2060
    if-nez p2, :cond_0

    .line 2061
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2062
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2064
    :cond_0
    if-nez p3, :cond_1

    .line 2065
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2066
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2068
    :cond_1
    return-void
.end method

.method private upgradeTo37(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2071
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->replaceHongMiFilePath(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2072
    return-void
.end method

.method private upgradeTo38(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudSettingsTable"    # Z

    .prologue
    .line 2103
    if-nez p2, :cond_0

    .line 2104
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2106
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->setAllSyncTagAsDefault(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2107
    return-void
.end method

.method private upgradeTo39(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2110
    const-string v0, "photoGpsCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2111
    return-void
.end method

.method private upgradeTo40(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2117
    const-string v0, "DROP TABLE IF EXISTS photoGpsCache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2118
    const-string v0, "photoGpsCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2119
    return-void
.end method

.method private upgradeTo41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x4

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2126
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, " %s = %d AND ( %s != %d OR %s != %d OR %s != %d )"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "serverType"

    aput-object v7, v6, v9

    .line 2129
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "localFlag"

    aput-object v7, v6, v8

    const/4 v7, 0x3

    .line 2130
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "localFlag"

    aput-object v7, v6, v11

    const/4 v7, 0x5

    .line 2131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "localFlag"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 2132
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    .line 2126
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2134
    .local v3, "whereCauseString":Ljava/lang/String;
    const-string v4, "cloud"

    invoke-direct {p0, p1, v4, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getVideosExceptCreated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2135
    .local v0, "cloudVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "shareImage"

    invoke-direct {p0, p1, v4, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getVideosExceptCreated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2137
    .local v2, "shareImageVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    .line 2138
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2139
    :cond_1
    const-string v4, "GalleryDBHelper"

    const-string v5, "none video in database, skip delete and resync."

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :goto_0
    return-void

    .line 2144
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM %s WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "deleteSql":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2146
    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "cloud"

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2147
    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->deleteVideoThumbnailFile(Ljava/util/ArrayList;)V

    .line 2149
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2150
    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "shareImage"

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->deleteVideoThumbnailFile(Ljava/util/ArrayList;)V

    .line 2155
    :cond_4
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/util/deprecated/Preference;->sSetLastSlowScanTime(J)V

    .line 2156
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->setAllSyncTagAsDefault(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private upgradeTo42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2160
    iget v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v1, 0x25

    if-le v0, v1, :cond_1

    .line 2167
    :cond_0
    const-string v0, "GalleryDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade to 42, should clean data, oldVesion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->cleanCloudData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2169
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->setDBUpgradeTo42()V

    .line 2170
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 2172
    :cond_1
    return-void
.end method

.method private upgradeTo43(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2176
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "CASE WHEN %1$s IS NULL THEN %2$s ELSE strftime(\'%%s000\', substr(%1$s, 0, 5)||\'-\'||substr(%1$s, 6, 2)||\'-\'||substr(%1$s,9,2)||\' \'||substr(%1$s, 11, 9)||\'.000\')%3$+d END"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "exifDateTime"

    aput-object v4, v3, v5

    const-string v4, "dateModified"

    aput-object v4, v3, v6

    .line 2182
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 2177
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2184
    .local v0, "sqlConvertDateTime":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2185
    const-string v2, "cloud"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v3, 0x37

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v2, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2186
    const-string v1, "UPDATE %s SET %s = %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "cloud"

    aput-object v3, v2, v5

    const-string v3, "mixedDateTime"

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2191
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2194
    :cond_0
    if-nez p3, :cond_1

    .line 2195
    const-string/jumbo v2, "shareImage"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v2, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2196
    const-string v1, "UPDATE %s SET %s = %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "shareImage"

    aput-object v3, v2, v5

    const-string v3, "mixedDateTime"

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2201
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2203
    :cond_1
    return-void
.end method

.method private upgradeTo44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2207
    const-string v0, "localUbifocus"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2208
    return-void
.end method

.method private upgradeTo45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2212
    const-string v0, "cloud"

    invoke-static {v0}, Lcom/miui/gallery/util/deprecated/Time;->getUpgradeMixedDateTimeSqlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2214
    const-string/jumbo v0, "shareImage"

    invoke-static {v0}, Lcom/miui/gallery/util/deprecated/Time;->getUpgradeMixedDateTimeSqlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2215
    return-void
.end method

.method private upgradeTo46(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudSettingsTable"    # Z
    .param p3, "isReCreateShareAlbumTable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2218
    if-nez p2, :cond_0

    .line 2219
    const-string v2, "cloudSetting"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v2, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2221
    :cond_0
    if-nez p3, :cond_1

    .line 2222
    const-string/jumbo v2, "shareAlbum"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v2, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2225
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2226
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "syncInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    const-string v1, "cloudSetting"

    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2229
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncFetchSyncExtraInfoFromV2ToV3(Z)V

    .line 2230
    return-void
.end method

.method private upgradeTo47(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2234
    const-string v0, "ownerSubUbifocus"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2235
    const-string/jumbo v0, "shareSubUbifocus"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2236
    if-nez p2, :cond_0

    .line 2237
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2238
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2239
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2241
    :cond_0
    if-nez p3, :cond_1

    .line 2242
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2243
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2244
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2246
    :cond_1
    return-void
.end method

.method private upgradeTo48(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2250
    if-nez p2, :cond_0

    .line 2251
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2253
    :cond_0
    if-nez p3, :cond_1

    .line 2254
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2256
    :cond_1
    return-void
.end method

.method private upgradeTo49(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2259
    if-nez p2, :cond_0

    .line 2260
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2262
    :cond_0
    if-nez p3, :cond_1

    .line 2263
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2265
    :cond_1
    return-void
.end method

.method private upgradeTo50(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudSettingsTable"    # Z

    .prologue
    .line 2268
    if-nez p2, :cond_0

    .line 2269
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2271
    :cond_0
    return-void
.end method

.method private upgradeTo51(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2275
    if-nez p2, :cond_0

    .line 2276
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2278
    :cond_0
    if-nez p3, :cond_1

    .line 2279
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2281
    :cond_1
    return-void
.end method

.method private upgradeTo52(Landroid/database/sqlite/SQLiteDatabase;ZZZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z
    .param p4, "isReCreateOwnerSubUbi"    # Z
    .param p5, "isReCreateSharerSubUbi"    # Z

    .prologue
    .line 2286
    if-nez p2, :cond_0

    .line 2287
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2289
    :cond_0
    if-nez p3, :cond_1

    .line 2290
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2292
    :cond_1
    if-nez p4, :cond_2

    .line 2293
    const-string v1, "ownerSubUbifocus"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x33

    .line 2294
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    .line 2293
    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2296
    :cond_2
    if-nez p5, :cond_3

    .line 2297
    const-string/jumbo v1, "shareSubUbifocus"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x35

    .line 2298
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    .line 2297
    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2300
    :cond_3
    return-void
.end method

.method private upgradeTo53(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2304
    if-nez p2, :cond_0

    .line 2305
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2307
    :cond_0
    if-nez p3, :cond_1

    .line 2308
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2310
    :cond_1
    return-void
.end method

.method private upgradeTo54(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z

    .prologue
    .line 2313
    if-nez p2, :cond_0

    .line 2314
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2316
    :cond_0
    return-void
.end method

.method private upgradeTo55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2319
    const-string v0, "peopleFace"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2320
    const-string v0, "faceToImages"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2321
    return-void
.end method

.method private upgradeTo56(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudSettingsTable"    # Z

    .prologue
    .line 2324
    if-nez p2, :cond_0

    .line 2325
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2326
    const-string v1, "cloudSetting"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2328
    :cond_0
    return-void
.end method

.method private upgradeTo58(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2353
    const-string v0, "peopleRecommend"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2354
    if-nez p2, :cond_0

    .line 2355
    const-string v1, "peopleFace"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2357
    :cond_0
    return-void
.end method

.method private upgradeTo59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2360
    const-string v0, "event"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2361
    const-string v0, "eventPhoto"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2362
    return-void
.end method

.method private upgradeTo61(Z)V
    .locals 0
    .param p1, "isFaceTablesExist"    # Z

    .prologue
    .line 2365
    if-eqz p1, :cond_0

    .line 2369
    :cond_0
    return-void
.end method

.method private upgradeTo62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2372
    const-string v0, "albumCoverKey"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2373
    return-void
.end method

.method private upgradeTo63(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2331
    if-nez p2, :cond_0

    .line 2332
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2333
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2336
    :cond_0
    if-nez p3, :cond_1

    .line 2337
    const-string v1, "peopleFace"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2339
    :cond_1
    return-void
.end method

.method private upgradeTo64(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudUserTable"    # Z
    .param p3, "isReCreateShareUserTable"    # Z

    .prologue
    const/16 v3, 0xe

    const/16 v2, 0xd

    .line 2377
    if-nez p2, :cond_0

    .line 2378
    const-string v1, "cloudUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2379
    const-string v1, "cloudUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2381
    :cond_0
    if-nez p3, :cond_1

    .line 2382
    const-string/jumbo v1, "shareUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2383
    const-string/jumbo v1, "shareUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2385
    :cond_1
    return-void
.end method

.method private upgradeTo65(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateShareAlbumTable"    # Z

    .prologue
    .line 2388
    if-nez p2, :cond_0

    .line 2389
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2390
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2391
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2393
    :cond_0
    return-void
.end method

.method private upgradeTo66(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateShareAlbumTable"    # Z

    .prologue
    .line 2396
    if-nez p2, :cond_0

    .line 2397
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2399
    :cond_0
    return-void
.end method

.method private upgradeTo67(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2403
    if-nez p3, :cond_0

    .line 2404
    const-string/jumbo v1, "shareImage"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2407
    :cond_0
    if-nez p2, :cond_1

    .line 2408
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x41

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2410
    :cond_1
    return-void
.end method

.method private upgradeTo68(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudUserTable"    # Z

    .prologue
    .line 2413
    if-nez p2, :cond_0

    .line 2414
    const-string v1, "cloudUser"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2416
    :cond_0
    return-void
.end method

.method private upgradeTo69(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareAlbumTable"    # Z

    .prologue
    .line 2420
    if-nez p2, :cond_0

    .line 2421
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2423
    :cond_0
    if-nez p3, :cond_1

    .line 2424
    const-string/jumbo v1, "shareAlbum"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2426
    :cond_1
    return-void
.end method

.method private upgradeTo70(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2429
    if-nez p2, :cond_0

    .line 2430
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_70(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2433
    :cond_0
    if-nez p3, :cond_1

    .line 2434
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnShareImageTable_70(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2436
    :cond_1
    return-void
.end method

.method private upgradeTo71(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2440
    const-string v0, "eventPhoto"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2441
    return-void
.end method

.method private upgradeTo72(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2444
    if-nez p2, :cond_0

    .line 2445
    const-string v1, "peopleFace"

    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2447
    :cond_0
    return-void
.end method

.method private upgradeTo73(Landroid/database/sqlite/SQLiteDatabase;ZZZ)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z
    .param p4, "isReCreateShareAlbumTable"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 2451
    if-nez p2, :cond_0

    .line 2452
    const-string v0, "cloud"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "location"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2453
    const-string v0, "cloud"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "attributes"

    const-string v3, "integer"

    .line 2454
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2456
    :cond_0
    if-nez p3, :cond_1

    .line 2457
    const-string/jumbo v0, "shareImage"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "location"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2459
    :cond_1
    if-nez p4, :cond_2

    .line 2460
    const-string/jumbo v0, "shareAlbum"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "attributes"

    const-string v3, "integer"

    .line 2461
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2463
    :cond_2
    invoke-static {}, Lcom/miui/gallery/data/LocationGenerator;->getInstance()Lcom/miui/gallery/data/LocationGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/LocationGenerator;->generate(Landroid/content/Context;)V

    .line 2465
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addRecordsForCameraAndScreenshots(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2467
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillLocalGroupId(Landroid/database/sqlite/SQLiteDatabase;ZZZ)V

    .line 2469
    return-void
.end method

.method private upgradeTo74(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2472
    if-nez p2, :cond_0

    .line 2473
    const-string v1, "cloud"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "description"

    aput-object v0, v2, v6

    const-string v0, "fileName"

    aput-object v0, v2, v8

    const-string v0, "appKey"

    aput-object v0, v2, v9

    const-string v0, "serverId"

    aput-object v0, v2, v10

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%s AND (%s=%d OR %s=%d OR (%s=%d AND %s=\'%s\')) AND %s IS NULL AND %s != %d"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "serverType"

    aput-object v5, v4, v7

    .line 2484
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "localFlag"

    aput-object v5, v4, v8

    const/16 v5, 0x8

    .line 2485
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "localFlag"

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const/16 v6, 0xa

    .line 2486
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 2487
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "serverStatus"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "custom"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "localFile"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "serverId"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-wide/16 v6, 0x1

    .line 2491
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2482
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/provider/GalleryDBHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$1;-><init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, p1

    .line 2473
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 2538
    :cond_0
    return-void
.end method

.method private upgradeTo75(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z

    .prologue
    .line 2541
    if-nez p2, :cond_0

    .line 2542
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_75(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2544
    :cond_0
    return-void
.end method

.method private upgradeTo76(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2652
    if-nez p2, :cond_0

    .line 2653
    const-string v0, "peopleFace"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relationType"

    const-string v3, "integer"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2658
    :cond_0
    return-void
.end method

.method private upgradeTo77(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2662
    if-nez p2, :cond_0

    .line 2663
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillBabyAlbumDataTaken(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2666
    :cond_0
    if-nez p3, :cond_1

    .line 2667
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillRelationTypeOfPeople(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2669
    :cond_1
    return-void
.end method

.method private upgradeTo78(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "upgradeFromOldGallery"    # Z

    .prologue
    .line 2737
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 2738
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%s AND (%s = %d OR %s=%d OR %s=%d OR (%s=%d AND %s=\'%s\')) AND %s NOT NULL AND %s & %d = 0"

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "serverType"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2741
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x7

    .line 2742
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    .line 2743
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0xa

    .line 2744
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "localFlag"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x0

    .line 2745
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "serverStatus"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "custom"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "babyInfoJson"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "attributes"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-wide/16 v6, 0x1

    .line 2748
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2738
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2750
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v1

    .line 2753
    .local v1, "transformed":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "update %s set %s=(%s | %d), %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "cloud"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "attributes"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "attributes"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    .line 2758
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "editedColumns"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "editedColumns"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object v1, v4, v5

    const/4 v5, 0x7

    aput-object v1, v4, v5

    const/16 v5, 0x8

    aput-object v1, v4, v5

    const/16 v5, 0x9

    aput-object v0, v4, v5

    .line 2753
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2764
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "transformed":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private upgradeTo79(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "needDeleteSecretThumb"    # Z

    .prologue
    .line 2767
    if-nez p2, :cond_0

    .line 2768
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2769
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localGroupId"

    const-wide/16 v2, -0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2771
    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2772
    const-string v1, "cloud"

    const-string v2, "groupId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v1, v0, v2, v3}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2774
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz p3, :cond_1

    .line 2776
    const-string v1, "GalleryDBHelper"

    const-string v2, "delete secret thumbnail, because it has no sha1"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/BackgroundJobService;->startJobDeleteSecretThumbnail(Landroid/content/Context;)V

    .line 2779
    :cond_1
    return-void
.end method

.method private upgradeTo80(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "upgradeFromOldGallery"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2782
    if-nez p2, :cond_0

    .line 2783
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "update %s set %s=(%s & ~%d)  where %s=%s and (%s is null or %s!=\'%s\')"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cloud"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string v4, "attributes"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "attributes"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-wide/16 v4, 0x4

    .line 2787
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "serverType"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 2788
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "serverId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "serverId"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-wide/16 v4, 0x1

    .line 2790
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2783
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2792
    :cond_0
    return-void
.end method

.method private upgradeTo81(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2796
    if-nez p2, :cond_0

    .line 2797
    const-string v0, "peopleFace"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "eTag"

    const-string v3, "integer"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2801
    :cond_0
    return-void
.end method

.method private upgradeTo82(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z

    .prologue
    .line 2804
    if-nez p2, :cond_0

    .line 2805
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2806
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localGroupId"

    const-wide/16 v2, -0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2807
    const-string v1, "cloud"

    const-string v2, "groupId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v1, v0, v2, v3}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2809
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private upgradeTo83(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "upgradeFromLocationIdentityDB"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2815
    if-eqz p2, :cond_0

    .line 2816
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2817
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2818
    const-string v1, "cloud"

    invoke-static {p1, v1, v0, v2, v2}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2819
    invoke-static {}, Lcom/miui/gallery/data/LocationGenerator;->getInstance()Lcom/miui/gallery/data/LocationGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/LocationGenerator;->generate(Landroid/content/Context;)V

    .line 2820
    const-string v1, "GalleryDBHelper"

    const-string/jumbo v2, "upgradeTo83 success"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private upgradeTo84(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareAlbumTable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2829
    const-string/jumbo v0, "update %s set attributes=( ((attributes & 1) * 1) | ((attributes & 2) * 2) | ((attributes & 4) * 4) ) where attributes > 0"

    .line 2832
    .local v0, "sql":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2833
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cloud"

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2836
    :cond_0
    if-nez p3, :cond_1

    .line 2837
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "shareAlbum"

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2839
    :cond_1
    return-void
.end method

.method private upgradeTo85(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2842
    const-string v0, "discoveryMessage"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2843
    const-string v0, "recentDiscoveredMedia"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2844
    return-void
.end method

.method private upgradeTo86(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    .line 2847
    if-nez p2, :cond_0

    .line 2848
    const-string v0, "cloud"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "extraGPS"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2849
    const-string v0, "cloud"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "address"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2851
    :cond_0
    if-nez p3, :cond_1

    .line 2852
    const-string/jumbo v0, "shareImage"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "extraGPS"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2853
    const-string/jumbo v0, "shareImage"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "address"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2855
    :cond_1
    return-void
.end method

.method private upgradeTo87(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2858
    const-string v0, "cloudControl"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2859
    return-void
.end method

.method private upgradeTo88(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2862
    if-nez p2, :cond_0

    .line 2863
    const-string v0, "peopleFace"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relationText"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2865
    :cond_0
    return-void
.end method

.method private upgradeTo89(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z

    .prologue
    .line 2875
    if-nez p2, :cond_0

    .line 2876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE %s SET attributes=(attributes | (((attributes & 2) | (NOT (attributes & 1))) << 6))  WHERE (serverType=0) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_NON_SYSTEM_ALBUM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2880
    .local v0, "sql":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cloud"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2882
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private upgradeTo90(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z

    .prologue
    .line 2885
    const-string v0, "favorites"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2886
    if-nez p2, :cond_0

    .line 2887
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->updateCameraAlbumValues(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2888
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->refillIsFavorite(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2890
    :cond_0
    return-void
.end method

.method private upgradeTo91(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreateCloudTable"    # Z
    .param p3, "isReCreateShareImageTable"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 2964
    if-nez p2, :cond_0

    .line 2965
    const-string v0, "cloud"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "specialTypeFlags"

    const-string v3, "integer"

    .line 2967
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2970
    :cond_0
    if-nez p3, :cond_1

    .line 2971
    const-string/jumbo v0, "shareImage"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "specialTypeFlags"

    const-string v3, "integer"

    .line 2973
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2976
    :cond_1
    return-void
.end method

.method private upgradeTo92(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "isReCreatePeopleFaceTable"    # Z

    .prologue
    .line 2979
    if-nez p2, :cond_0

    .line 2980
    const-string v0, "peopleFace"

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceCoverScore"

    const-string v3, "real"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 2982
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    invoke-static {p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 2985
    :cond_0
    return-void
.end method


# virtual methods
.method public analyze()V
    .locals 1

    .prologue
    .line 3117
    const-string v0, "analyze;"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->execSQL(Ljava/lang/String;)Z

    .line 3118
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3103
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteDatabase()Z
    .locals 2

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mContext:Landroid/content/Context;

    const-string v1, "gallery.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execSQL(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 3108
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3113
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3109
    :catch_0
    move-exception v0

    .line 3110
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "GalleryDBHelper"

    const-string v2, "exec sql"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloudColumns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3121
    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->initCloudColumns()V

    .line 3122
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3094
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 403
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 405
    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->initCloudColumns()V

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "bucket_id"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "bucket_path"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "recent_visit_time"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "visit_count"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "is_hidden_recent"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "is_manually_recent"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "is_hidden"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sort_by"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "cover_path"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "sdcard_sort_by"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "accountName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "accountType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "syncTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "isSync"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "isSyncOnlyOnWifi"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareSyncTagAlbumList"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareSyncTagAlbumInfo"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareSyncTagImageList"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareSyncTagUserList"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "ownerSyncTagUserList"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "syncInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareSyncInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "cloudTabNewFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceWatermark"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceSyncToken"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "groupId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "description"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fileName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateTaken"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sortBy"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "canModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "creatorId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareUrl"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumImageTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumUserTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareUrlLong"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "newImageFlag"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "isPublic"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "publicUrl"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "syncInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "babyInfoJson"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "peopleId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sharerInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "editedColumns"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "thumbnailInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "attributes"

    const-string v3, "integer"

    .line 485
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "userId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "userName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "createTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "requestType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "requestValue"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareUrl"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareText"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localAlbumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relation"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relationText"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "groupId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "size"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mimeType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "description"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fileName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateTaken"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "duration"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageWidth"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageLength"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifOrientation"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifMake"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifModel"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFlash"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifExposureTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFNumber"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifISOSpeedRatings"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitudeRef"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSTimeStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSDateStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifWhiteBalance"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFocalLength"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSProcessingMethod"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifDateTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "thumbnailFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sha1"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sortBy"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "microthumbfile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localImageId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "creatorId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileStatus"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mixedDateTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiSubImageCount"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiFocusIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiSubIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "editedColumns"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fromLocalGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "secretKey"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "lables"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "location"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "extraGPS"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "address"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "specialTypeFlags"

    const-string v3, "integer"

    .line 577
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "userId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "userName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "createTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "requestType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "requestValue"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareUrl"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareText"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localAlbumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relation"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relationText"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "phone"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "barcodeData"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "barcodeDataDeadline"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "smsShareData"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "smsShareDataDeadline"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "newImageFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "newUserFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "date_modified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "alias_nick"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "miliao_nick"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "miliao_icon_url"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "path"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "stamp"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "gpsData"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "cityId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "data"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "focusIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "groupId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "size"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mimeType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "description"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fileName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateTaken"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "duration"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageWidth"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageLength"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifOrientation"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifMake"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifModel"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFlash"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifExposureTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFNumber"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifISOSpeedRatings"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitudeRef"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSTimeStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSDateStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifWhiteBalance"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFocalLength"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSProcessingMethod"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifDateTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "thumbnailFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sha1"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sortBy"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "microthumbfile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localImageId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileStatus"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mixedDateTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiServerId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiLocalId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiSubIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "secretKey"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "groupId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "size"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mimeType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "description"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "fileName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateTaken"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "duration"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverType"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverTag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageWidth"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifImageLength"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifOrientation"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifMake"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifModel"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFlash"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLatitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSLongitudeRef"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifExposureTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFNumber"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifISOSpeedRatings"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitude"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSAltitudeRef"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSTimeStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSDateStamp"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifWhiteBalance"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifFocalLength"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifGPSProcessingMethod"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "exifDateTime"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "thumbnailFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sha1"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sortBy"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "microthumbfile"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localImageId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "albumId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "creatorId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "shareId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileStatus"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "downloadFileTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mixedDateTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiServerId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiLocalId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "ubiSubIndex"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "secretKey"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "groupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localGroupId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localFlag"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceXScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceYScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceWScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceHScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "leftEyeXScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "leftEyeYScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "RightEyeXScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "RightEyeYScale"

    const-string v3, "real"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "serverStatus"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "peopleName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "visibilityType"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "peopleType"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "peopleContactJsonInfo"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relationType"

    const-string v3, "integer"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "eTag"

    const-string v3, "integer"

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "relationText"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceCoverScore"

    const-string v3, "real"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 772
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "faceId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "imageServerId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "peopleServerId"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "recommendPeoplesJson"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "recommendHistoryJson"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "lastUpdateFromServerTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "name"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "localEventId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "key"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateTaken"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "path"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "userKey"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "lastModified"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "key"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "message"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "subTitle"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "type"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "priority"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "receiveTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "updateTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "triggerTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "expireTime"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "actionUri"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "messageSource"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "isConsumed"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "extraData"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "mediaId"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateAdded"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "source"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "featureName"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "strategy"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "isFavorite"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string v2, "dateFavorite"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "source"

    const-string v3, "integer"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    const-string/jumbo v2, "sha1"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1002
    const-string v0, "album"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1003
    const-string v0, "cloud"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1004
    const-string v0, "cloudSetting"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1005
    const-string/jumbo v0, "shareAlbum"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareAlbumColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1006
    const-string/jumbo v0, "shareImage"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareImageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1007
    const-string/jumbo v0, "shareUser"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareUserColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1008
    const-string v0, "cloudUser"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudUserColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1009
    const-string v0, "cloudCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1010
    const-string v0, "newFlagCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mNewFlagCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1011
    const-string/jumbo v0, "userInfo"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mUserInfoColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1012
    const-string/jumbo v0, "whiteListLastModify"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mWhiteListLastModifyColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1013
    const-string v0, "photoGpsCache"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPhotoGpsCacheColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1014
    const-string v0, "localUbifocus"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mLocalUbifocusColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1015
    const-string v0, "ownerSubUbifocus"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOwnerSubUbiImageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1016
    const-string/jumbo v0, "shareSubUbifocus"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mShareSubUbiImageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1017
    const-string v0, "peopleFace"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleFaceColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1018
    const-string v0, "faceToImages"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFace2ImagesColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1019
    const-string v0, "peopleRecommend"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mPeopleRecommendColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1020
    const-string v0, "event"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1021
    const-string v0, "eventPhoto"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mEventPhotoColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1022
    const-string v0, "albumCoverKey"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumCoverKeyColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1023
    const-string v0, "discoveryMessage"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mDiscoveryMessageColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1024
    const-string v0, "recentDiscoveredMedia"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mRecentDiscoveredMediaColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1025
    const-string v0, "cloudControl"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudControlColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1026
    const-string v0, "favorites"

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mFavoritesColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1028
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->createViewIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1030
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addUniqueIndexs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1031
    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->clearColumnList()V

    .line 1032
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->addRecordsForCameraAndScreenshots(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1033
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1894
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1896
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DataBase;->getEverFixedCameraAlbumAttributes()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1898
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->fixCameraAlbumAttributes(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 1899
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DataBase;->setEverFixedCameraAlbumAttributes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->createViewIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1909
    return-void

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1902
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    const-string v2, "exception"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    const-string v2, "db_helper"

    const-string v3, "db_fix_camera_attributes"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1905
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "version old[%d], new[%d], exception[%s]"

    iget v4, p0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1437
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    .line 1439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    move/from16 v0, p3

    if-lt v2, v0, :cond_0

    .line 1440
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "database cannot be downgraded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1442
    :cond_0
    const-string v2, "GalleryDBHelper"

    const-string v3, "onUpgrade oldVersion[%d], newVersion[%d]"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v3, v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1444
    const/4 v9, 0x0

    .line 1445
    .local v9, "isReCreateAlbumTable":Z
    const/4 v4, 0x0

    .line 1446
    .local v4, "isReCreateCloudTable":Z
    const/4 v10, 0x0

    .line 1447
    .local v10, "isReCreateCloudSettingsTable":Z
    const/4 v14, 0x0

    .line 1448
    .local v14, "isReCreateShareUserTable":Z
    const/4 v13, 0x0

    .line 1449
    .local v13, "isReCreateShareAlbumTable":Z
    const/4 v5, 0x0

    .line 1450
    .local v5, "isReCreateShareImageTable":Z
    const/4 v11, 0x0

    .line 1451
    .local v11, "isReCreateCloudUserTable":Z
    const/4 v6, 0x0

    .line 1452
    .local v6, "isReCreateOwnerSubUbi":Z
    const/4 v7, 0x0

    .line 1453
    .local v7, "isReCreateSharerSubUbi":Z
    const/4 v12, 0x0

    .line 1454
    .local v12, "isReCreatePeopleFaceTable":Z
    const/16 v16, 0x0

    .line 1456
    .local v16, "upgradeViewsAndTriggers":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x5c

    if-ge v2, v3, :cond_51

    .line 1457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 1458
    const-string v2, "DROP TABLE IF EXISTS album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1459
    const-string v2, "DROP TABLE IF EXISTS cloud"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1462
    const/4 v9, 0x1

    .line 1463
    const/4 v4, 0x1

    .line 1464
    const/4 v10, 0x1

    .line 1466
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 1469
    if-nez v4, :cond_2

    .line 1470
    const-string v2, "DROP TABLE IF EXISTS cloud"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1471
    const-string v2, "cloud"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1472
    const/4 v4, 0x1

    .line 1474
    :cond_2
    if-nez v10, :cond_3

    .line 1475
    const-string v2, "DROP TABLE IF EXISTS cloudSetting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1476
    const-string v2, "cloudSetting"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1477
    const/4 v10, 0x1

    .line 1480
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_4

    .line 1482
    if-nez v9, :cond_4

    .line 1483
    const-string v3, "album"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;)V

    .line 1484
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "UPDATE %s SET %s=%d"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v19, "album"

    aput-object v19, v18, v2

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/16 v20, 0xa

    .line 1488
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v18, v19

    const/4 v2, 0x2

    const/16 v19, 0x1

    .line 1489
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v2

    .line 1484
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1491
    .local v15, "sqlUpdateColumnSDCardSortBy":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1499
    .end local v15    # "sqlUpdateColumnSDCardSortBy":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_7

    .line 1500
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 18"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_5

    .line 1506
    :cond_5
    if-nez v4, :cond_6

    .line 1507
    const-string v2, "DROP TABLE IF EXISTS cloud"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1508
    const-string v2, "cloud"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1509
    const/4 v4, 0x1

    .line 1511
    :cond_6
    if-nez v10, :cond_7

    .line 1513
    const-string v2, "DROP TABLE IF EXISTS cloudSetting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1514
    const-string v2, "cloudSetting"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1515
    const/4 v10, 0x1

    .line 1519
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_8

    .line 1520
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 19"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    if-nez v4, :cond_8

    .line 1522
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_19(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1525
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_9

    .line 1526
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 20"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    if-nez v4, :cond_9

    .line 1528
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnCloudTable_20(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1531
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_a

    .line 1532
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 21"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v10}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo21(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1534
    const/4 v14, 0x1

    .line 1535
    const/4 v13, 0x1

    .line 1536
    const/4 v5, 0x1

    .line 1538
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_b

    .line 1539
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 22"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v10}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo22(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1541
    const/4 v11, 0x1

    .line 1543
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_c

    .line 1544
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 23"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo23(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1547
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_d

    .line 1548
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 24"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo24(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1551
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_e

    .line 1552
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 25"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo25(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1555
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_f

    .line 1556
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 26"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo26(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1559
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_10

    .line 1560
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 27"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo27(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1563
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_11

    .line 1564
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 28"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1567
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_12

    .line 1568
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 29"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo29(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1572
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_13

    .line 1573
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 31"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo31(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1577
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x20

    if-ge v2, v3, :cond_14

    .line 1578
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 32"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo32(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1582
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x21

    if-ge v2, v3, :cond_15

    .line 1583
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 33"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo33(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1587
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x22

    if-ge v2, v3, :cond_16

    .line 1588
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 34"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo34(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1592
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x23

    if-ge v2, v3, :cond_17

    .line 1593
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 35"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo35(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1597
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x24

    if-ge v2, v3, :cond_18

    .line 1598
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 36"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo36(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1602
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x25

    if-ge v2, v3, :cond_19

    .line 1603
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 37"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo37(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1607
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x26

    if-ge v2, v3, :cond_1a

    .line 1608
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 38"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo38(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1612
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x27

    if-ge v2, v3, :cond_1b

    .line 1613
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 39"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1617
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_1c

    .line 1618
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 40"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1622
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x29

    if-ge v2, v3, :cond_1d

    .line 1623
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 41"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1627
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x2a

    if-ge v2, v3, :cond_1e

    .line 1628
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 42"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1632
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x2b

    if-ge v2, v3, :cond_1f

    .line 1633
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 43"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo43(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1637
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x2c

    if-ge v2, v3, :cond_20

    .line 1638
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 44"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1642
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x2d

    if-ge v2, v3, :cond_21

    .line 1643
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 45"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1647
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x2e

    if-ge v2, v3, :cond_22

    .line 1648
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 46"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo46(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1652
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x2f

    if-ge v2, v3, :cond_23

    .line 1653
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 47"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo47(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1655
    const/4 v6, 0x1

    .line 1656
    const/4 v7, 0x1

    .line 1659
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x30

    if-ge v2, v3, :cond_24

    .line 1660
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 48"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo48(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1664
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x31

    if-ge v2, v3, :cond_25

    .line 1665
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 49"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo49(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1669
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_26

    .line 1670
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 50"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo50(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1674
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x33

    if-ge v2, v3, :cond_27

    .line 1675
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 51"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo51(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1679
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x34

    if-ge v2, v3, :cond_28

    .line 1680
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 52"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1681
    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo52(Landroid/database/sqlite/SQLiteDatabase;ZZZZ)V

    .line 1683
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x35

    if-ge v2, v3, :cond_29

    .line 1684
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 53"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo53(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1688
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x36

    if-ge v2, v3, :cond_2a

    .line 1689
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 53"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo54(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1693
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x37

    if-ge v2, v3, :cond_2b

    .line 1694
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 55"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1696
    const/4 v12, 0x1

    .line 1699
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x38

    if-ge v2, v3, :cond_2c

    .line 1700
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 56"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo56(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1704
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x39

    if-ge v2, v3, :cond_2d

    .line 1705
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 57"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->createIndexOnFaceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1709
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x3a

    if-ge v2, v3, :cond_2e

    .line 1710
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo58(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1713
    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x3b

    if-ge v2, v3, :cond_2f

    .line 1714
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1717
    :cond_2f
    const/4 v8, 0x0

    .line 1718
    .local v8, "hasFaceTables":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x37

    if-lt v2, v3, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x3c

    if-gt v2, v3, :cond_30

    .line 1719
    const/4 v8, 0x1

    .line 1723
    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x3d

    if-ge v2, v3, :cond_31

    .line 1724
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo61(Z)V

    .line 1727
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x3e

    if-ge v2, v3, :cond_32

    .line 1728
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1731
    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x3f

    if-ge v2, v3, :cond_33

    .line 1732
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 63"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo63(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1736
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_34

    .line 1737
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v14}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo64(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1740
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x41

    if-ge v2, v3, :cond_35

    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo65(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1744
    :cond_35
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x42

    if-ge v2, v3, :cond_36

    .line 1745
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo66(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1748
    :cond_36
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x43

    if-ge v2, v3, :cond_37

    .line 1749
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo67(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1752
    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x44

    if-ge v2, v3, :cond_38

    .line 1753
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo68(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1756
    :cond_38
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x45

    if-ge v2, v3, :cond_39

    .line 1757
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo69(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1760
    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x46

    if-ge v2, v3, :cond_3a

    .line 1761
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo70(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1764
    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x47

    if-ge v2, v3, :cond_3b

    .line 1765
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo71(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1768
    :cond_3b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x48

    if-ge v2, v3, :cond_3c

    .line 1769
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo72(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1772
    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x49

    if-ge v2, v3, :cond_3d

    .line 1773
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 73"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo73(Landroid/database/sqlite/SQLiteDatabase;ZZZ)V

    .line 1778
    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x4a

    if-ge v2, v3, :cond_3e

    .line 1779
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 74"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo74(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1783
    :cond_3e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x4b

    if-ge v2, v3, :cond_3f

    .line 1784
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 75"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo75(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1788
    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x4c

    if-ge v2, v3, :cond_40

    .line 1789
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 76"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo76(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1793
    :cond_40
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x4d

    if-ge v2, v3, :cond_41

    .line 1794
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 77"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo77(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1798
    :cond_41
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x4e

    if-ge v2, v3, :cond_42

    .line 1799
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 78"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x49

    if-ge v2, v3, :cond_52

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo78(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1803
    :cond_42
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x4f

    if-ge v2, v3, :cond_43

    .line 1804
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 79"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x48

    if-le v2, v3, :cond_53

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo79(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1808
    :cond_43
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x50

    if-ge v2, v3, :cond_44

    .line 1809
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 80"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x49

    if-ge v2, v3, :cond_54

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo80(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1813
    :cond_44
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x51

    if-ge v2, v3, :cond_45

    .line 1814
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 81"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo81(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1818
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x52

    if-ge v2, v3, :cond_46

    .line 1819
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 82"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo82(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1823
    :cond_46
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x53

    if-ge v2, v3, :cond_47

    .line 1824
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 83"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x49

    if-le v2, v3, :cond_55

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo83(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1828
    :cond_47
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x54

    if-ge v2, v3, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x48

    if-le v2, v3, :cond_48

    .line 1830
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 84"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo84(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1834
    :cond_48
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x55

    if-ge v2, v3, :cond_49

    .line 1835
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 85"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo85(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1839
    :cond_49
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x56

    if-ge v2, v3, :cond_4a

    .line 1840
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 86"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo86(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1844
    :cond_4a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x57

    if-ge v2, v3, :cond_4b

    .line 1845
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 87"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo87(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1849
    :cond_4b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x58

    if-ge v2, v3, :cond_4c

    .line 1850
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 88"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo88(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1854
    :cond_4c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x59

    if-ge v2, v3, :cond_4d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x48

    if-le v2, v3, :cond_4d

    .line 1856
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 89"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo89(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1860
    :cond_4d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x5a

    if-ge v2, v3, :cond_4e

    .line 1861
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 90"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo90(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1863
    const/16 v16, 0x1

    .line 1866
    :cond_4e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_4f

    .line 1867
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 91"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo91(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 1869
    const/16 v16, 0x1

    .line 1872
    :cond_4f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/GalleryDBHelper;->mOldVersion:I

    const/16 v3, 0x5c

    if-ge v2, v3, :cond_50

    .line 1873
    const-string v2, "GalleryDBHelper"

    const-string/jumbo v3, "upgrade to 92"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo92(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1875
    const/16 v16, 0x1

    .line 1878
    :cond_50
    if-eqz v16, :cond_51

    .line 1879
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->createViewIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1882
    .end local v8    # "hasFaceTables":Z
    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->clearColumnList()V

    .line 1883
    return-void

    .line 1800
    .restart local v8    # "hasFaceTables":Z
    :cond_52
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1805
    :cond_53
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1810
    :cond_54
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1825
    :cond_55
    const/4 v2, 0x0

    goto/16 :goto_3
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "distinct"    # Z
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 3085
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3098
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
