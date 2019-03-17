.class public Lcom/miui/gallery/provider/cache/MediaItem$Generator;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$Generator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Generator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/MediaItem$Generator$CloudIdFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/provider/cache/CacheItem$Generator",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

.field private mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1529
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator$1;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaItem$Generator$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    .line 1572
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sha1"

    aput-object v1, v0, v4

    const-string v1, "microthumbfile"

    aput-object v1, v0, v5

    const-string/jumbo v1, "thumbnailFile"

    aput-object v1, v0, v6

    const-string v1, "localFile"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "secretKey"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "localFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "serverStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "dateModified"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "creatorId"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "serverTag"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "groupId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    .line 1636
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    .line 1639
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "sha1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "microthumbfile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "thumbnailFile"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "localFile"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "serverType"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "title"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "duration"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "description"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "location"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "size"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "localGroupId"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "mimeType"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifGPSLatitude"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifGPSLatitudeRef"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifGPSLongitude"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifGPSLongitudeRef"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "secretKey"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "localFlag"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "mixedDateTime"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifImageWidth"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifImageLength"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "serverStatus"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "dateModified"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "creatorId"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "serverTag"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "serverId"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "groupId"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string/jumbo v1, "specialTypeFlags"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "exifOrientation"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/provider/cache/AlbumDelegate;Lcom/miui/gallery/provider/cache/FavoritesDelegate;)V
    .locals 0
    .param p1, "albumDelegate"    # Lcom/miui/gallery/provider/cache/AlbumDelegate;
    .param p2, "favoritesDelegate"    # Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .prologue
    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    .line 1296
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .line 1297
    return-void
.end method

