.class public abstract Lcom/miui/gallery/share/CloudUserCache;
.super Lcom/miui/gallery/share/DBCache;
.source "CloudUserCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/share/DBCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/share/CloudUserCacheEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ENTRY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOwnerUserCache:Lcom/miui/gallery/share/CloudUserCache;

.field private static final sSharerUserCache:Lcom/miui/gallery/share/CloudUserCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/share/CloudUserCache;->EMPTY_ENTRY_LIST:Ljava/util/List;

    .line 110
    new-instance v0, Lcom/miui/gallery/share/CloudUserCache$1;

    invoke-direct {v0}, Lcom/miui/gallery/share/CloudUserCache$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/CloudUserCache;->sOwnerUserCache:Lcom/miui/gallery/share/CloudUserCache;

    .line 167
    new-instance v0, Lcom/miui/gallery/share/CloudUserCache$2;

    invoke-direct {v0}, Lcom/miui/gallery/share/CloudUserCache$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/CloudUserCache;->sSharerUserCache:Lcom/miui/gallery/share/CloudUserCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/share/DBCache;-><init>()V

    return-void
.end method

.method public static getOwnerUserCache()Lcom/miui/gallery/share/CloudUserCache;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/miui/gallery/share/CloudUserCache;->sOwnerUserCache:Lcom/miui/gallery/share/CloudUserCache;

    return-object v0
.end method

.method public static getSharerUserCache()Lcom/miui/gallery/share/CloudUserCache;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/miui/gallery/share/CloudUserCache;->sSharerUserCache:Lcom/miui/gallery/share/CloudUserCache;

    return-object v0
.end method


# virtual methods
.method public getCloudUserListByAlbumId(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudUserCache;->getCache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/miui/gallery/share/CloudUserCache;->EMPTY_ENTRY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method protected abstract getProjection()[Ljava/lang/String;
.end method

.method protected abstract getSelection()Ljava/lang/String;
.end method

.method protected abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method protected loadInBackground()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 72
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudUserCache;->queryInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "lastKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, "lastUsers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/CloudUserCache;->newKey(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 83
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    move-object v2, v1

    .line 85
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/CloudUserCache;->newValue(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 86
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/CloudUserCache;->newValueElement(Landroid/database/Cursor;)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    .end local v2    # "lastKey":Ljava/lang/String;
    .end local v3    # "lastUsers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    :cond_3
    return-object v4
.end method

.method protected bridge synthetic newKey(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/CloudUserCache;->newKey(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newKey(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/CloudUserCache;->newValue(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected newValue(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newValueElement(Landroid/database/Cursor;)Lcom/miui/gallery/share/CloudUserCacheEntry;
.end method

.method protected queryInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudUserCache;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudUserCache;->getProjection()[Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudUserCache;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/share/CloudUserCache;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "albumId"

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract syncFromServer(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
