.class Lcom/miui/gallery/provider/cache/SearchIconItem;
.super Ljava/lang/Object;
.source "SearchIconItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/SearchIconItem$QueryFactory;
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

.field protected static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public decodeRegionH:Ljava/lang/Float;

.field public decodeRegionOrientation:I

.field public decodeRegionW:Ljava/lang/Float;

.field public decodeRegionX:Ljava/lang/Float;

.field public decodeRegionY:Ljava/lang/Float;

.field public downloadUri:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public iconUri:Ljava/lang/String;

.field notifyUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "icon_uri"

    aput-object v1, v0, v3

    const-string v1, "file_path"

    aput-object v1, v0, v4

    const-string v1, "download_uri"

    aput-object v1, v0, v5

    const-string v1, "decode_region_orientation"

    aput-object v1, v0, v6

    const-string v1, "decode_region_x"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "decode_region_y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "decode_region_w"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "decode_region_h"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->PROJECTION:[Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Lcom/miui/gallery/provider/cache/SearchIconItem;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    .line 118
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "icon_uri"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "file_path"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "download_uri"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "decode_region_orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "decode_region_x"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "decode_region_y"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "decode_region_w"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    const-string v1, "decode_region_h"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchIconItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchIconItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/miui/gallery/provider/cache/SearchIconItem;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-object v0
.end method


# virtual methods
.method public fillWindow(Landroid/database/CursorWindow;III)Z
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "row"    # I
    .param p3, "column"    # I
    .param p4, "index"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public get(IZ)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "useDefault"    # Z

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->iconUri:Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->downloadUri:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 40
    iget v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionX:Ljava/lang/Float;

    goto :goto_0

    .line 45
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionY:Ljava/lang/Float;

    goto :goto_0

    .line 48
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionW:Ljava/lang/Float;

    goto :goto_0

    .line 51
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionH:Ljava/lang/Float;

    goto :goto_0

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " not recognized column."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 59
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    if-eq p1, v1, :cond_0

    .line 65
    if-eq p1, v2, :cond_0

    .line 68
    if-ne p1, v0, :cond_2

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    move v0, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    move v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    move v0, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " not recognized column."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
