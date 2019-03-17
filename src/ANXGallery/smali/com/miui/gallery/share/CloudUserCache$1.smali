.class final Lcom/miui/gallery/share/CloudUserCache$1;
.super Lcom/miui/gallery/share/CloudUserCache;
.source "CloudUserCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/CloudUserCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/share/CloudUserCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "albumId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "createTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "relation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "relationText"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "serverStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "phone"

    aput-object v2, v0, v1

    .line 138
    .local v0, "CACHE_PROJECT":[Ljava/lang/String;
    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "serverStatus = ?"

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$CloudUser;->CLOUD_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected bridge synthetic newKey(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/miui/gallery/share/CloudUserCache;->newKey(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/miui/gallery/share/CloudUserCache;->newValue(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected newValueElement(Landroid/database/Cursor;)Lcom/miui/gallery/share/CloudUserCacheEntry;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    new-instance v1, Lcom/miui/gallery/share/CloudUserCacheEntry;

    const/4 v0, 0x0

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 145
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x3

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    .line 149
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x6

    .line 150
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/miui/gallery/share/CloudUserCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public syncFromServer(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;
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

    .prologue
    .line 119
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->syncAllUserInfoFromNetworkAsync(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    .line 120
    return-void
.end method
