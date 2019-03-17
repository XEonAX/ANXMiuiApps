.class public Lcom/miui/gallery/util/ShareAlbumsCursorHelper;
.super Ljava/lang/Object;
.source "ShareAlbumsCursorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;
    }
.end annotation


# static fields
.field public static final SHARED_ALBUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDataValid:Z

.field private mSharedAlbums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "creatorId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nickname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mDataValid:Z

    .line 30
    return-void
.end method


# virtual methods
.method public isDataValid()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mDataValid:Z

    return v0
.end method

.method public isOwnerShareAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7ffe795f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    .line 79
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mDataValid:Z

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSharedAlbums(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 45
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    new-instance v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;

    invoke-direct {v0}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;-><init>()V

    .line 48
    .local v0, "shareAlbum":Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;->mAlbumId:Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;->mCreatorId:Ljava/lang/String;

    .line 50
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;->mUserCount:I

    .line 51
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;->mAlbumId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "shareAlbum":Lcom/miui/gallery/util/ShareAlbumsCursorHelper$ShareAlbum;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 59
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mSharedAlbums:Ljava/util/Map;

    .line 61
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->mDataValid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    return-void
.end method