.method static synthetic access$3900()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1290
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public from(JLandroid/content/ContentValues;)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 15
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    .line 1340
    new-instance v3, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-direct {v3}, Lcom/miui/gallery/provider/cache/MediaItem;-><init>()V

    .line 1341
    .local v3, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$402(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1342
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0xb

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1344
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1345
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1346
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1347
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1348
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1350
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1351
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1352
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1353
    .local v5, "size":Ljava/lang/Long;
    if-nez v5, :cond_0

    move-wide v8, v10

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1354
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1355
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0xd

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1356
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0xe

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1357
    .local v4, "ref":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v12

    :goto_1
    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;

    .line 1358
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0xf

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1359
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x10

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1360
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    invoke-static {v3, v12}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;

    .line 1361
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x11

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2902(Lcom/miui/gallery/provider/cache/MediaItem;[B)[B

    .line 1362
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x12

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1363
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x14

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1364
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x15

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1365
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x16

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1366
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x13

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 1367
    .local v6, "time":Ljava/lang/Long;
    if-nez v6, :cond_3

    move-wide v8, v10

    :goto_3
    invoke-static {v3, v8, v9}, Lcom/miui/gallery/provider/cache/MediaItem;->access$302(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1368
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x17

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1369
    .local v2, "date":Ljava/lang/Long;
    if-nez v2, :cond_4

    :goto_4
    invoke-static {v3, v10, v11}, Lcom/miui/gallery/provider/cache/MediaItem;->access$102(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1370
    invoke-static {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->access$300(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/util/GalleryDateUtils;->format(J)I

    move-result v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1702(Lcom/miui/gallery/provider/cache/MediaItem;I)I

    .line 1371
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x18

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1372
    iget-object v7, p0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3202(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/AlbumDelegate;)Lcom/miui/gallery/provider/cache/AlbumDelegate;

    .line 1373
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x19

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1374
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x1a

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1375
    invoke-static {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/util/GalleryDateUtils;->format(J)I

    move-result v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3302(Lcom/miui/gallery/provider/cache/MediaItem;I)I

    .line 1376
    iget-object v7, p0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3402(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/FavoritesDelegate;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .line 1377
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x1b

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x1c

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1379
    invoke-static {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3600(Lcom/miui/gallery/provider/cache/MediaItem;)V

    .line 1380
    sget-object v7, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v8, 0x1d

    aget-object v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1381
    return-object v3

    .line 1353
    .end local v2    # "date":Ljava/lang/Long;
    .end local v4    # "ref":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto/16 :goto_0

    .line 1357
    .restart local v4    # "ref":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto/16 :goto_1

    .line 1360
    :cond_2
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    goto/16 :goto_2

    .line 1367
    .restart local v6    # "time":Ljava/lang/Long;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto/16 :goto_3

    .line 1369
    .restart local v2    # "date":Ljava/lang/Long;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto/16 :goto_4
.end method

.method public from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1300
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaItem;-><init>()V

    .line 1301
    .local v0, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/provider/cache/MediaItem;->access$402(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1302
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1303
    const/16 v1, 0xb

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getLong(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1304
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1305
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1306
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getInt(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1308
    const/4 v1, 0x6

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1309
    const/4 v1, 0x7

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getLong(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1310
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1311
    const/16 v1, 0x9

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1312
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1313
    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1314
    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1315
    const/16 v1, 0xe

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getChar(Landroid/database/Cursor;I)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;

    .line 1316
    const/16 v1, 0xf

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1317
    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getChar(Landroid/database/Cursor;I)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;

    .line 1318
    const/16 v1, 0x11

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getBlob(Landroid/database/Cursor;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2902(Lcom/miui/gallery/provider/cache/MediaItem;[B)[B

    .line 1319
    const/16 v1, 0x12

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getLong(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1320
    const/16 v1, 0x14

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getInt(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1321
    const/16 v1, 0x15

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getInt(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1322
    const/16 v1, 0x16

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1323
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/provider/cache/MediaItem;->access$302(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1324
    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/provider/cache/MediaItem;->access$102(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1325
    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaItem;->access$300(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GalleryDateUtils;->format(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1702(Lcom/miui/gallery/provider/cache/MediaItem;I)I

    .line 1326
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3202(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/AlbumDelegate;)Lcom/miui/gallery/provider/cache/AlbumDelegate;

    .line 1328
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1329
    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GalleryDateUtils;->format(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3302(Lcom/miui/gallery/provider/cache/MediaItem;I)I

    .line 1331
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3402(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/FavoritesDelegate;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .line 1332
    const/16 v1, 0x1b

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    const/16 v1, 0x1c

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getLong(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1334
    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3600(Lcom/miui/gallery/provider/cache/MediaItem;)V

    .line 1335
    const/16 v1, 0x1d

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/cache/ParseUtils;->getInt(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1336
    return-object v0
.end method

.method public getFilter(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p3, "rawArguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/gallery/provider/cache/Filter$Comparator;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1515
    if-nez p1, :cond_0

    .line 1516
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator$CloudIdFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$Generator$CloudIdFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    .line 1521
    :goto_0
    return-object v0

    .line 1517
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1518
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$Sha1Filter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$Sha1Filter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 1521
    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/cache/Filter;->NOT_SUPPORTED_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    goto :goto_0
.end method

.method public getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .locals 1

    .prologue
    .line 1509
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1526
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic update(Lcom/miui/gallery/provider/cache/CacheItem;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1290
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->update(Lcom/miui/gallery/provider/cache/MediaItem;Landroid/content/ContentValues;)V

    return-void
.end method

.method public update(Lcom/miui/gallery/provider/cache/MediaItem;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1385
    const/4 v3, 0x0

    .line 1386
    .local v3, "sortTimeRelateValuesUpdated":Z
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1387
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1389
    :cond_0
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1390
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1391
    const/4 v3, 0x1

    .line 1393
    :cond_1
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1394
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1396
    :cond_2
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1397
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1202(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1399
    :cond_3
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1400
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    :cond_4
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1403
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1405
    :cond_5
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1406
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1408
    :cond_6
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1409
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2302(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1411
    :cond_7
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1412
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2402(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1414
    :cond_8
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1415
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1417
    :cond_9
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1418
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1419
    .local v2, "size":Ljava/lang/Long;
    if-nez v2, :cond_1f

    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1421
    .end local v2    # "size":Ljava/lang/Long;
    :cond_a
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1422
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1424
    :cond_b
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1425
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1427
    :cond_c
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xe

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1428
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xe

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1429
    .local v1, "ref":Ljava/lang/String;
    if-nez v1, :cond_20

    const/4 v6, 0x0

    :goto_1
    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;

    .line 1431
    .end local v1    # "ref":Ljava/lang/String;
    :cond_d
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1432
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1434
    :cond_e
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1435
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1436
    .restart local v1    # "ref":Ljava/lang/String;
    if-nez v1, :cond_21

    const/4 v6, 0x0

    :goto_2
    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Character;)Ljava/lang/Character;

    .line 1439
    .end local v1    # "ref":Ljava/lang/String;
    :cond_f
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1440
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1441
    .local v5, "time":Ljava/lang/Long;
    if-nez v5, :cond_22

    const-wide/16 v6, 0x0

    :goto_3
    invoke-static {p1, v6, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$302(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1442
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$300(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/util/GalleryDateUtils;->format(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1702(Lcom/miui/gallery/provider/cache/MediaItem;I)I

    .line 1443
    const/4 v3, 0x1

    .line 1446
    .end local v5    # "time":Ljava/lang/Long;
    :cond_10
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x11

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1447
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x11

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$2902(Lcom/miui/gallery/provider/cache/MediaItem;[B)[B

    .line 1450
    :cond_11
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x12

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1451
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x12

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1453
    :cond_12
    const-string/jumbo v6, "sync_status"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1454
    const-string/jumbo v6, "sync_status"

    .line 1455
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1454
    invoke-static {v6}, Lcom/miui/gallery/sdk/SyncStatus;->valueOf(Ljava/lang/String;)Lcom/miui/gallery/sdk/SyncStatus;

    move-result-object v4

    .line 1456
    .local v4, "syncStatus":Lcom/miui/gallery/sdk/SyncStatus;
    sget-object v6, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

    if-ne v4, v6, :cond_23

    const/4 v6, 0x1

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1459
    .end local v4    # "syncStatus":Lcom/miui/gallery/sdk/SyncStatus;
    :cond_13
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x14

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1460
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x14

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1463
    :cond_14
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x15

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1464
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x15

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$802(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1467
    :cond_15
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x16

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1468
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x16

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3002(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1471
    :cond_16
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x17

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1472
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x17

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1473
    .local v0, "date":Ljava/lang/Long;
    if-nez v0, :cond_24

    const-wide/16 v6, 0x0

    :goto_5
    invoke-static {p1, v6, v7}, Lcom/miui/gallery/provider/cache/MediaItem;->access$102(Lcom/miui/gallery/provider/cache/MediaItem;J)J

    .line 1474
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/util/GalleryDateUtils;->format(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3302(Lcom/miui/gallery/provider/cache/MediaItem;I)I

    .line 1475
    const/4 v3, 0x1

    .line 1478
    .end local v0    # "date":Ljava/lang/Long;
    :cond_17
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x18

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1479
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x18

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3102(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1482
    :cond_18
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x19

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1483
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x19

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1486
    :cond_19
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1a

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1487
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1a

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1602(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1490
    :cond_1a
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1b

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1491
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1b

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1902(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1494
    :cond_1b
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1495
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3502(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1498
    :cond_1c
    if-eqz v3, :cond_1d

    .line 1499
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3600(Lcom/miui/gallery/provider/cache/MediaItem;)V

    .line 1502
    :cond_1d
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1d

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1503
    sget-object v6, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->PROJECTION:[Ljava/lang/String;

    const/16 v7, 0x1d

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/miui/gallery/provider/cache/MediaItem;->access$3702(Lcom/miui/gallery/provider/cache/MediaItem;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1505
    :cond_1e
    return-void

    .line 1419
    .restart local v2    # "size":Ljava/lang/Long;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_0

    .line 1429
    .end local v2    # "size":Ljava/lang/Long;
    .restart local v1    # "ref":Ljava/lang/String;
    :cond_20
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto/16 :goto_1

    .line 1436
    :cond_21
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto/16 :goto_2

    .line 1441
    .end local v1    # "ref":Ljava/lang/String;
    .restart local v5    # "time":Ljava/lang/Long;
    :cond_22
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_3

    .line 1456
    .end local v5    # "time":Ljava/lang/Long;
    .restart local v4    # "syncStatus":Lcom/miui/gallery/sdk/SyncStatus;
    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1473
    .end local v4    # "syncStatus":Lcom/miui/gallery/sdk/SyncStatus;
    .restart local v0    # "date":Ljava/lang/Long;
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_5
.end method
